function partition(str, span, accum)
   push!(accum, SubString(str, 1:span))
   length(str) == span && return accum

   partition(chop(str, head=1, tail=0), span, accum)
end

function largest_product(str, span)
   (length(str) < span || span < 1) && throw(ArgumentError(str))

   toInt = x -> parse(Int32, x)
   series = partition(str, span, [])

   maximum([reduce(*, toInt.(s)) for s in split.(series, "")])
end
