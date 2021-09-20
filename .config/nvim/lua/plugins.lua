require('packer').startup(function()
   -- Packer can manage itself
   use {'wbthomason/packer.nvim'}
   -- Color theme
   use {'dracula/vim', as = 'dracula'}
   use {'shaunsingh/nord.nvim'}
   -- Lualine (Bottom bar i.e. shows Normal mode etc.)
   use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
   }
   -- LSP (Language support)
   use {'neovim/nvim-lspconfig'}
   -- Syntax highlighting
   use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
   }
   use {'nvim-lua/completion-nvim'}
   use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
   }
   use {'norcalli/nvim-colorizer.lua'}
   use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
   use {'lukas-reineke/indent-blankline.nvim'}
   use {'kosayoda/nvim-lightbulb'}
end)


-- Auto run :PackerCompile whenever plugins.lua is updated
vim.cmd([[
   augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
   augroup end
]])


--------- LSP config keybinds and completion
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

   -- Enable completion triggered by <c-x><c-o>
   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

   -- Mappings.
   local opts = { noremap=true, silent=true }

   -- See `:help vim.lsp.*` for documentation on any of the below functions
   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
   buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
   buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
   buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
   buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
   buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
   buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
   buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
   buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
   buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
   buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches:
-- local servers = { 'pyright', 'rust_analyzer', 'tsserver' }
-- for _, lsp in ipairs(servers) do
--   nvim_lsp[lsp].setup {
--     on_attach = on_attach,
--     flags = {
--       debounce_text_changes = 150,
--     }
--   }
-- end


-- Use completion-nvim in every buffer:
vim.cmd [[autocmd BufEnter * lua require'completion'.on_attach()]]

-- Lightbulb helper
require('nvim-lightbulb').update_lightbulb()
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]


-- Treesitter
require('nvim-treesitter.configs').setup {
   ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
   -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
   highlight = {
      enable = true,              -- false will disable the whole extension
      -- disable = { "c", "rust" },  -- list of language that will be disabled
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
   },
}


require('colorizer').setup()
require("bufferline").setup{}

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
