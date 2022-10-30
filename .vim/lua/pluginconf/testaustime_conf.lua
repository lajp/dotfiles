local function read_from(file)
    local fhandle = io.open(file, "rb")
    if not fhandle then return nil end

    local contents = fhandle:read("*l")
    fhandle:close()
    return contents
end

return require("testaustime").setup({
    token = read_from(os.getenv("HOME") .. "/.testaustime_token"),
    useragent = "lajp / testaustime.nvim",
})
