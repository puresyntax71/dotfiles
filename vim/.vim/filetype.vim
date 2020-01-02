if exists("did_load_filetypes")
  finish
endif

function DetectGoHtmlTmpl()
    if expand('%:e') == "html" && search("{{") != 0
        set filetype=gohtmltmpl 
    endif
endfunction

augroup filetypedetect
  autocmd! BufRead,BufNewFile *.install setfiletype php.drupal
  autocmd! BufRead,BufNewFile *.test setfiletype php.drupal
  autocmd! BufRead,BufNewFile *.inc setfiletype php.drupal
  autocmd! BufRead,BufNewFile *.module setfiletype php.drupal
  autocmd! BufRead,BufNewFile *.profile setfiletype php.drupal
  autocmd! BufRead,BufNewFile *.theme setfiletype php.drupal

  autocmd! BufRead,BufNewFile *.twig setfiletype jinja

  autocmd! BufRead,BufNewFile *.vue,*.wpy setfiletype vue
  autocmd! BufRead,BufNewFile *.html call DetectGoHtmlTmpl()
augroup END
