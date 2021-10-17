// interface to GNU readline


#include <readline/readline.h>
#include <readline/history.h>



#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>


int readline_rea(lua_State* L) {
    const char* c = readline(luaL_checkstring(L, 1));
    lua_pushstring(L, c);
    return 1;
}

int readline_add_history(lua_State *L) {
    add_history(luaL_checkstring(L, 1));
    return 1;
}

int luaopen_readline(lua_State* L) {
    lua_register(L, "add_history", readline_add_history);
    lua_register(L, "readline", readline_rea);
    return 0;
}