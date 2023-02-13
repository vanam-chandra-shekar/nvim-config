let lua = Lua::new();
lua.set_hook(HookTriggers {
    every_line: true, ..Default::default()
}, |_lua_context, debug| {
    println!("line {}", debug.curr_line());
    Ok(())
});
lua.context(|lua_context| {
    lua_context.load(r#"
        local x = 2 + 3
        local y = x * 63
        local z = string.len(x..", "..y)
    "#).exec()
})?;let lua = Lua::new();
lua.context(|lua_context| {
   lua_context.load(r#"
       print("hello world!")
   "#).exec()
})?;