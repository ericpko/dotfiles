-- Options
local opt = vim.opt

opt.expandtab = true                -- Use spaces instead of tabs
opt.shiftwidth = 3                  -- Size of indent
opt.softtabstop = 3                 -- 
opt.tabstop = 3                     -- Number of spaces tabs count for
opt.smartindent = true              -- Insert indents automatically
opt.shiftround = true               -- Round the indent

opt.hidden = true                   -- Enable background buffers
opt.ignorecase = true               -- Ignore case
opt.smartcase = true                -- Do not ignore case with capitals
opt.joinspaces = false              -- No double spaces with join
opt.list = true                     -- Show some invisible characters
opt.number = true                   -- Show line numbers
opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 5                   -- Lines of context
opt.sidescrolloff = 8               -- Columns of context
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.termguicolors = true            -- True color support
opt.wildmode = {'list', 'longest'}  -- Command-line completion mode
opt.wrap = false                    -- Disable line wrap

-- UI settings
opt.colorcolumn = "100"
opt.cursorline = true
opt.mouse = "a"
opt.title = true
opt.background = "dark"
opt.spell = false


-- Color theme
-- vim.g.colors_name = 'nord'
require('nord').set()
require('lualine').setup {
   options = {
      -- options ...
      theme = 'nord'
   }
}


require('bufferline').setup{}

-- Tree-sitter
require('nvim-treesitter.configs').setup {
   ensure_installed = 'maintained',
   highlight = { enable = true }
}

-- LSP
require('lspconfig')

-- Indent blanklines
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF blend=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD blend=nocombine]]
require("indent_blankline").setup {
   space_char_blankline = " ",
   char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
   },
}


-- Lightbulb helper
require('nvim-lightbulb').update_lightbulb()
