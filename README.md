# Minimal Working CMake Template

## Getting Started
Install [CMake][cmake_install] and [Protocol Buffers v2][proto_install]. Then,

```bash
./build.sh
```

## Overview
CMake ~~sucks~~ is complicated. To someone inexperienced with CMake, simple
things are hard and hard things seem impossible. This repository is aimed to be
a minimal working CMake project with a couple of properties:

- Source code is divided between multiple directories, all of which are
  siblings of one another.
- All includes are relative to the root `src` directory. For example, `main.cc`
  says `#include "printer/printer.h"` not `#include "printer.h"`. This is
  similar to how includes are managed at Google.
- The program uses protocol buffers, and the protocol buffer source code is
  generated dynamically by CMake. You don't have to run `protoc` yourself!

## Resources
- https://github.com/shaochuan/cmake-protobuf-example

[cmake_install]: https://github.com/mwhittaker/vms/blob/master/cpp/install_cmake.sh
[proto_install]: https://github.com/mwhittaker/vms/blob/master/cpp/install_protobuf.sh
