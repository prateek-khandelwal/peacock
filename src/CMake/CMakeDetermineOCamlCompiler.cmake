find_program(
	CMAKE_OCaml_COMPILER
		NAMES "ocamlc"
		DOC "OCaml Bytecode Compiler"
)

mark_as_advanced(CMAKE_OCaml_COMPILER)

set(CMAKE_OCaml_SOURCE_FILE_EXTENSIONS ml;mli)
set(CMAKE_OCaml_OUTPUT_EXTENSION .cmo)
set(CMAKE_OCaml_COMPILER_ENV_VAR "OCAML")

configure_file(${CMAKE_CURRENT_LIST_DIR}/CMakeOCamlCompiler.cmake.in
  ${CMAKE_PLATFORM_INFO_DIR}/CMakeOCamlCompiler.cmake)
