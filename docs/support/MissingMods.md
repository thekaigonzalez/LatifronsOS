# Support: Missing Modules

if your Snarwin is looking like this:

```

/usr/local/bin/lua: ./snarl:5: module 'kernel.boot' not found:
        no field package.preload['kernel.boot']
        no file '/usr/local/share/lua/5.4/kernel/boot.lua'
        no file '/usr/local/share/lua/5.4/kernel/boot/init.lua'
        no file '/usr/local/lib/lua/5.4/kernel/boot.lua'
        no file '/usr/local/lib/lua/5.4/kernel/boot/init.lua'
        no file './kernel/boot.lua'
        no file './kernel/boot/init.lua'
        no file '/usr/local/lib/lua/5.4/kernel/boot.so'
        no file '/usr/local/lib/lua/5.4/loadall.so'
        no file './kernel/boot.so'
        no file '/usr/local/lib/lua/5.4/kernel.so'
        no file '/usr/local/lib/lua/5.4/loadall.so'
        no file './kernel.so'

```

Don't fret! there's always an explanation.

## Easiest explanation: LUA_PATH not set for Kernel API

When your Lua_PATH variable isn't set to where your kernel API is, then you're going to have problems.

Try these lines of code in your Bash rc.

```

export LUA_PATH="/path/to/Snarwin/?/init.lua;;/path/to/Snarwin/?.lua"
# because of the readline library we need a CPATH too.

export LUA_CPATH="/path/to/Snarwin/?.so;;"

```

## Other: Your Snarwin is corrupted

If snarwin is corrupted, you may need a reinstall.