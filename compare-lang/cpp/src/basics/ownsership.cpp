#include "basics.hpp"
#include <iostream>
#include <memory>
#include <string>

namespace basics::ownsership {

struct User {
    std::string name;
    explicit User(std::string n) : name(std::move(n)) {}
    };

    void run() {
    std::cout << "[ownsership]\n";

    auto u1 = std::make_unique<User>("Alice");
    std::cout << "u1: " << u1->name << "\n";

    auto u2 = std::move(u1);
    std::cout << "moved -> u2\n";

    if (!u1) std::cout << "u1 is null\n";
    std::cout << "u2: " << u2->name << "\n";
}

} // namespace basics::ownsership
