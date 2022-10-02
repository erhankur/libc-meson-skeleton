# Meson: Operational Theory

Meson, like Autotools and CMake, is an open-source build system generator. Meson itself doesn’t execute the software construction process. Instead, Meson translates a high-level build description into a format accepted by other tools (Ninja, in our case). The primary idea is that Meson provides a programmatic way to define builds, rather than using Make’s pattern-rule-based approach to constructing software.

