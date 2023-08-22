
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <random>
#include "VHC_128_BK7_KS0.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    VHC_128_BK7_KS0 * top = new VHC_128_BK7_KS0;

    std::mt19937_64 rng(std::random_device{}());
    std::uniform_int_distribution<__int128> distribution(0, ~((__int128)0));

 for (int test = 0; test < 100000; ++test) {
        __int128 random_a = distribution(rng);
        __int128 random_b = distribution(rng);

        // Assign the 128-bit value split into two 64-bit values
        top->a[0] = static_cast<uint64_t>(random_a);
        top->a[1] = static_cast<uint64_t>(random_a >> 64);
        
        top->b[0] = static_cast<uint64_t>(random_b);
        top->b[1] = static_cast<uint64_t>(random_b >> 64);

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

               __int128 expected_sum = random_a + random_b + top->cin;
        uint8_t expected_cout = (expected_sum >> 127) & 0x1;

        printf("Test %4d: a = %20llu%20llu, b = %20llu%20llu, cin = %u, sum = %20llu%20llu, cout = %u, Pass\n",
           test + 1,
           static_cast<unsigned long long>(top->a[1]), static_cast<unsigned long long>(top->a[0]),
           static_cast<unsigned long long>(top->b[1]), static_cast<unsigned long long>(top->b[0]),
           static_cast<unsigned>(top->cin),
           static_cast<unsigned long long>(top->sum[1]), static_cast<unsigned long long>(top->sum[0]),
           static_cast<unsigned>(top->cout)
        );

        __int128 top_sum = static_cast<__int128>(top->sum[1]) << 64 | top->sum[0];

        if (top_sum != expected_sum || top->cout != expected_cout) {
            printf("Mismatch detected!\n");

            for (int i = 0; i < 128; i++) {
                __int128 mask = static_cast<__int128>(1) << i;
                if ((top_sum & mask) != (expected_sum & mask)) {
                    printf("Bit %d is incorrect\n", i + 1);
                }
            }

            top->final();
            delete top;
            return 1;
        }
    }

    printf("Random tests completed\n");
    top->final();
    delete top;
    return 0;
}



