## ただC++のコードを書いて学んでいるだけのリポジトリです📖

- `src/main.cpp`：各テーマの実行入口（呼び出し元）
- `src/basics/*.cpp`：テーマ別の実装
- `src/basics/basics.hpp`：共通ヘッダ（宣言・include まとめ等）

## ✍️ 学習内容

- 変数と型（`variables.cpp`）
- 所有権（`ownership.cpp`）
- 借用と参照（`borrow.cpp`）
- スライス（`slice.cpp`）
- `Vec.cpp` / `HashMap.cpp`
- 標準出力・デバッグ用コード

※ 各ファイルは **1テーマ = 1ファイル** で書いています。

## 🚀 実行方法
cmake -S . -B build
