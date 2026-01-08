#include "basics/basics.hpp"
#include <iostream>
#include <vector>

namespace basics::vecs {
    void run() {
        std::cout << "[vecs] run()\n";

        std::vector<int> v;
        v.push_back(10);
        v.push_back(20);
        v.push_back(30);

        std::cout << "size=" << v.size() << "\n";
        std::cout << "items: ";
        for (int x : v) std::cout << x << " ";
        std::cout << "\n\n";
    }
}
