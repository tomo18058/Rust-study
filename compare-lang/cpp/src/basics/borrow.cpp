#include "basics/basics.hpp"
#include <iostream>
#include <string>

namespace basics::borrow {

    // 参照（borrow）: コピーせず読む
    void print_len(const std::string& s) {
        std::cout << "len=" << s.size() << "\n";
    }

    // 参照で書き換える
    void add_suffix(std::string& s) {
        s += "!!!";
    }

    void run() {
        std::cout << "[borrow] run()\n";

        std::string msg = "hello";
        print_len(msg);

        add_suffix(msg);
        std::cout << "after: " << msg << "\n\n";
    }
}
