# MeshDataset

This is a restricted mirror of an private repository that provides streamlined access 
to meshes for internal use. Here, only a limited number of meshes are provided.

Meshes provided here are in a format that should be loaded and operated by the package [Meshes.jl](https://github.com/RuiRojo/Mesh.jl).

The mesh data should be automatically downloaded upon request through IPFS. If there's no copy available, it can be downloaded
manually from the `/data` folder in the `data` branch, and placed in the `DATADEPS_LOAD_PATH` folder as described in [DataDeps.jl](https://github.com/oxinabox/DataDeps.jl) documentation. On Linux, by default this could be placed in `~/.julia/datadeps/`.

The function `meshnames()` lists the available mesh string identifiers and `meshfile(meshid::String)` returns the path to the mesh file.

