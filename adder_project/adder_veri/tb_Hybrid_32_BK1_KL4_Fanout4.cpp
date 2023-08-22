
#include <cstdio>
#include <iostream>
#include <iomanip>
#include <random>
#include "VHybrid_32_BK1_KL4_Fanout4.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    VHybrid_32_BK1_KL4_Fanout4 * top = new VHybrid_32_BK1_KL4_Fanout4;

    std::mt19937_64 rng(std::random_device{}());
    std::uniform_int_distribution<uint64_t> distribution(0, 0xFFFFFFFF);

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

        uint64_t expected_sum = static_cast<uint64_t>(top->a) + static_cast<uint64_t>(top->b) + static_cast<uint64_t>(top->cin);
        uint8_t expected_cout = (expected_sum >> 32) & 0x1;

        printf("Test %4d: a = %10u, b = %10u, cin = %u, sum = %10u, cout = %u, Pass\n",
           test + 1, top->a, top->b, static_cast<unsigned>(top->cin), top->sum, static_cast<unsigned>(top->cout));
         if (top->sum != (expected_sum & 0xFFFFFFFF) || top->cout != expected_cout) {
            printf("Mismatch detected!\n");
            for (int i = 0; i < 32; i++) {
                uint64_t mask = 1ull << i;
                if ((top->sum & mask) != (expected_sum & mask)) {
                    printf("Bit %d is incorrect\n", i + 1);
                }
            }
            top->final();
            delete top;
            return 1;
        }
    printf("Random tests completed\n");
    top->final();
    delete top;
    return 0;
}