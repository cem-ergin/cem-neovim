vim.g.mapleader = " "

local keymap = vim.keymap

--general keymaps
--keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>vv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>vh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>ve", "<C-w>=") -- split window make split windows equal width
keymap.set("n", "<leader>vx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>vm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>sw", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>sc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>sb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>sh", "<cmd>Telescope help_tags<cr>")

keymap.set("n", "<leader>tw", "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch '})<cr>")
keymap.set("n", "<leader>te", "<cmd>lua require('neotest').summary.toggle()<cr>")
keymap.set("n", "<leader>to", "<cmd>lua require('neotest').output_panel.toggle()<cr>")
keymap.set("n", "<leader>tR", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>")
keymap.set("n", "<leader>tr", "<cmd>lua require('neotest').run.run()<cr>")
keymap.set("n", "<leader>td", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>")
keymap.set("n", "<leader>ts", "<cmd>lua require('neotest').run.stop()<cr>")
keymap.set("n", "<leader>tl", "<cmd>lua require('neotest').run.run_last()<cr>")
keymap.set("n", "<leader>tO", "<cmd>lua require('neotest').output.open({ enter = true })<cr>")
