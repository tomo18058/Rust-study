#include "basics/basics.hpp"

int main() {
    basics::print::run();
    basics::variables::run();
    basics::ownsership::run();
    basics::borrow::run();
    basics::slice::run();
    basics::vecs::run();
    basics::hashmaps::run();

    return 0;
}