#! /bin/bash
export CC="clang"
export CXX="clang++"
cmake -Hsrc -Bbin
cmake --build bin
