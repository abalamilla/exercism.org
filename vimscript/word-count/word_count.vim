"
" Given a phrase, return a dictionary containing the count of occurrences of
" each word.
"
" Example:
"
"   :echo WordCount('olly olly in come free')
"   {'olly': 2, 'come': 1, 'in': 1, 'free': 1}

function! Clean(str, regex) abort
  return substitute(a:str, a:regex, '\1', 'g')
endfunction

function! Helper(acc, word) abort
  let l:clean = Clean(a:word, '\W*\([a-zA-Z]\+''\?[a-zA-Z]\+\)\W*')

  if ! empty(a:word) 
    let l:value = get(a:acc, l:clean)
    let a:acc[l:clean] = l:value + 1
  endif

  return a:acc
endfunction

function! WordCount(phrase) abort
  let l:lower = tolower(a:phrase)
  let l:arr = split(l:lower, '[ \t\n,]')

  return reduce(l:arr, function('Helper'), {})

endfunction

