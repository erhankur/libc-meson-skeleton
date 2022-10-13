project('Embedded Artistry libc',
	['c', 'cpp'],
	default_options : [
		'warning_level=3',
		'werror=false',
		#'buildtype=custom',
		'debug=true',
		'optimization=g',
		# `build.*` options affect `native: true targets`
		# plain options affect `native: false` targets.
		'c_std=c11', 'build.c_std=c11',
		'cpp_std=c++17', 'build.cpp_std=c++17',
	],
	license: 'MIT',
	meson_version: '>=0.56.0',
	version: '1.0')


#################
# Build Options #
#################

disable_unimplemented_apis = get_option('hide-unimplemented-libc-apis')
enable_gnu_src = get_option('enable-gnu-extensions')
build_type = get_option('build')

if build_type == 'debug'
	debug_flags = ['-DDEBUG', '-DGDTOA_HOST_DEBUG', '-O0', '-g']
	if(meson.is_subproject())
		add_project_arguments(debug_flags, language: ['c', 'cpp'])
		add_project_arguments(debug_flags, language: ['c', 'cpp'], native: true)
	else
		add_global_arguments('-DDEBUG', '-DGDTOA_HOST_DEBUG', '-O0', '-g',
			language: ['c', 'cpp'])
	endif
elif build_type == 'release'
	if(meson.is_subproject())
		add_project_arguments('-DNDEBUG', '-O2', language: ['c', 'cpp'])
	else
		add_global_arguments('-DNDEBUG', '-O2', language: ['c', 'cpp'])
	endif
endif

###############
# Subprojects #
###############

printf_subproject = subproject('printf')
libprintf_dep = printf_subproject.get_variable('libprintf_dep')
libprintf_native_dep = printf_subproject.get_variable('libprintf_native_dep')
printf_includes = printf_subproject.get_variable('printf_includes')

openlibm_subproject = subproject('openlibm')
openlibm_dep = openlibm_subproject.get_variable('openlibm_dep')
openlibm_includes = openlibm_subproject.get_variable('openlibm_includes')

cmocka_subproject = subproject('cmocka')
cmocka_native_dep = dependency('cmocka', required: false, fallback: ['cmocka', 'cmocka_native_dep'])

# Global Project Flags and variables
native_c_compiler = meson.get_compiler('c', native: true)
host_c_compiler = meson.get_compiler('c', native: false)

project_arguments = [
	'-Wno-unknown-pragmas',
	'-Wno-nonnull',
	'-Wno-nonnull-compare'
]

add_project_arguments(
	host_c_compiler.get_supported_arguments(project_arguments),
	language: 'c'
)

add_project_arguments(
	native_c_compiler.get_supported_arguments(project_arguments),
	language: 'c',
	native: true
)

#######################
# Process Source Tree #
#######################

subdir('src')
subdir('test')

###############
# Run Targets #
###############

# From the root directory: ninja -C buildresults tree
run_target('tree',
	command: [
		'tools/tree.sh'
	]
)

run_target('clear-test-results',
	command: meson.project_source_root() + '/tools/clear_test_xml.sh'
)
