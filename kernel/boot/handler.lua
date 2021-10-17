-- Snarwin

--- Execute Process

local order = require "kernel.boot.order"

function runProcess(level)
    order.boot_table[level].init()
end
