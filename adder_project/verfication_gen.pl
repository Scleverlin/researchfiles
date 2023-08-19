
$name = $ARGV[1];
open(DATA, ">./adder_veri/tb_${name}.cpp") or die ">./adder_veri/tb_${name}.cpp 文件无法打开, $!";

print DATA "
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <random>
#include \"V${name}.h\"
#include \"verilated.h\"
#include \"verilated_vcd_c.h\"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    V${name} * top = new V${name} ;

    std::mt19937_64 rng(std::random_device{}());
    std::uniform_int_distribution<uint64_t> distribution(0, UINT64_MAX);

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

        unsigned __int128 expected_sum = static_cast<unsigned __int128>(top->a) + static_cast<unsigned __int128>(top->b) + static_cast<unsigned __int128>(top->cin);
        uint8_t expected_cout = (expected_sum >> 64) & 0x1;

        printf(\"Test %4d: a = \%20lu, b = \%20lu, cin = \%u, sum = %20lu, cout = \%u, Pass\\n\",
           test + 1, top->a, top->b, static_cast<unsigned>(top->cin), top->sum, static_cast<unsigned>(top->cout));

        if (top->sum != (expected_sum & 0xFFFFFFFFFFFFFFFF) || top->cout != expected_cout) {
            printf(\"Mismatch detected!\\n\");
            
            // Print the bits that mismatch
            for (int i = 0; i < 64; i++) {
                uint64_t mask = 1ull << i;
                if ((top->sum & mask) != (expected_sum & mask)) {
                    printf(\"Bit \%d is incorrect\\n\", i + 1);
                }
            }

            // Uncomment the lines below if you want to stop the test and exit on mismatch
            top->final();
            delete top;
            return 1;
        }
    }

    printf(\"Random tests completed\\n\");
    top->final();
    delete top;
    return 0;
}
";

open(DATA2, ">>./adder_veri/_source.sh") or die ">./adder_veri/_source.sh文件无法打开, $!";
print DATA2 "
verilator -Wall -j 0 -Wno-DECLFILENAME --cc /home/shi/research/adder_project/adder_gen/${name}.v --exe --build /home/shi/research/adder_project/adder_veri/tb_${name}.cpp
";

open(DATA3, ">>./adder_veri/_run.sh") or die ">./adder_veri/_run.sh文件无法打开, $!";
print DATA3 "
./obj_dir/V${name}
";