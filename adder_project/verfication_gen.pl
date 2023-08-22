#!/usr/bin/perl

my $name = $ARGV[1];
my $bits = $ARGV[2];  # 输入的位数，如8、16、32、64、128等

# 根据位数确定数据类型和随机数范围
my $data_type = $bits > 64 ? "unsigned __int128" : "uint64_t";
my $max_value = $bits > 64 ? "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF" : ("0x" . ("F" x ($bits / 4)));
my $print_format = "%20lu";

if ($bits == 8) {
    $print_format = "%3u";
} elsif ($bits == 16) {
    $print_format = "%5u";
} elsif ($bits == 32) {
    $print_format = "%10u";
}

open(DATA, ">./adder_veri/tb_${name}.cpp") or die ">./adder_veri/tb_${name}.cpp 文件无法打开, $!";

print DATA <<END;
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <random>
#include "V${name}.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    V${name} * top = new V${name};

    std::mt19937_64 rng(std::random_device{}());
    std::uniform_int_distribution<$data_type> distribution(0, $max_value);

    for (int test = 0; test < 100000; ++test) {
        top->a = distribution(rng);
        top->b = distribution(rng);
        top->cin = rand() & 0x1;

        // Toggle clock twice to account for the cin_r delay
        top->clk = 0;
        top->rst = 0;
        top->eval();
        top->clk = 1;
        top->eval();
        top->clk = 0;
        top->eval();
        top->clk = 1;
        top->eval();

        $data_type expected_sum = static_cast<$data_type>(top->a) + static_cast<$data_type>(top->b) + static_cast<$data_type>(top->cin);
        uint8_t expected_cout = (expected_sum >> $bits) & 0x1;

        printf("Test %4d: a = $print_format, b = $print_format, cin = \%u, sum = $print_format, cout = \%u, Pass\\n",
           test + 1, top->a, top->b, static_cast<unsigned>(top->cin), top->sum, static_cast<unsigned>(top->cout));

        if (top->sum != (expected_sum & $max_value) || top->cout != expected_cout) {
            printf("Mismatch detected!\\n");
            
            for (int i = 0; i < $bits; i++) {
                $data_type mask = 1ull << i;
                if ((top->sum & mask) != (expected_sum & mask)) {
                    printf("Bit \%d is incorrect\\n", i + 1);
                }
            }

            top->final();
            delete top;
            return 1;
        }
    }

    printf("Random tests completed\\n");
    top->final();
    delete top;
    return 0;
}
END

open(DATA2, ">>./adder_veri/_source.sh") or die ">./adder_veri/_source.sh文件无法打开, $!";
print DATA2 <<END2;
verilator -Wall -j 0 -Wno-DECLFILENAME --cc /home/shi/research/adder_project/adder_gen/${name}.v --exe --build /home/shi/research/adder_project/adder_veri/tb_${name}.cpp
END2

open(DATA3, ">>./adder_veri/_run.sh") or die ">./adder_veri/_run.sh文件无法打开, $!";
print DATA3 <<END3;
./obj_dir/V${name}
END3
