require "kernel.dyldc"

local boottable = {0x00} -- Boot table, stores boot info. (0x00 -> Initial boot process)

boottable[1] = {} --- Create bootable as first process

boottable[1].id = 0x01

boottable[1].disp_name = "Boot Chooser"

boottable[1].init = function ()
    print("Hello!")
end

local order = {
    boot_table =
        boottable
    }

--- Create boot process without dirtying the boot table.
function order:create_boot(idx, name, init)
    boottable[#boottable+1] = {id=idx, disp_name=name, init=init}
    -- print(boottable[#boottable].disp_name)
end

return order