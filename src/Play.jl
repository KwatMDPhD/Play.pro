module Play

end

using BenchmarkTools

using DataFrames

using OnePiece

function tabulate(st)

    OnePiece.DataFrame.make([
        split(li, "\t") for li in split(st, "\n", keepempty = false) if !startswith(li, "#")
    ])

end
