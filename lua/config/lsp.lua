require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright", "ts_ls", "html", "cssls", "tailwindcss",
    "rust_analyzer", "eslint"
  },
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  -- Hover documentation
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)

  -- Go to definition 
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)

  -- Code actions (quick fixes)
  vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, bufopts)

  -- Rename symbole
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)

  -- Diagnostics in float window
  vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, bufopts)

  -- Diagnostic preview
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, bufopts)

  -- Diagnostic next 
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, bufopts)

end

local servers = {
  pyright = {},
  ts_ls = {},
  html = {},
  cssls = {},
  tailwindcss = {},
  eslint = {},
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        cargo = { allFeatures = true },
        checkOnSave = { command = "clippy" },
      },
    },
  },
}

for name, config in pairs(servers) do
  config.capabilities = capabilities
  config.on_attach = on_attach 
  lspconfig[name].setup(config)
end
