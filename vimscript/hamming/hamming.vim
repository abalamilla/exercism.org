"
" This function takes two strings which represent strands and returns
" their Hamming distance.
"
" If the lengths of the strands don't match, throw this exception:
"
"     'left and right strands must be of equal length'
"
function! Distance(strand1, strand2)

  let strand1array = split(a:strand1, '\zs')
  let strand2array = split(a:strand2, '\zs')
  let count1 = strlen(a:strand1)
  let count2 = strlen(a:strand2)
  let distance = 0

  if count1 != count2
    throw "left and right strands must be of equal length"
  endif

  for idx in range(0, count1 - 1)
    if strand1array[idx] != strand2array[idx]
      let distance +=1
    endif
  endfor

  return distance

endfunction
