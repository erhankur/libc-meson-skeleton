project('Embedded Artistry libc',
	'c',
	default_options : [
		'c_std=c11'
	],
	license: 'MIT',
	meson_version: '>=0.63.0',
	version: '1.0')

printf_subproject = subproject('printf')
libprintf_dep = printf_subproject.get_variable('libprintf_dep')

openlibm_subproject = subproject('openlibm')
openlibm_dep = openlibm_subproject.get_variable('openlibm_dep')

subdir('src')
