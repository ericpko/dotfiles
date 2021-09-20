-- Keybinds

-- local map = function(key)
--    -- get the extra options
--    local opts = {noremap = true}
--    for i, v in pairs(key) do
--      if type(i) == 'string' then opts[i] = v end
--    end
 
--    -- basic support for buffer-scoped keybindings
--    local buffer = opts.buffer
--    opts.buffer = nil
 
--    if buffer then
--      vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
--    else
--      vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
--    end
-- end

local function map(mode, lhs, rhs, opts)
   local options = {noremap = true}
   if opts then options = vim.tbl_extend('force', options, opts) end
   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map('i', 'jk', '<Esc>')
map('n', '<c-s>', ':w<CR>')
map('i', '<c-s>', '<Esc>:w<CR>a')
map('n', '<c-j>', '<c-w>j')
map('n', '<c-h>', '<c-w>h')
map('n', '<c-k>', '<c-w>k')
map('n', '<c-l>', '<c-w>l')

map('', '<leader>c', '"+y')       -- Copy to clipboard in normal, visual, select and operator modes
map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')  -- Make <C-w> undo-friendly

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
map('n', '<C-l>', '<cmd>noh<CR>')    -- Clear highlights
map('n', '<leader>o', 'm`o<Esc>``')  -- Insert a newline in normal mode

-- Telescope
map('n', 'ff', ':lua require"telescope.builtin".find_files()<CR>')
map('n', 'fg', ':lua require"telescope.builtin".live_grep()<CR>')
map('n', 'fb', ':lua require"telescope.builtin".buffers()<CR>')
map('n', 'fh', ':lua require"telescope.builtin".help_tags()<CR>')
