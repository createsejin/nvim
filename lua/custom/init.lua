local opt = vim.opt
opt.colorcolumn = "90"
opt.guicursor =
"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
opt.shell = "cmd"
opt.relativenumber = true
opt.encoding = "UTF-8"
opt.scrolloff = 9
opt.guifont = "Source Code Pro,SauceCodePro Nerd Font:h11.92"
-- opt.guifont = "SauceCodePro Nerd Font:h11.92"
vim.g.neovide_fullscreen = true
opt.linespace = 0
vim.g.neovide_scale_factor = 1.0
vim.g.neovide_font_hinting = 'none'
vim.g.rust_recommended_style = false
vim.cmd("let g:netrw_liststyle = 3")
opt.wrap = false
vim.cmd([[command! SearchSession lua require('auto-session.session-lens').search_session()]])
vim.cmd('command! Glog Git log --graph')
-- session command
vim.cmd('command! Se !ls --ignore=storage ~/se')
-- autocmd for argument number
vim.cmd([[autocmd BufEnter * file]])
vim.g.copilot_enabled = false
-- argument number list
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
function Mksession()
  vim.cmd('!ls --ignore=storage ~/se')
  vim.fn.setreg('r', 'mks! ~/se/')
  vim.api.nvim_feedkeys(':', 'n', true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-r>r', true, true, true), 'n', true)
end
function Source_session()
  vim.cmd('!ls --ignore=storage ~/se')
  vim.fn.setreg('r', 'so ~/se/')
  vim.api.nvim_feedkeys(':', 'n', true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-r>r', true, true, true), 'n', true)
end
function Mkview()
  vim.cmd('!ls view')
  vim.fn.setreg('r', 'mkvie! view/')
  vim.api.nvim_feedkeys(':', 'n', true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-r>r', true, true, true), 'n', true)
end
function Source_view()
  vim.cmd('!ls view')
  vim.fn.setreg('r', 'so view/')
  vim.api.nvim_feedkeys(':', 'n', true)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-r>r', true, true, true), 'n', true)
end

vim.cmd('autocmd BufEnter * silent! :iunabbrev <buffer> *')
vim.cmd('autocmd BufEnter *.rs silent! :iabbrev <buffer> #t #[test]')
vim.cmd('autocmd BufEnter *.rs silent! :iabbrev <buffer> #d #[allow(dead_code)]')

vim.keymap.set("n", "[v", function()
  require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })
