-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Splits
vim.keymap.set('n', '<leader>|', '<Cmd>vsplit<CR>', { desc = 'Vertical split', silent = true })
vim.keymap.set('n', '<leader>_', '<Cmd>split<CR>', { desc = 'Horizontal split', silent = true })

-- Resize Splits
vim.keymap.set('n', '<a-9>', '<Cmd>vertical resize -3<CR>', { desc = 'Increast vertical split size', silent = true })
vim.keymap.set('v', '<a-9>', '<Cmd>vertical resize -3<CR>', { desc = 'Increast vertical split size', silent = true })
vim.keymap.set('n', '<a-0>', '<Cmd>vertical resize +3<CR>', { desc = 'Decrease vertical split size', silent = true })
vim.keymap.set('v', '<a-0>', '<Cmd>vertical resize +3<CR>', { desc = 'Decrease vertical split size', silent = true })

vim.keymap.set('n', '<a-(>', '<Cmd>resize -3<CR>', { desc = 'Increast split size', silent = true })
vim.keymap.set('v', '<a-(>', '<Cmd>resize -3<CR>', { desc = 'Increast split size', silent = true })
vim.keymap.set('n', '<a-)>', '<Cmd>resize +3<CR>', { desc = 'Decrease split size', silent = true })
vim.keymap.set('v', '<a-)>', '<Cmd>resize +3<CR>', { desc = 'Decrease split size', silent = true })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Change Buffer
vim.keymap.set('n', '<leader>n', ':bnext<CR>', { desc = 'Switch to [N]ext buffer', silent = true })
vim.keymap.set('n', '<leader>p', ':bprevious<CR>', { desc = 'Switch to [P]revious buffer', silent = true })

-- Close current current buffer
vim.keymap.set('n', 'X', '<Cmd>:bd | :bnext<CR>', { desc = 'Close current buffer.' })

-- Move Line(s)
vim.keymap.set('n', '<a-k>', ':m .-2<CR>==', { desc = 'Move Line up', silent = true })
vim.keymap.set('n', '<a-j>', ':m .+1<CR>==', { desc = 'Move Line down', silent = true })

vim.keymap.set('v', '<a-k>', ":m '<-2<CR>gv=gv", { desc = 'Move Line(s) up', silent = true })
vim.keymap.set('v', '<a-j>', ":m '>+1<CR>gv=gv", { desc = 'Move Line(s) down', silent = true })

vim.keymap.set('i', '<a-k>', '<Esc>:m .-2<CR>==gi', { desc = 'Move Line(s) up', silent = true })
vim.keymap.set('i', '<a-j>', '<Esc>:m .+1<CR>==gi', { desc = 'Move Line(s) down', silent = true })

-- Join lines
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join Lines' })

-- Code Folding
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 20
vim.keymap.set('n', '<leader>a', 'za', { desc = 'Fold Toggle' })
vim.keymap.set('n', '<leader>k', 'za', { desc = 'Fold Toggle' })

-- Save
vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>', { desc = 'Save file.' })

-- Page Up/Down
vim.keymap.set('n', '<C-p>', '<C-u>zz', { desc = 'Half Page Up.' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Half Page Down.' })

vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page Up.' })
vim.keymap.set('n', '<C-n>', '<C-d>zz', { desc = 'Page Down.' })

-- Keep search in the middle of the screen.
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Page Up.' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Page Up.' })

-- Delete char without copying it to clipboard
vim.keymap.set('n', 'x', '"_x', { desc = 'Delete character.' })

-- Toggle Neotree
vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'Neotree Reveal' })

-- Lazygit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { desc = 'Open LazyGit' })

-- Quit without saving
vim.keymap.set('n', 'Q', '<Cmd>q!<CR>', { desc = 'Close without saving.' })

-- vim: ts=2 sts=2 sw=2 et
