if exists("did_load_filetypes")
  finish
endif

au BufNewFile,BufRead *.inc setf php
au BufNewFile,BufRead *.theme setf php
au BufNewFile,BufRead *.tpl setf smarty
