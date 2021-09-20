
require('packer').startup(function()
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   -- Color theme
   use {'dracula/vim', as = 'dracula'}
   use {'shaunsingh/nord.nvim'}

   -- Lualine (Bottom bar i.e. shows Normal mode etc.)
   use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
   }

   -- LSP (Language support)
   use 'neovim/nvim-lspconfig'

   -- Syntax highlighting
   use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
   }

   -- Autocompletion
   use 'nvim-lua/completion-nvim'

   -- Fuzzy Finder
   use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } }
   }

   -- Shows css and #a42fff colors
   use 'norcalli/nvim-colorizer.lua'

   -- Bufferline shows what buffers are open (Tabs at top)
   use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

   -- Visually display indents
   use 'lukas-reineke/indent-blankline.nvim'

   use 'kosayoda/nvim-lightbulb'

end)

