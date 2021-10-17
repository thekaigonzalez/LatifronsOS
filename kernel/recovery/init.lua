-- Recovery features
-- Restore from latest git, or any tags.

local boot = require "kernel.boot"
local boot_browser = require "kernel.pbrows"

--- Assuming there are no other boots, we'll try creating one at the 3 index.
boot.order:create_boot(0x05, "Recovery", function()
    
end)