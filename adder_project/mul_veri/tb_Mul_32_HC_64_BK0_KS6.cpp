
#include "VMul_32_HC_64_BK0_KS6.h"
#include "verilated.h"
#include <iostream>
#include <cstdlib>

int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);

    VMul_32_HC_64_BK0_KS6* top = new VMul_32_HC_64_BK0_KS6;
    for(int i = 0; i < 100000; i++) {
        top->a = rand();
        top->b = rand();
        top->eval();
        uint64_t expected = static_cast<uint64_t>(top->a) * static_cast<uint64_t>(top->b);
        if (top->out != expected) {
            std::cerr << "Mismatch: " << top->out << " != " << expected << "\n";
            exit(EXIT_FAILURE);
        }
        printf("%d * %d = %d, Pass \n", top->a, top->b, top->out);
    }

    top->final();
    delete top;
    return 0;
}

