function protect(file)
    pcall(function()
        return loadfile(file)();
    end)
end

