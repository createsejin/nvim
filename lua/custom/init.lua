local opt = vim.opt
opt.colorcolumn = "90"
opt.guicursor =
"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
opt.shell = "/usr/bin/zsh"
opt.relativenumber = true
opt.encoding = "UTF-8"
opt.scrolloff = 9
opt.guifont = "Source Code Pro,SauceCodePro Nerd Font:h14"
opt.linespace = 0
vim.g.neovide_scale_factor = 1.0
vim.g.neovide_font_hinting = 'none'
vim.g.rust_recommended_style = false
vim.cmd("let g:netrw_liststyle = 3")
opt.wrap = false
vim.cmd([[command! SearchSession lua require('auto-session.session-lens').search_session()]])
vim.cmd('command! Glog Git log --graph')
vim.cmd([[autocmd BufEnter * file]])
vim.g.copilot_enabled = false
vim.cmd([[
  function! Arg_number_list()
    let l:args = argv()
    let l:max_len = len(len(l:args))
    for l:i in range(len(l:args))
      let l:prefix = l:i == argidx() ? '> ' : ': '
      echo printf('%' . l:max_len . 'd%s%s', l:i + 1, l:prefix, l:args[l:i])
    endfor
  endfunction
]])
