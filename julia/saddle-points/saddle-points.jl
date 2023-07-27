function saddlepoints(M)
    candidates = [[findmax(row), findmin(col)] for row in eachrow(M), col in eachcol(M)]
    best_trees = [row[1] == col[1] ? true : false for (row, col) in candidates]
    Tuple.(findall(x -> x == true, best_trees))
end
