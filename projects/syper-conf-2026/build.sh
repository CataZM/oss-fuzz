#!/bin/bash -eu

# Compilar los fuentes
$CC $CFLAGS -c vuln_demo.c -o vuln_demo.o
$CC $CFLAGS -c vuln_demo_fuzzer.c -o vuln_demo_fuzzer.o

# Linkear el fuzzer
$CXX $CXXFLAGS $LIB_FUZZING_ENGINE \
  vuln_demo.o vuln_demo_fuzzer.o \
  -o $OUT/vuln_demo_fuzzer
