local opt = vim.opt
opt.colorcolumn = "90"
opt.guicursor =
"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
opt.shell = "/usr/bin/zsh"
opt.relativenumber = true
opt.encoding = "UTF-8"
opt.scrolloff = 9
opt.guifont = "SauceCodePro Nerd Font:h12"
vim.g.rust_recommended_style = false
vim.cmd("let g:netrw_liststyle = 3")
opt.wrap = false
vim.cmd([[command! SearchSession lua require('auto-session.session-lens').search_session()]])
vim.cmd('command! Glog Git log --graph')
vim.g.copilot_enabled = false
vim.cmd [[
  autocmd BufEnter * args
]]
