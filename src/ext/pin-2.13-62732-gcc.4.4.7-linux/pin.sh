#! /bin/bash

# get the directory of this script
origin=$0
# If it does not begin with /, then it is relative to the current working directory
if [ "${origin:0:1}" != "/" ]; then
    origin=$PWD/$origin
fi
origin=`dirname "$origin"`

# Libraries are found relative to origin
lib_base="$origin"
elf_libs="$lib_base/ia32/runtime:$lib_base/intel64/runtime"
if [ `$origin/source/tools/Utils/testGccVersion /usr/bin/gcc` -eq 1 ]
then
    cpp_libs="$lib_base/ia32/runtime/cpplibs:$lib_base/intel64/runtime/cpplibs"
else
    cpp_libs=
fi
glibc_libs="$lib_base/ia32/runtime/glibc:$lib_base/intel64/runtime/glibc"
# vm/tool need elf, cpp and glibc libs
export PIN_VM_LD_LIBRARY_PATH=$elf_libs:$cpp_libs:$glibc_libs:$LD_LIBRARY_PATH

# If variables we are going to modify are set, save the value. They will be restored 
# after the injector starts
export PIN_LD_RESTORE_REQUIRED=t
if [ -n "${LD_LIBRARY_PATH+x}" ]
then
    export PIN_APP_LD_LIBRARY_PATH=$LD_LIBRARY_PATH
fi

if [ -n "${LD_ASSUME_KERNEL+x}" ]
then
    export PIN_APP_LD_ASSUME_KERNEL=$LD_ASSUME_KERNEL
fi
unset LD_ASSUME_KERNEL

if [ -n "${LD_BIND_NOW+x}" ]
then
    export PIN_APP_LD_BIND_NOW=$LD_BIND_NOW
fi

if [ -n "${LD_PRELOAD+x}" ]
then
    export PIN_APP_LD_PRELOAD=$LD_PRELOAD
fi
unset LD_PRELOAD

# injector just needs elf and cpp libs, it cannot use glibc libs
export LD_LIBRARY_PATH=$elf_libs:$cpp_libs:$LD_LIBRARY_PATH

if [ $(arch) == "x86_64" ]
then
    exec "$origin"/intel64/bin/pinbin -p32 "$origin"/ia32/bin/pinbin "${@}"
else
    exec "$origin"/ia32/bin/pinbin -p64 "$origin"/intel64/bin/pinbin "${@}"
fi
