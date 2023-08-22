
#include "VHybrid_64_BK2_KL4_Fanout4.h"
#include "verilated.h"
#include <iostream>
#include <cstdlib>

int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);

    VHybrid_64_BK2_KL4_Fanout4* top = new VHybrid_64_BK2_KL4_Fanout4;
    for(int i = 0; i < 100000; i++) {
        top->a = rand();
        top->b = rand();
        top->eval();
        uint64_t expected = static_cast<uint64_t>(top->a) * static_cast<uint64_t>(top->b);
        if (top->out != expected) {
            std::cerr << "Mismatch: " << top->out << " != " << expected << "\n";
            exit(EXIT_FAILURE);
        }
    }

    top->final();
    delete top;
    return 0;
}

