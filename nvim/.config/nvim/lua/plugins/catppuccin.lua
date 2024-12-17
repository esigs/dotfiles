return {
  {
    "catppuccin/nvim",
    name = "catppuccin", -- Alias the plugin
    lazy = false,        -- Load during startup
    priority = 1000,     -- Ensure it loads before other plugins (important for themes)
    integrations = {
        treesitter = true,
            telescope = true
        },
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
