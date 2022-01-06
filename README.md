# Peacock
Enabling OCaml support for CMake
--

This project aims at enabling language support for OCaml compiler in CMake so that `OCaml` can be declared as a project language and the executatbles and libraries can be compiled directly using commands like `add_executable`,`add_library` etc.

## How to run
```
$ cd peacock
$ cmake -S src -B build
$ cd build
$ make
```

## Notes
- The general scheme of for implementation follows the following sketches:
    - [CMake's AddNewLanguage doc](https://github.com/Kitware/CMake/blob/master/Modules/CMakeAddNewLanguage.txt)
    - [Stack overflow response on adding a new language](https://stackoverflow.com/a/38296922/2602503)
- Variable `CMAKE_<LANG>_OUTPUT_EXTENSION_REPLACE` is not documented, I came to know about it via [this stack overflow response](https://stackoverflow.com/a/63273195/2602503), and as it turns out, it is used for compilers like ASM, Java etc in [CMake's modules](https://github.com/Kitware/CMake/tree/master/Modules).


## Versions for OCaml and CMake on my system 
- `OCaml`: `4.13.2`
- `CMake` : `3.22.1`
