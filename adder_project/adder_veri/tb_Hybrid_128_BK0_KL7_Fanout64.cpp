#include <cstdio>
#include <iostream>
#include <iomanip>
#include <random>
#include "VHybrid_128_BK0_KL7_Fanout64.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    VHybrid_128_BK0_KL7_Fanout64 * top = new VHybrid_128_BK0_KL7_Fanout64;

    std::mt19937_64 rng(std::random_device{}());
    std::uniform_int_distribution<__int128> distribution(0, ~((__int128)0));

    constexpr int NUM_TESTS = 100000;
    for (int test = 0; test < NUM_TESTS; ++test) {
        __int128 random_a = distribution(rng);
        __int128 random_b = distribution(rng);

        // Assign the 128-bit value split into two 64-bit values
        top->a[0] = static_cast<uint64_t>(random_a);
        top->a[1] = static_cast<uint64_t>(random_a >> 64);
        
        top->b[0] = static_cast<uint64_t>(random_b);
        top->b[1] = static_cast<uint64_t>(random_b >> 64);

        top->cin = rand() & 0x1;

        // Toggle clock to simulate clock cycles
        for (int i = 0; i < 4; i++) {
            top->clk = !top->clk;
            top->eval();
        }

        __int128 expected_sum = random_a + random_b + top->cin;
        uint8_t expected_cout = (expected_sum >> 127) & 0x1;

        __int128 top_sum = static_cast<__int128>(top->sum[1]) << 64 | top->sum[0];

        if (top_sum != expected_sum || top->cout != expected_cout) {
            printf("Test %4d: a = %20llu%20llu, b = %20llu%20llu, cin = %u, sum = %20llu%20llu, cout = %u, Fail\n",
                test + 1,
                static_cast<unsigned long long>(top->a[1]), static_cast<unsigned long long>(top->a[0]),
                static_cast<unsigned long long>(top->b[1]), static_cast<unsigned long long>(top->b[0]),
                static_cast<unsigned>(top->cin),
                static_cast<unsigned long long>(top->sum[1]), static_cast<unsigned long long>(top->sum[0]),
                static_cast<unsigned>(top->cout)
            );

            for (int i = 0; i < 128; i++) {
                __int128 mask = static_cast<__int128>(1) << i;
                if ((top_sum & mask) != (expected_sum & mask)) {
                    printf("Bit %d is incorrect\n", i);
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
