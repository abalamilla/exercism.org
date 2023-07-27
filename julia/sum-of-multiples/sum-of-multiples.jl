function sum_of_multiples(limit, factors)
    sum(unique([f > 0 && r % f == 0 && r for f in factors, r in minimum(factors; init=0):(limit - 1)]))
end
