#!/bin/bash

export CMOCKA_XML_FILE=${MESON_BUILD_ROOT}/test/\%g.xml
${MESON_BUILD_ROOT}/test/libc_test
