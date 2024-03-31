use leptos::*;
use leptos_meta::*;

use thaw::{Divider, Icon};

#[component]
pub fn App() -> impl IntoView {
    // Provides context that manages stylesheets, titles, meta tags, etc.
    provide_meta_context();

    let github_url = "#";

    view! {
        <Stylesheet id="leptos" href="/pkg/leptos_start.css"/>

        <header class="h-24 bg-red-400" >
            <nav class="h-full flex flex-row items-center px-5" >
                <a class="inline no-underline flex-1 w-64 flex flex-row items-center" href="#" >
                    <span class="inline text-5xl pt-[8px] font-bold drop-shadow-md text-red-800" >A</span>
                    <span class="inline text-5xl pb-[8px] font-bold drop-shadow-md text-pink-600" >B</span>
                    <span class="inline text-5xl pt-[8px] font-bold drop-shadow-md text-red-800" >C</span>
                    <span class="inline text-5xl pb-[8px] font-bold drop-shadow-md text-pink-600" >D</span>
                    <span class="inline text-4xl font-semibold drop-shadow-md animate-bounce text-orange-900" >ate</span>
                </a>
                <div class="inline flex-1 flex flex-row justify-end w-64" >
                    <a class="bg-transparent" href={{github_url}}>
                        <Icon icon=icondata::Icon::from(icondata::AiGithubFilled) class="text-4xl"/>
                    </a>
                </div>
            </nav>
        </header>
        <main class="h-24 bg-base" >
            <h1>hola</h1>
        </main>
    }
}

/// 404 - Not Found
#[component]
fn NotFound() -> impl IntoView {
    view! {
        <h1>"Not Found"</h1>
    }
}
