" Function for toggling options
command! -nargs=+ MapToggle call s:MapToggle(<f-args>)
function! s:MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
endfunction

MapToggle sl list
MapToggle sh hlsearch
MapToggle sw wrap
MapToggle ss spell
MapToggle sc cursorcolumn