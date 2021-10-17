local bstr = {}

require "kernel.fs"
local boot = require "kernel.boot"

-- checks implementation
-- usually located at /usr/local/share/snarwin/impl
-- Read more about how to create an implementation in IMPLEMENTATIONS
function bstr:checkimpl()
    if exists("/usr/local/share/snarwin/") then
        if exists("/usr/local/share/snarwin/impl") then
            if exists("/usr/local/share/snarwin/impl/default.lua") then
                local dboot = chunk("")
            end
        end
    else
        print("bootstrap: Error: could not find snarwin default implementation")
        if boot.order.boot_table[2] == nil then
            print("bootstrap: no OS found on boottable, loading fallback OS")
            --- if it's errored
            if boot.order.boot_table[1] == nil then
                print("Error loading OS and Fallback; loading recovery..")
                local recv = require "kernel.recovery"
            end
        end
        print("bootstrap: starting in default OS: " .. boot.order.boot_table[2].disp_name) -- The default OS should be registered as boottable[2]
        boot.order.boot_table[2].init();
    end
end

return bstr