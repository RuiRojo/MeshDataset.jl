using MeshDataset
using Documenter

DocMeta.setdocmeta!(MeshDataset, :DocTestSetup, :(using MeshDataset); recursive=true)

makedocs(;
    modules=[MeshDataset],
    authors="Rui Rojo <rui.rojo@gmail.com> and contributors",
    repo="https://gitlab.com/julia-priv/MeshDataset.jl/blob/{commit}{path}#{line}",
    sitename="MeshDataset.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://julia-priv.gitlab.io/MeshDataset.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
