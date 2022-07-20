# `Python_jll.jl` (v3.8.8+0)

[![deps](https://juliahub.com/docs/Python_jll/deps.svg)](https://juliahub.com/ui/Packages/Python_jll/vTS36?page=2)

This is an autogenerated package constructed using [`BinaryBuilder.jl`](https://github.com/JuliaPackaging/BinaryBuilder.jl).

The originating [`build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/blob/360423b215634786d5af25d81642c3caa0e02d25/P/Python/build_tarballs.jl) script can be found on [`Yggdrasil`](https://github.com/JuliaPackaging/Yggdrasil/), the community build tree.

## Bug Reports

If you have any issue, please report it to the Yggdrasil [bug tracker](https://github.com/JuliaPackaging/Yggdrasil/issues).

## Documentation

For more details about JLL packages and how to use them, see `BinaryBuilder.jl` [documentation](https://docs.binarybuilder.org/stable/jll/).

## Sources

The tarballs for `Python_jll.jl` have been built from these sources:

* compressed archive: https://www.python.org/ftp/python/3.8.8/Python-3.8.8.tar.xz (SHA256 checksum: `7c664249ff77e443d6ea0e4cf0e587eae918ca3c48d081d1915fe2a1f1bcc5cc`)
* files in directory, relative to originating `build_tarballs.jl`: [`./bundled`](https://github.com/JuliaPackaging/Yggdrasil/tree/360423b215634786d5af25d81642c3caa0e02d25/P/Python/bundled)

## Platforms

`Python_jll.jl` is available for the following platforms:

* `macOS aarch64` (`aarch64-apple-darwin`)
* `Linux aarch64 {libc=glibc}` (`aarch64-linux-gnu`)
* `Linux aarch64 {libc=musl}` (`aarch64-linux-musl`)
* `Linux armv6l {call_abi=eabihf, libc=glibc}` (`armv6l-linux-gnueabihf`)
* `Linux armv6l {call_abi=eabihf, libc=musl}` (`armv6l-linux-musleabihf`)
* `Linux armv7l {call_abi=eabihf, libc=glibc}` (`armv7l-linux-gnueabihf`)
* `Linux armv7l {call_abi=eabihf, libc=musl}` (`armv7l-linux-musleabihf`)
* `Linux i686 {libc=glibc}` (`i686-linux-gnu`)
* `Linux i686 {libc=musl}` (`i686-linux-musl`)
* `Linux powerpc64le {libc=glibc}` (`powerpc64le-linux-gnu`)
* `macOS x86_64` (`x86_64-apple-darwin`)
* `Linux x86_64 {libc=glibc}` (`x86_64-linux-gnu`)
* `Linux x86_64 {libc=musl}` (`x86_64-linux-musl`)
* `FreeBSD x86_64` (`x86_64-unknown-freebsd`)

## Dependencies

The following JLL packages are required by `Python_jll.jl`:

* [`Bzip2_jll`](https://github.com/JuliaBinaryWrappers/Bzip2_jll.jl)
* [`Expat_jll`](https://github.com/JuliaBinaryWrappers/Expat_jll.jl)
* [`Libffi_jll`](https://github.com/JuliaBinaryWrappers/Libffi_jll.jl)
* [`OpenSSL_jll`](https://github.com/JuliaBinaryWrappers/OpenSSL_jll.jl)
* [`XZ_jll`](https://github.com/JuliaBinaryWrappers/XZ_jll.jl)
* [`Zlib_jll`](https://github.com/JuliaBinaryWrappers/Zlib_jll.jl)

## Products

The code bindings within this package are autogenerated from the following `Products`:

* `LibraryProduct`: `libpython`
* `ExecutableProduct`: `python`
