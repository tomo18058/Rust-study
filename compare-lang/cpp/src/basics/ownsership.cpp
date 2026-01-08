#include "basics/basics.hpp"
#include <iostream>
#include <memory>
#include <string>

namespace basics::ownsership {
    struct User {
        std::string name;
        explicit User(std::string n) : name(std::move(n)) {}
        ~User() {
            std::cout << "  (drop User: " << name << ")\n";
        }
    };

    void run() {
        std::cout << "[ownsership] run()\n";

        // Rustの所有権っぽく：unique_ptrは「唯一の所有者」
        auto u1 = std::make_unique<User>("Alice");

        // 所有権の移動（move）: Rustの move に近い
        auto u2 = std::move(u1);

        if (!u1) {
            std::cout << "u1 is null (moved)\n";
        }
        std::cout << "u2 owns: " << u2->name << "\n\n";
    }
}
