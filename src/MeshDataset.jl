module MeshDataset

using DataDeps

export meshnames, meshfile

# I need to know the name, the extension, the ipfs hash, and optionally the hash
# It should register it and append it to the list of available meshes



function __init__()

    global meshes = []
    function register_mesh(name, extension, ipfshash, hash=nothing; description="")
        push!(meshes, name)
        register(DataDep("mesh-"*name,
            description,
            "https://ipfs.io/ipfs/"*ipfshash,
            hash;
            post_fetch_method=(x -> mv(x, name*"."*extension))
        ))
    end
    register_mesh( "SubmarinoBetssi_C_77220", "lmesh", "QmTYL4TRrQfHmJNSnaWjRkCEBxHNFUyMZ64Kz7EcbKt8UG") 

    register_mesh( "Esfera_5034", "lmesh", "QmVZ7wfxv6MLgcBWqUPDmRjEJQnufmyhDYDkWddw81C9Ft") 
    register_mesh( "Esfera_982874", "lmesh", "QmZMi8Jubjn8b2dd2Dzo143LJsXP2hFTSpFBYVRMoXNtoL") 
    register_mesh( "Esfera_001_2450", "lmesh", "QmXyvKtGBUfnyMzRmZpKW47DVQ97rpAKgc2fB4wskPtAJj") 
    register_mesh( "Esfera_0.01_171462", "lmesh", "QmXYDWTPth6QRMDjn42zAryDuURYiabTVAAea4hHwUzKma")
    register_mesh( "Esfera_320", "lmesh", "") 

    register_mesh( "Esfera_007_2450", "lmesh", "QmXwSWXoPaKXyy5kxiudRVVKnLLTgAJKEUZCjECEwAEh5E") 
    register_mesh( "Esfera_007_5120", "lmesh", "QmcC1KepFSSXrYCvBUD6g5L3DNyimu8obMQPP7bMgJBQmX") 
    register_mesh( "Esfera_10964", "lmesh", "QmXxUPRAjrCaGqhr3xgsaqG7FX4kjHiXefmDhwBtv8Q9pF") 
    register_mesh( "Esfera_1532660", "lmesh", "QmaKFE9A25VXg7kPf8AU5MWLLeZ6a2NqLrvYttM8WYuYHp") 
    register_mesh( "Esfera_171462", "lmesh", "QmYHwSxjUonVvW2YSCSKsKr9JYnEzj66LUN624Eu95j7pC") 
    register_mesh( "Esfera_20220", "lmesh", "QmbaEvF1ihgchSixkK7PfAPFzuFxeuAYcLrH2WBGLambuL") 
    register_mesh( "Esfera_42472", "lmesh", "QmVbqfx1Ln5Ywiah6wyMSJ6d7mSZ4TfeEg7PCWFBR92po9") 

    register_mesh( "Esferoide_Test_Fluid_16938", "lmesh", "QmQe67Dg6CKvEAuwU2uhNtCdCJrwGjDuHNMS17EcSdgfSY") 
    register_mesh( "Esferoide_Test_Fluid_27798", "lmesh", "QmQ7ALEBFNNAaFPRKuX2L5XJzApaU8wvdWogxeXxnMSLAo") 

    register_mesh( "Esferoide_1_7_1495082", "lmesh", "") 
    register_mesh( "Esferoide_1_7_214908", "lmesh", "") 
    register_mesh( "Esferoide_1_7_341488", "lmesh", "") 
    register_mesh( "Esferoide_1_7_581518", "lmesh", "") 
    register_mesh( "Esferoide_1_7_64046", "lmesh", "") 

    register_mesh( "Fish_vejiga_smooth", "lmesh", "") 
    register_mesh( "Vejiga_11cm", "lmesh", "QmZq1Z8X9LSLwSHAQvFeuJqbmPomTNoWTRKQYrHfKaK5Xs", "cef2639d5a5e6376758e97bfe410f5703229f69102cdaf1556430747e47b308e") 
end

"""
    meshnames()

Return a vector with the identifier strings of every mesh in the database.
"""
meshnames() = meshes

"""
    meshfile(name::String)

Return the full local file path for the mesh identified by `name`.

It should be the case that `name` is in `meshnames()`.

If the data has never been requested in the local machine, you will be asked for
confirmation before download.
"""
meshfile(s) = first(readdir(@datadep_str("mesh-"*s); join=true))

end # module
