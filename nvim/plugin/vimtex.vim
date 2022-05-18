"function! SetServerName()
"  if has('win32')
"    let nvim_server_file = $TEMP . "/curnvimserver.txt"
"  else
"    let nvim_server_file = "/tmp/curnvimserver.txt"
"  endif
"  let cmd = printf("echo %s > %s", v:servername, nvim_server_file)
"  call system(cmd)
"endfunction
"
"augroup vimtex_common
"    autocmd!
"    autocmd FileType tex call SetServerName()
"augroup END


let g:vimtex_compiler_latexmk = {
            \ 'background' : 1,
            \ 'callback' : 1,
            \ 'continuous' : 0,
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \   '-verbose',
            \   '-bibtex',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}
let g:tex_conceal = ''
let g:latex_fold_preamble = 1
let g:latex_quickfix_mode = 0
let g:vimtex_syntax_enable = 1
let g:vimtex_quickfix_autoclose_after_keystrokes = 2     
let g:vimtex_complete_ignore_case = 1
let g:vimtex_complete_smart_case = 1
let g:vimtex_complete_close_braces = 1


""config for Skim in Mac
"let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
"let g:vimtex_view_method = 'skim'
"let g:vimtex_view_general_options = '-r @line @pdf @tex'

"" config for Zathura

let g:vimtex_view_method = 'zathura'    
let g:vimtex_compiler_progname = 'nvr'    
let g:tex_flavor = "latex"
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'    

"augroup vimtex_mac
"    autocmd!
"    autocmd User VimtexEventCompileSuccess call UpdateSkim()
"augroup END
"
"function! UpdateSkim() abort
"    let l:out = b:vimtex.out()
"    let l:src_file_path = expand('%:p')
"    let l:cmd = [g:vimtex_view_general_viewer, '-r']
"
"    if !empty(system('pgrep Skim'))
"    call extend(l:cmd, ['-g'])
"    endif
"
"    call jobstart(l:cmd + [line('.'), l:out, l:src_file_path])
"endfunction

