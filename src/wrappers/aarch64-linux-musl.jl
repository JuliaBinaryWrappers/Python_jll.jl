# Autogenerated wrapper script for Python_jll for aarch64-linux-musl
export libpython, python

using Expat_jll
using Bzip2_jll
using Libffi_jll
using Zlib_jll
using XZ_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libpython`
const libpython_splitpath = ["lib", "libpython3.8.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpython_path = ""

# libpython-specific global declaration
# This will be filled out by __init__()
libpython_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpython = "libpython3.8.so.1.0"


# Relative path to `python`
const python_splitpath = ["bin", "python3"]

# This will be filled out by __init__() for all products, as it must be done at runtime
python_path = ""

# python-specific global declaration
function python(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(python_path)
    end
end


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

    global libpython_path = normpath(joinpath(artifact_dir, libpython_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpython_handle = dlopen(libpython_path)
    push!(LIBPATH_list, dirname(libpython_path))

    global python_path = normpath(joinpath(artifact_dir, python_splitpath...))

    push!(PATH_list, dirname(python_path))
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

