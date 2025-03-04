require("ccls").setup({
    lsp = {
        -- Check `:help vim.lsp.start` for config options.
        server = {
            name = "ccls",  -- String name.

            cmd = { "ccls-extra.sh" },  -- Point to your binary, has to be a table.
            args = {},

            -- autostart = false,  -- Does not seem to work here.

            offset_encoding = "utf-32",  -- Default value set by plugin.

            root_dir = vim.fs.dirname(vim.fs.find({ "compile_commands.json", ".git" }, { upward = true })[1]),

            init_options = {
                index = {
                    threads = 0;
                };

                clang = {
                    excludeArgs = { "-frounding-math" };
                };
            },

            -- |> Fix diagnostics.
            flags = lsp_flags,
            -- |> Attach LSP keybindings & other crap.
            on_attach = aum_general_on_attach,
            -- |> Add nvim-cmp or snippet completion capabilities.
            capabilities = completion_capabilities,
            -- |> Activate custom handlers.
            handlers = aum_handler_config,
        },
    },

    win_config = {
        -- Sidebar configuration.
        sidebar = {
            size = 50,
            position = "topleft",
            split = "vnew",
            width = 50,
            height = 20,
        },

        -- Floating window configuration. check :help nvim_open_win for options.
        float = {
            style = "minimal",
            relative = "cursor",
            width = 50,
            height = 20,
            row = 0,
            col = 0,
            border = "rounded",
        },
    },

    filetypes = {"c", "cpp"},
})
