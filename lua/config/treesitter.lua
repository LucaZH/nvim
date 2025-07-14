require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua", "python", "rust", "tsx", "typescript", "html", "css", "javascript"
  },
  highlight = { enable = true },
  autotag = { enable = true },
})

