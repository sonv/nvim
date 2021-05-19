set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact','substring','fuzzy']
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_enable_auto_popup = 0
imap <silent> <c-p> <Plug>(completion_trigger)
