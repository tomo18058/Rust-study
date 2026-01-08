# Rust-study 📚

Rust を中心に学習しつつ、**同じテーマを C++ / Objective-C でも実装して比較**するためのリポジトリです。  
「1テーマ = 1ファイル」形式で、あとから見返して復習しやすい形にしています。

---

## ディレクトリ構成

- `compare-lang/rust/`：Rust 実装（Cargo）
- `compare-lang/cpp/`：C++ 実装（CMake）
- `compare-lang/objc/`：Objective-C 実装（予定）
- `compare-lang/*/src/basics/`：各テーマのサンプル置き場

> 各言語の詳細は、それぞれのフォルダ内 `README.md` に書いてあります。

---

## 学習テーマ（Rust / C++ / Objective-C 共通で増やしていく予定）

- 変数と型（variables）
- 所有権/借用の考え方（ownership / borrow）
- スライス（slice）
- Vec / HashMap（vecs / hashmaps）
- 標準出力・デバッグ（print） など

---

## 実行方法

### Rust（Cargo）
```bash
cd compare-lang/rust
cargo run
