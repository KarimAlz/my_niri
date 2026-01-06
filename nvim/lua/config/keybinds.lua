vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex, {desc = 'Open netrw'})    -- open netrw
vim.keymap.set("n", "<leader>w<CR>", vim.cmd.w, {desc = 'Write file'}) -- write
vim.keymap.set("n", "<leader>q", ":q!<CR>", {desc = 'Force quit'})     -- force quit
vim.keymap.set("n", "<leader>wq", vim.cmd.wq, {desc = 'Write file and quit'})   -- write and quit

vim.keymap.set("n", "<leader>M", vim.cmd.Mason, {desc = 'Open Mason'})
vim.keymap.set("n", "<leader>L", vim.cmd.Lazy, {desc = 'Open Lazy'})

vim.keymap.set("n", "<leader>m", vim.cmd.Dashboard, {desc = 'Open Dashboard'})

local opts = { noremap = true, silent = true}
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts, {desc = 'Go to definition'})
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts, {desc = 'Go to references'})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts, {desc = 'Code action "not sure what it does"'})
