"
" Convert a number to a string, the contents of which depend on the number's
" factors.
"
"   - If the number has 3 as a factor, output 'Pling'.
"   - If the number has 5 as a factor, output 'Plang'.
"   - If the number has 7 as a factor, output 'Plong'.
"   - If the number does not have 3, 5, or 7 as a factor, just pass
"     the number's digits straight through.
"
" Example:
"
"   :echo Raindrops(15)
"   PlingPlang
"
function! Raindrops(number) abort
  let message = ""

  if (a:number % 3) == 0
    let message = "Pling"
  endif

  if (a:number % 5) == 0
    let message = message . "Plang"
  endif

  if (a:number % 7) == 0
    let message = message . "Plong"
  endif

  if message == ""
    let message = string(a:number)
  endif

  return message
endfunction
