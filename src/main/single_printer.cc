#include "printer/printer.h"
#include "proto/message.pb.h"

int main() {
    Printer printer;
    printer.Print("single printer");

    Pair p;
    p.set_x(1);
    p.set_y(1);
}
