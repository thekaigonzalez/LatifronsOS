# Placement & Swapping in Snarwin

Swapping a boot drive is the act of replacing a boot table drive with another.

This source code:

```lua

local recovery = require "kernel.recovery"
-- snarboot.order:create_boot(0x02, "Test OS", function()
--     print("test boot")
-- end)
-- print(snarboot.order.boot_table[2].init())

-- Create a new boot 
snarboot.order:create_boot(0x02, "Snarwin SASH", function()
    print("I'm going to use SASH, you can change this later.")
    sash:main()
end)

```

Returns

```

bootstrap: starting in default OS: Recovery

```

But

```lua

-- local recovery = require "kernel.recovery"
-- snarboot.order:create_boot(0x02, "Test OS", function()
--     print("test boot")
-- end)
-- print(snarboot.order.boot_table[2].init())

-- Create a new boot 
snarboot.order:create_boot(0x02, "Snarwin SASH", function()
    print("I'm going to use SASH, you can change this later.")
    sash:main()
end)

```

returns

```

bootstrap: starting in default OS: Snarwin SASH

```