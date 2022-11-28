module Play

end

using DataFrames

using BioinformaticsCore

function tabulate(st)

    BioinformaticsCore.DataFrame.make([
        split(li, "\t") for li in split(st, "\n", keepempty = false) if !startswith(li, "#")
    ])

end
