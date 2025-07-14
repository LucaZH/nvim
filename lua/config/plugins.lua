return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nvim-lualine/lualine.nvim" },

  { "nvim-neo-tree/neo-tree.nvim", dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" } },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "windwp/nvim-ts-autotag" },

  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },

  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },

  { "nvimtools/none-ls.nvim" },
  { "jay-babu/mason-null-ls.nvim" },
}

