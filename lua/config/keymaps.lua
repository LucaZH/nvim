vim.keymap.set("n", "<leader>b", ":Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle File Tree (Neo-tree)" })
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", { noremap = true, silent = true, desc = "Find Files (Telescope)" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true, desc = "Live Grep (Telescope)" })

vim.keymap.set({ "n", "v" }, "<leader>cf", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

vim.keymap.set("n", "<leader>wv", "<C-w>v", { silent = true })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { silent = true })
vim.keymap.set("n", "<leader>ww", "<C-w>w", { silent = true })
vim.keymap.set("n", "<leader>wq", "<C-w>q", { silent = true })

vim.keymap.set("n", "<leader>h", "<C-w>h", { silent = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { silent = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { silent = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { silent = true })

vim.keymap.set("n", "<C-s>", ":w<CR>", { silent = true })
vim.keymap.set("n", "<C-Q>", ":qa<CR>", { silent = true })