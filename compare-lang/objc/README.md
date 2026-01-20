# Objective-C study 📖

ただObjective-Cのコードを書いて学んでいるだけのリポジトリです📖

- `src/main.m`：各テーマの実行入口（呼び出し元）
- `src/basics/*.m`：テーマ別の実装
- `src/basics/topics.h`：共通ヘッダ（宣言・トピック一覧など）
- `build.sh`：GNUstep + clang でビルドするスクリプト（WSL想定）

---

## ✍️ 学習内容

- 基本（`basics.m`）
- 標準出力・デバッグ（`print.m`）
- 変数と型（`variables.m`）
- 所有（`ownsership.m`）
- 借用と参照っぽい考え方（`borrow.m`）
- スライス（`slice.m`）
- Vec相当（`vecs.m`）
- HashMap相当（`hashmaps.m`）

※ 各ファイルは **1テーマ = 1ファイル** で書いています。

---

## 🚀 実行方法（Windows + VSCode + WSL）

### 依存（初回だけ）
sudo apt update
sudo apt install -y clang gcc gobjc gnustep-make libgnustep-base-dev gnustep-devel libobjc-12-dev

### ビルド
- cd compare-lang/objc
- chmod +x build.sh
- ./build.sh


### トピック一覧を表示
- ./build/compare_objc --list

### 実行
- ./build/compare_objc basics
- ./build/compare_objc print
- ./build/compare_objc variables
- ./build/compare_objc ownsership
- ./build/compare_objc hashmaps
