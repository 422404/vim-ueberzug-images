- Put display_image.sh into your $HOME.
- Put images.vim into $HOME/.vim/autoload/
- Append the following code into your .vimrc

```vim
augroup images
    autocmd BufRead *.png,*.jpg,*.bmp call images#DisplayImageV1()
augroup END
```
