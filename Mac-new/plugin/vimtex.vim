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
            \ 'aux_dir': 'aux',
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

"let g:vimtex_view_method = 'skim'    
let g:vimtex_view_method = 'sioyek'    
"let g:vimtex_view_method = 'texshop'    
"let g:vimtex_view_skim_sync = 1 
"let g:vimtex_view_skim_activate = 1 
"let g:vimtex_view_automatic = 0
"let g:vimtex_view_texshop_activate = 1

"" let g:vimtex_compiler_progname = 'nvr'    
let g:tex_flavor = "latex"
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'    


