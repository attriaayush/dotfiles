local Terminal  = require('toggleterm.terminal').Terminal
local ghostie = Terminal:new({
  cmd = "ghostie",
  direction = "float",
  close_on_exit = true,
  float_opts = {
    border = "curved",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
})

function _ghostie_toggle()
  ghostie:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>z", "<cmd>lua _ghostie_toggle()<CR>", {noremap = true, silent = true})

