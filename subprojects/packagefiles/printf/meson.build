project('printf-patch',
	['c', 'cpp'],
	default_options : [
		'cpp_std=c++11',
	],
)

#############################
# Printf Dependency Targets #
#############################

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

libprintf_native = static_library(
	'printf_native',
    printf_files,
    include_directories: printf_includes,
    native: true
)

libprintf_native_dep = declare_dependency(
	include_directories: printf_includes,
	link_with: libprintf_native,
)

subdir('test')
