vim.cmd.colorscheme("catppuccin")
vim.cmd("set softtabstop=3")
vim.opt.number = true        
vim.opt.relativenumber = true
require("lualine").setup({ options = { theme = "catppuccin" } })
require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true,       
      hide_dotfiles = false,
      hide_gitignored = false, 
    },
  },
})


