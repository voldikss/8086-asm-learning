" my filetype file
if exists("did_load_my_filetypes")
  finish
endif

augroup filetypedetect
  autocmd BufNewFile,BufRead *.asm             setfiletype masm
  autocmd BufNewFile,BufRead *.masm            setfiletype masm
augroup END

let did_load__my_filetypes=1
