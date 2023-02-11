require('telescope').setup{ 
defaults = { 
    file_ignore_patterns = {"node_modules"} 
    } 
}
require("telescope").load_extension("refactoring")
vim.api.nvim_set_keymap(
	"v",
	"<leader>rr",
	"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
	{ noremap = true }
)


