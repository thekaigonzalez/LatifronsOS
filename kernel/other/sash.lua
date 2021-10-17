-- Snarwin As a SHell.

require "kernel.dyldc" -- Include lua runner (better than require) (supports compiled lua)
require "readline"
require "kernel.process"

function lsplit(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end


function split(string)
    local tblt = {}
    local lns = lsplit(string, " ")
    i = 0
    -- works!

    for _,V in ipairs(lns) do
        tblt[i] = V;
        i = i + 1
    end
    return tblt
end

local self = {}

function self:main()
    print("sash")
    while 1 do
        local s = readline("sash-1.0$ ") or nil
        if s ~= nil then
            add_history(s)
        end
        local t = split(s)
        if (exists("scripts/" .. t[0] .. ".lua")) then
            local status, err = pcall(function() require("scripts." .. t[0]):Main(t)
            end)

            if not status then
                print("Loader error: " ..err)
            end
        else
            if os.execute(s) ~= 0 then
                print("sash: no such command in sh, or sash called "..t[0])
            end
        end
    end

end

return self