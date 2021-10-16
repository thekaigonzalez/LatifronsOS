function chunk(file)
    return loadfile(file)();
end

--- Compile a directory.
--- compile_directory("file") loads file/init.lua
function chunk_directory(dir)
    return loadfile(dir .. "/init.lua")();
end