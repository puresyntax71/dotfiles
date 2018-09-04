if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  autocmd BufRead,BufNewFile *.install setfiletype php.drupal
  autocmd BufRead,BufNewFile *.test setfiletype php.drupal
  autocmd BufRead,BufNewFile *.inc setfiletype php.drupal
  autocmd BufRead,BufNewFile *.module setfiletype php.drupal
  autocmd BufRead,BufNewFile *.profile setfiletype php.drupal
  autocmd BufRead,BufNewFile *.theme setfiletype php.drupal

  autocmd BufRead,BufNewFile *.twig setfiletype jinja
augroup END
