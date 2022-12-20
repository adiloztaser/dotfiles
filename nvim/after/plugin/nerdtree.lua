vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>", { silent = true })
vim.keymap.set("n", "<C-n>", ":NvimTreeOpen<CR>", { silent = true })

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

