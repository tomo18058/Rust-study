use yew::{function_component, html, Html, use_state, Callback, InputEvent, TargetCast, };
use yew::prelude::*;
use yew::events::SubmitEvent;
use web_sys::HtmlInputElement;

#[derive(Properties, PartialEq)]
pub struct TodoFormProps {
    pub on_add: Callback<String>
}

#[function_component(TodoForm)]
pub fn todo_form(props: &TodoFormProps) -> Html {
    let title = use_state(|| "".to_string());

    let oninput = {
        let title = title.clone();
        Callback::from(move |e: InputEvent| {
            let input: HtmlInputElement = e.target_unchecked_into();
            title.set(input.value());
        })
    };

    let onclick = {
        let title = title.clone();
        let on_add = props.on_add.clone();
        Callback::from(move |_| {
            // e.prevent_default();
            // log::info!("追加ボタンがクリックされました: {}", *title);
            on_add.emit((*title).clone());
            title.set("".to_string());
        })
    };

    html! {
        <form class="mb-5" onsubmit={Callback::from(|e: SubmitEvent| e.prevent_default())}>
            <div class="mb-3">
                <label for="title" class="form-label">{"タイトル"}</label>
                <input
                    id="title"
                    type="text"
                    class="form-control"
                    value={(*title).clone()}
                    {oninput}
                />
            </div>

            <div class="mb-3">
                { &*title }
            </div>

            <button type="submit" onclick={onclick} class="btn btn-primary">{"追加"}</button>
        </form>
    }
}
