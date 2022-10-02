project('libprintf',
	'c'
)

printf_files = files('printf.c')
printf_includes = include_directories('.', is_system: true)

libprintf = static_library(
	'printf',
    printf_files,
    include_directories: printf_includes,
)

libprintf_dep = declare_dependency(
	include_directories: printf_includes,
	link_with: libprintf,
)
