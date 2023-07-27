"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    all([ letter in lowercase(input) for letter in 'a':'z' ])
end

