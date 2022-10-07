project('Embedded Artistry libc',
	'c',
	default_options : [
		'c_std=c11'
	],
	license: 'MIT',
	meson_version: '>=0.56.0',
	version: '1.0')

###############
# Subprojects #
###############

printf_subproject = subproject('printf')
libprintf_dep = printf_subproject.get_variable('libprintf_dep')
printf_includes = printf_subproject.get_variable('printf_includes')

openlibm_subproject = subproject('openlibm')
openlibm_dep = openlibm_subproject.get_variable('openlibm_dep')
openlibm_includes = openlibm_subproject.get_variable('openlibm_includes')

cmocka_subproject = subproject('cmocka')
cmocka_dep = dependency('cmocka', required: false, fallback: ['cmocka', 'cmocka_dep'])

subdir('src')
subdir('test')