-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- [[ Custom autocommands for filetypes ]]
local mygroup = vim.api.nvim_create_augroup('nesv', { clear = true })

-- Asciidoc
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.adoc',
  group = mygroup,
  command = 'setlocal tw=80 sts=2 sw=2 expandtab',
})
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'asciidoc',
  group = mygroup,
  command = 'setlocal tw=80 ts=2 sts=2 sw=2 expandtab',
})

-- Markdown
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.md',
  group = mygroup,
  command = 'setlocal tw=80 ts=2 sts=2 sw=2 expandtab',
})
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'markdown',
  group = mygroup,
  command = 'setlocal tw=80 ts=2 sts=2 sw=2 expandtab',
})

-- reStructured Text
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.rst',
  group = mygroup,
  command = 'setlocal tw=80 ts=2 sts=2 sw=2 expandtab',
})
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'rst',
  group = mygroup,
  command = 'setlocal tw=80 ts=2 sts=2 sw=2 expandtab',
})

-- mutt mail messages
vim.api.nvim_create_autocmd({ 'BufRead' }, {
  pattern = '/tmp/mutt-*',
  group = mygroup,
  command = 'setlocal tw=72',
})

-- JSON
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'json',
  group = mygroup,
  command = 'setlocal ts=2 sts=2 sw=2 expandtab',
})

-- YAML
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'yaml',
  group = mygroup,
  command = 'setlocal ts=2 sts=2 sw=2 expandtab',
})
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'yml',
  group = mygroup,
  command = 'setlocal ts=2 sts=2 sw=2 expandtab',
})

return {}
