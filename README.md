# Introduction to Julia (packages)

This is a presentation I made recently as a part of show and tell among my
pod mates. This covers up some of the basic functionality of the packages and
creates an interactive env for the viewers to have a quick look over the julia
syntax and the overall working, features of the package.

## Running the notebook

Activate the project environement by running this in Julia REPL:

```sh
julia> using Pkg

julia> Pkg.activate(".")
 Activating environment at `~/abhishalya/intro_to_julia/Project.toml`

julia> Pkg.instantiate()
```

Finally run the notebook using Pluto:

```sh
julia> import Pluto

julia> Pluto.run()
```

Hop over to http://localhost:1234 and open the notebook :)
