import stdlib.themes.bootstrap

database admin {
  int /counter = 0;
}

function action(_) {
    /admin/counter++;
    #msg = <>Hello, user number {/admin/counter}!</>;
}

function page() {
    <h1 class="well" onclick={action}>Hello, world</h1>
    <div id="msg">Click the header</div>;
}

Server.start(
    Server.http,
    { ~page, title: "Hello, world" }
);
