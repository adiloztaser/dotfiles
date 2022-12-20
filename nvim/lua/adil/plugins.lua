vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use({
      'morhetz/gruvbox',
      as = 'gruvbox',
      config = function()
          vim.cmd('colorscheme gruvbox')
      end
  })

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use('tpope/vim-fugitive')

  use {'neoclide/coc.nvim', branch = 'release'}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  }

  use('f-person/git-blame.nvim')
  use('lewis6991/gitsigns.nvim')
  use('dsawardekar/wordpress.vim')
  use('editorconfig/editorconfig-vim')

  use('lukas-reineke/indent-blankline.nvim')

  use('othree/html5.vim')
  use('dyng/ctrlsf.vim')
  use('folke/lsp-colors.nvim')
  use('nvim-lualine/lualine.nvim')
  use('nvim-lua/plenary.nvim')
  use('folke/todo-comments.nvim')

  use('kyazdani42/nvim-web-devicons')
  use('romgrk/barbar.nvim')
end)
