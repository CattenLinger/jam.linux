# Jam.Linux

## Introduction

This project aims to provide a small, portable, and minimalist GNU/Linux operaitng system, based on TinyCore Linux.

This repository offers a toolchain for building the vmlinuz and the initramfs.

## How to Build

- Clone this repo.
- Run `./bin/tc-build` at repo root.
- See output in `$BUILD_OUTPUT` (default `./dist`).

## Internal Toolkit

### Functions

| Function   | Description                                                                                                  |
| ---------- | ------------------------------------------------------------------------------------------------------------ |
| `DOWNLOAD` | Use `DOWNLOAD -O https://example.com/hello.jpg` to create a `hello.jpg` file in PWD. Like curl, but smarter. |
| `FETCH`    | Use `FETCH https://example.com/hello.json` to print response body to stdout.                                 |

### Variables

| Variable       | Description                                          |
| -------------- | ---------------------------------------------------- |
| `WORK_DIR`     | The initial working directory.                       |
| `BUILD_DIR`    | Where intermediate files are kept.                   |
| `ROOTFS`       | Rootfs directory for generating the initramfs image. |
| `BUILD_OUTPUT` | Find artifacts here.                                 |

## Live Patches (External Packages)

Maintain a file like `gcc.sh` in `/patches.live.d` to specify how a live patch (external package) shall be added to the initramfs.

## Copyright

Copyright (c) 2022 Catten Linger <https://github.com/cattenlinger>.

Released under the MIT license. ABSOLUTELY NO WARRANTY.

