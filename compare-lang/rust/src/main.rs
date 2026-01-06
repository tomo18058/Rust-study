use yew::prelude::*;

#[function_component(App)]
fn app() -> Html {
        let counter = use_state(|| 0);
        let onclick = {
            let counter = counter.clone();
            move |_| {let value = *counter +1;
            counter.set(value);
            }
        };
    html! {

        <main>
            <h1>{ "Hello Yew!" }</h1>
            <p>{ "Trunk + Yew is running." }</p>
            <div>
            <button {onclick}>{"+1"}</button></div>
            <p>{*counter}</p>
        </main>
    }
}
mod basics {
    pub mod print;
    pub mod variables;
    pub mod ownership;
    pub mod borrow;
    pub mod slice;
    pub mod vecs;
    pub mod hashmaps;
}

fn main() {
    basics::print::run();
    basics::variables::run();
    basics::ownership::run();
    basics::borrow::run();
    basics::slice::run();
    basics::vecs::run();
    basics::hashmaps::run();

    yew::Renderer::<App>::new().render();
}
