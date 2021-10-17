-- Priority Browser

local boot = require "kernel.boot"
local self = {}

function self:each_boot(func_do)
    for _,v in ipairs(boot.order.boot_table) do
        func_do(v)
    end
end

return self;