# Autogenerated wrapper script for Python_jll for aarch64-apple-darwin
export libpython, python

using Expat_jll
using Bzip2_jll
using Libffi_jll
using Zlib_jll
using XZ_jll
using OpenSSL_jll
JLLWrappers.@generate_wrapper_header("Python")
JLLWrappers.@declare_library_product(libpython, "@rpath/libpython3.8.dylib")
JLLWrappers.@declare_executable_product(python)
function __init__()
    JLLWrappers.@generate_init_header(Expat_jll, Bzip2_jll, Libffi_jll, Zlib_jll, XZ_jll, OpenSSL_jll)
    JLLWrappers.@init_library_product(
        libpython,
        "lib/libpython3.8.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        python,
        "bin/python3",
    )

    JLLWrappers.@generate_init_footer()
    ENV["PYTHONHOME"] = artifact_dir

end  # __init__()
