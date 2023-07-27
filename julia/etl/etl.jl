function transform(input::AbstractDict)
    Dict(lowercase(letter) => key for key in keys(input) for letter in input[key])
end

