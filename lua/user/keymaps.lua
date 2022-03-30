local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap




--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Better Window Navigation
keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Spacemacs Muscle Memory
-- Press SPC f s
keymap("n", "<leader>fs", ":w!<CR>", opts)
keymap("n", "<leader>qq", ":q!<CR>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- NeoTerm
keymap("n", ",,", ":TREPLSendLine<CR>", opts)
keymap("v", ",,", ":TREPLSendSelection<CR>", opts)
keymap("n", "<leader>tt", ":Ttoggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<CMD>Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", "<CMD>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", "<CMD>Telescope current_buffer_fuzzy_find<CR>", opts)
keymap("n", "<leader>gb", "<CMD>Telescope git_branches<CR>", opts)

-- Gitsigns
-- Nvimtree
keymap("n", "<leader>ft", "<CMD>NvimTreeToggle<CR>", opts)
-- Buffer
keymap("n", "<leader>bd", "<CMD>Bdelete<CR>", opts)
keymap("n", "<leader>bb", "<CMD>Telescope buffers<CR>", opts)
