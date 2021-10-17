FLAGS=-O2 -shared -fPIC -lreadline
DEFINES=-DSNARWIN_USE_READLINE -DSNARWIN_LUA_HEADERS

all:
	gcc kernel/source/readline.c $(DEFINES) $(FLAGS) -o readline.so