# Autogenerated wrapper script for Python_jll for x86_64-unknown-freebsd
export libpython, python

using Expat_jll
using Bzip2_jll
using Libffi_jll
using Zlib_jll
using XZ_jll
using OpenSSL_jll
JLLWrappers.@generate_wrapper_header("Python")
JLLWrappers.@declare_library_product(libpython, "libpython3.8.so.1.0")
JLLWrappers.@declare_executable_product(python)
function __init__()
    JLLWrappers.@generate_init_header(Expat_jll, Bzip2_jll, Libffi_jll, Zlib_jll, XZ_jll, OpenSSL_jll)
    JLLWrappers.@init_library_product(
        libpython,
        "lib/libpython3.8.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        python,
        "bin/python3",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()