#!/bin/sh
gcc -E "-I${SRCROOT}/config" "-I${SRCROOT}/../include" "-I${SRCROOT}/../kpx_cpu/include" "-I${SRCROOT}/../kpx_cpu/src" "-I${SRCROOT}/../Unix" -DUSE_JIT -DGENEXEC "${SRCROOT}/../kpx_cpu/src/cpu/ppc/ppc-decode.cpp" | perl "${SRCROOT}/../kpx_cpu/src/cpu/ppc/genexec.pl" > "${SRCROOT}/../Unix/ppc-execute-impl.cpp"

