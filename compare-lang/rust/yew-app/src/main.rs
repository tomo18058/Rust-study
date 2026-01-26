use yew::prelude::*;
use components::header::Header;
use components::todo::todo_list::TodoList;
use components::todo::todo_form::TodoForm;

mod components;

#[function_component(App)]
fn app() -> Html {
    html! {
        <>
            <Header />
            <div class="container mt-4">
                <TodoForm />
                <TodoList />
            </div>
        </>
    }
}
fn main() {
    yew::Renderer::<App>::new().render();
}
