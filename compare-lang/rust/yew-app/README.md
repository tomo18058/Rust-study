# Yew TODO App

Rust + Yew + WebAssembly を用いて作成した TODO アプリです。  
フロントエンドを Rust で実装し、状態管理やコンポーネント設計を学習・検証する目的で作成しました。

## 🔗 Demo

GitHub Pages で公開しています  
👉 https://tomo18058.github.io/Rust-study/

---

## 🛠 使用技術

- Rust
- Yew
- WebAssembly (wasm32-unknown-unknown)
- Trunk
- GitHub Pages

---

## 📌 機能

- TODO の追加
- TODO 一覧表示
- 完了状態の切り替え（チェックボックス）
- コンポーネント分割による UI 構成

---

## 🧠 実装のポイント

### 状態管理（use_state）

- TODO 一覧を `use_state(Vec<Todo>)` で管理
- 子コンポーネント（TodoForm）から Callback を通して状態を更新

```rust
let todos = use_state(|| Vec::<Todo>::new());
