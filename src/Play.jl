module Play

end

using DataFrames

using BioLab

function tabulate(st)

    BioLab.DataFrame.make([
        split(li, "\t") for li in split(st, "\n", keepempty = false) if !startswith(li, "#")
    ])

end
