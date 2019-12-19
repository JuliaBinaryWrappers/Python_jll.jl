# Autogenerated wrapper script for Python_jll for i686-linux-gnu
using Expat_jll
using Bzip2_jll
using Libffi_jll
using Zlib_jll
using XZ_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Python")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Expat_jll.PATH_list, Bzip2_jll.PATH_list, Libffi_jll.PATH_list, Zlib_jll.PATH_list, XZ_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Expat_jll.LIBPATH_list, Bzip2_jll.LIBPATH_list, Libffi_jll.LIBPATH_list, Zlib_jll.LIBPATH_list, XZ_jll.LIBPATH_list,))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

