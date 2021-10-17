function protect(file)
    pcall(function()
        return chunk(file);
    end)
end

