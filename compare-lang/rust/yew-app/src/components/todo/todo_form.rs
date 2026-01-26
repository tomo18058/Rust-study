use yew::{function_component, html, Html, use_state, Callback, InputEvent, TargetCast};
use web_sys::HtmlInputElement;

#[function_component(TodoForm)]
pub fn todo_form() -> Html {
    let title = use_state(|| "".to_string());

    let oninput = {
        let title = title.clone();
        Callback::from(move |e: InputEvent| {
            let input: HtmlInputElement = e.target_unchecked_into();
            title.set(input.value());
        })
    };

    html! {
        <form class="mb-5">
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

            <button type="submit" class="btn btn-primary">{"追加"}</button>
        </form>
    }
}
