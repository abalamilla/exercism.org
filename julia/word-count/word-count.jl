function wordcount(sentence)
    m = getproperty.(eachmatch(r"(\w+'?)?\w+|\d+", lowercase(sentence)), :match)
    Dict((i => count(==(i), m)) for i in unique(m))
end
