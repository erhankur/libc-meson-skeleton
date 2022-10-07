project('openlibm-patch',
	'c'
)

###############################
# Openlibm Dependency Targets #
###############################

openlibm_includes = include_directories(
	'include',
	'src',
	is_system: true
)

openlibm_dep = declare_dependency(
	include_directories: openlibm_includes,
)
