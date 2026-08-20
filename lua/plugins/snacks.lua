return {
    {
        "folke/snacks.nvim",
        opts = function(_, opts)
            opts.explorer = opts.explorer or {}
            opts.explorer.hidden = true
            opts.picker = opts.picker or {}
            opts.picker.sources = opts.picker.sources or {}
            opts.picker.sources.files = opts.picker.sources.files or {}
            opts.picker.sources.files.hidden = true
            return opts
        end,
    }
}
