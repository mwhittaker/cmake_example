#include <string>

#include "printer/printer.h"

int main() {
    Printer printer;
    for (int i = 0; i < 100; ++i) {
        printer.Print("multi printer " + std::to_string(i));
    }
}
