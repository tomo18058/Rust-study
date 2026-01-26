use yew::prelude::*;
use  components::header::Header;
use components::todo::todo_list::TodoList;

mod components;

#[function_component(App)]
fn app() -> Html {
    html! {
        <>
            <Header />
            <div class="container mt-4">
                <TodoList />
            </div>
        </>
    }
}
fn main() {
    yew::Renderer::<App>::new().render();
}
