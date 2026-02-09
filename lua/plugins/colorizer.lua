return {
    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        opts = {
            user_default_option = {
                RRGGBBAA = true,
                AARRGGBB = true,
                rgb_fn = true,
                hsl_fn = true,
                xterm = true,
            },
        },
    },
}
