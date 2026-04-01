return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
  build = ":TSUpdate",
  config = function ()
    require("nvim-treesitter").install({
      "rust",
      "c",
      "c3",
      "javascript",
      "typescript",
      "tsx",
    })
  end
}
