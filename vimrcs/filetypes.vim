""""""""""""""""""""""""""""""""
""""""""""""RDBDS"""""""""""""""
""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.rdbds set filetype=sql


"""""""""""""""""""""""""""""""
"""""""""""""FTL"""""""""""""""
"""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.ftl set filetype=html

"""""""""""""""""""""""""""""""
"""""""""""GO LANG"""""""""""""
"""""""""""""""""""""""""""""""
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap gd <Plug>(go-def-tab)
