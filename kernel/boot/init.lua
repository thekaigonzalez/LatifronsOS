-- Boot process

require "kernel.dyldc"

local boot = {}

--- Boot order
boot.order = require "kernel.boot.order"

-- Boot handler (reader)
boot.handler = require "kernel.boot.handler"

return boot