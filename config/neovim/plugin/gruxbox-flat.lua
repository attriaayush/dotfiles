vim.g.gruvbox_flat_style = "hard"
vim.g.gruvbox_dark_sidebar = true
vim.g.gruvbox_dark_float = true

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.gruvbox_colors = { hint = "orange", error = "#ff0000" }

-- Change the TabLineSel highlight group (used by barbar.nvim) to the "orange" color
vim.g.gruvbox_theme = { TabLineSel = { bg = "blue" } }

-- Load the colorscheme
vim.cmd[[colorscheme gruvbox-flat]]
