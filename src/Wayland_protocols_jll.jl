module Wayland_protocols_jll

if isdefined(Base, :Experimental) && isdefined(Base.Experimental, Symbol("@optlevel"))
    @eval Base.Experimental.@optlevel 0
end                    
                        
if VERSION < v"1.3.0-rc4"
    # We lie a bit in the registry that JLL packages are usable on Julia 1.0-1.2.
    # This is to allow packages that might want to support Julia 1.0 to get the
    # benefits of a JLL package on 1.3 (requiring them to declare a dependence on
    # this JLL package in their Project.toml) but engage in heroic hacks to do
    # something other than actually use a JLL package on 1.0-1.2.  By allowing
    # this package to be installed (but not loaded) on 1.0-1.2, we enable users
    # to avoid splitting their package versions into pre-1.3 and post-1.3 branches
    # if they are willing to engage in the kinds of hoop-jumping they might need
    # to in order to install binaries in a JLL-compatible way on 1.0-1.2. One
    # example of this hoop-jumping being to express a dependency on this JLL
    # package, then import it within a `VERSION >= v"1.3"` conditional, and use
    # the deprecated `build.jl` mechanism to download the binaries through e.g.
    # `BinaryProvider.jl`.  This should work well for the simplest packages, and
    # require greater and greater heroics for more and more complex packages.
    error("Unable to import Wayland_protocols_jll on Julia versions older than 1.3!")
end

using Pkg, Pkg.BinaryPlatforms, Pkg.Artifacts, Libdl
import Base: UUID

# We put these inter-JLL-package API values here so that they are always defined, even if there
# is no underlying wrapper held within this JLL package.
const PATH_list = String[]
const LIBPATH_list = String[]

include(joinpath(@__DIR__, "wrappers", "any.jl"))

end  # module Wayland_protocols_jll
