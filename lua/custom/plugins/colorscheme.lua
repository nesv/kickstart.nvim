return {
  'slugbyte/lackluster.nvim',
  lazy = false,
  priority = 1000,
  init = function()
    vim.opt.background = 'dark'
    vim.cmd.colorscheme 'lackluster'
  end,
}
