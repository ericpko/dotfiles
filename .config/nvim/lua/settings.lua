-- Settings
vim.g.mapleader = ","
local opt = vim.opt

-- Color theme
-- vim.g.colors_name = 'nord'
require('nord').set()
require('lualine').setup {
   options = {
      -- options ...
      theme = 'nord'
   }
}


opt.expandtab = true                -- Use spaces instead of tabs
opt.shiftwidth = 3                  -- Size of indent
opt.softtabstop = 3                 -- 
opt.tabstop = 3                     -- Number of spaces tabs count for
opt.smartindent = true              -- Insert indents automatically
opt.shiftround = true               -- Round the indent
opt.syntax = 'on'
opt.completeopt='menuone,noinsert,noselect'
opt.hidden = true                   -- Enable background buffers
opt.dir = '/tmp'
opt.joinspaces = false              -- No double spaces with join
opt.list = true                     -- Show some invisible characters
opt.number = true                   -- Show line numbers
opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 7                   -- Lines of context
opt.sidescrolloff = 8               -- Columns of context
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.termguicolors = true            -- True color support
opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
opt.wrap = false                    -- Disable line wrap
opt.ignorecase = true               -- Ignore case
opt.smartcase = true                -- Do not ignore case with capitals
opt.hlsearch = true                 -- Highlight all search results
opt.incsearch = true                -- Highlight as you type
-- UI settings
opt.colorcolumn = "100"
opt.cursorline = true
opt.mouse = "a"
opt.title = true
opt.background = "dark"
opt.spell = false
