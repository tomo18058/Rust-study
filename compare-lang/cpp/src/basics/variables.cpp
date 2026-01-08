#include "basics/basics.hpp"
#include <iostream>
#include <string>

namespace basics::variables {
    void run() {
        std::cout << "[variables] run()\n";

        int a = 10;
        const int b = 20;
        auto c = a + b; // 推論

        double pi = 3.14159;
        bool ok = true;
        std::string name = "tomo";

        std::cout << "a=" << a << ", b=" << b << ", c=" << c << "\n";
        std::cout << "pi=" << pi << ", ok=" << ok << ", name=" << name << "\n\n";
    }
}
