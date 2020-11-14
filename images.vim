" BufRead
" BufWinEnter
" BufWinLeave
" BufUnload
" BufHidden
" VimResized
" FileType

" Version 1
function! images#DisplayImageV1()
    let l:winId   = win_getid()
    let l:winInfo = getwininfo(l:winId)[0]
    let l:x = l:winInfo.wincol - 1
    let l:y = l:winInfo.winrow - 1
    let l:width  = l:winInfo.width
    let l:height = l:winInfo.height + 1
    let l:filePath = expand("%:p")

    normal! ggdG
    setlocal nonumber
    setlocal norelativenumber
    setlocal buftype=nofile
    redraw

    execute "!~/display_image.sh ". l:x." ".l:y." ".l:width." ".l:height." ".l:filePath
    bdelete
endfunction

