use yew::prelude::*;
use components::header::Header;
use components::todo::todo_list::TodoList;
use components::todo::todo_form::TodoForm;
use components::todo::types::Todo;

mod components;

#[function_component(App)]
pub fn app() -> Html {

    let todos = use_state(||vec![
        // 初期のTODOアイテムをここに追加
        Todo { id: 1, title: "Learn Yew".to_string(), completed: false },
        Todo { id: 2, title: "Learn Rust".to_string(), completed: true },
    ]);
    
    let on_add = {
        let todos = todos.clone();
        Callback::from(move |title: String| {
            log::info!("新しいTODOが追加されました: {}", title);

            // ここが超重要：state更新（Vecを作り直してset）
            let mut next = (*todos).clone();
            let next_id = next.last().map(|t| t.id + 1).unwrap_or(1);

            next.push(Todo {
                id: next_id,
                title,
                completed: false,
            });

            todos.set(next);
        })
    };

    html! {
        <div class="container mt-5">
            <Header />
            <TodoForm {on_add} />
            <TodoList todo_items={(*todos).clone()} />
        </div>
    }
}
fn main() {
    yew::Renderer::<App>::new().render();
    wasm_logger::init(wasm_logger::Config::default());}
