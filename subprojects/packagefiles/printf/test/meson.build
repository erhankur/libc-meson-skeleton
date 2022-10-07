#############################
# Printf Tests #
#############################

printf_tests = executable('printf_tests',
	sources: files('test_suite.cpp'),
)

test('printf_tests',
	printf_tests,
	args: ['-s', '-r', 'junit', '-o', meson.build_root() + '/test/printf_tests.xml']
)
