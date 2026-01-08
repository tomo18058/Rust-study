#include "basics/basics.hpp"
#include <iostream>
#include <string>
#include <unordered_map>

namespace basics::hashmaps {
    void run() {
        std::cout << "[hashmaps] run()\n";

        std::unordered_map<std::string, int> mp;
        mp["apple"] = 3;
        mp["banana"] = 5;

        if (auto it = mp.find("apple"); it != mp.end()) {
            std::cout << "apple=" << it->second << "\n";
        }

        std::cout << "all: ";
        for (const auto& [k, v] : mp) {
            std::cout << "{" << k << ":" << v << "} ";
        }
        std::cout << "\n\n";
    }
}
