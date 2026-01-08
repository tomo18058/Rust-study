#include "basics/basics.hpp"
#include <iostream>
#include <string>
#include <string_view>
#include <vector>
#include <span>

namespace basics::slice {
void run() {
    std::cout << "[slice] run()\n";

    // 文字列スライスに近い: string_view
    std::string s = "abcdef";
    std::string_view sv = s;              // 全体参照
    std::string_view sub = sv.substr(1,3); // bcd

    std::cout << "sv=" << sv << "\n";
    std::cout << "sub=" << sub << "\n";

    // 配列/Vecのスライスに近い: span
    std::vector<int> v{1,2,3,4,5};
    std::span<int> sp(v.data(), v.size());
    auto mid = sp.subspan(1, 3); // {2,3,4}

    std::cout << "mid: ";
    for (int x : mid) std::cout << x << " ";
    std::cout << "\n";
}
}