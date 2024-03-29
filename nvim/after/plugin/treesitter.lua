require'nvim-treesitter.configs'.setup {
  ensure_installed = { "help", "lua", "php", "css", "scss", "javascript", "html", "json", "typescript", "markdown", "dockerfile", "bash", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
}
