local null_ls = require("null-ls")

require("mason-null-ls").setup({
  ensure_installed = { "prettier", "black", "isort", "pylint", "eslint_d", "rustfmt", "clippy" },
  automatic_setup = true,
})

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      extra_args = {
        "--config-precedence", "prefer-file",
        "--tab-width", "3",
        "--trailing-comma", "all",
        "--single-quote", "false",
        "--arrow-parens", "always",
        "--semi", "true"
      },
    }),

    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.diagnostics.pylint,
  },
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
