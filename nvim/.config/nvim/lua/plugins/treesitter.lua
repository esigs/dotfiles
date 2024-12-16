return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Run `:TSUpdate` after installing or updating the plugin
    event = { "BufReadPost", "BufNewFile" }, -- Load treesitter only when needed
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = "all", -- Install parsers for all supported languages
        highlight = {
          enable = true, -- Enable syntax highlighting
        },
        indent = {
          enable = true, -- Enable indentation
        },
      })
    end,
  },
}
