return {
    "neovim/nvim-lspconfig",
    priority = 1000,
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmplsp = require("cmp_nvim_lsp")

        local opts = { noremap = true, silent = true }

        local on_attach = function(client, bufnr)
            opts.buffer = bufnr

            -- A bunch of "List LSP ____" stuff here
            opts.desc = "List LSP references"
            vim.keymap.set("n", "<leader>lf", function() vim.cmd("Telescope lsp_references") end, opts)

            opts.desc = "List LSP definitions"
            vim.keymap.set("n", "<leader>ld", function() vim.cmd("Telescope lsp_definitions") end, opts)

            opts.desc = "List LSP implementations"
            vim.keymap.set("n", "<leader>li", function() vim.cmd("Telescope lsp_implementations") end, opts)

            opts.desc = "List LSP type definitions"
            vim.keymap.set("n", "<leader>lt", function() vim.cmd("Telescope lsp_type_definitions") end, opts)

            -- Diagnostics stuff here
            opts.desc = "Show buffer diagnostics"
            vim.keymap.set("n", "<leader>lD", function() vim.cmd("Telescope diagnostics bufnr=0") end, opts)

            opts.desc = "Show line diagnostics"
            vim.keymap.set("n", "<leader>lL", vim.diagnostic.open_float, opts)

            opts.desc = "Show diagnostics"
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

            -- Other stuff here
            opts.desc = "Go to declaration"
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

            opts.desc = "Smart rename"
            vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename, opts)

            opts.desc = "Restart LSP"
            vim.keymap.set("n", "<leader>lr", function() vim.cmd("LspRestart") end, opts)
        end

        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN] = "",
                    [vim.diagnostic.severity.HINT] = "",
                    [vim.diagnostic.severity.INFO] = "",
                }
            }
        })

        local capabilities = cmplsp.default_capabilities()

        -- Configure servers
        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["bashls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["rust_analyzer"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                checkOnSave = { command = "clippy" }
            }
        })

        lspconfig["gopls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                -- So it finds the vim global
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        }
                    },
                }
            }
        })
    end
}
