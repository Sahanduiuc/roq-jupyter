AC_REVISION([m4_esyscmd_s([build-aux/git-version])])

AC_INIT([roq-jupyter],
        m4_esyscmd_s([build-aux/git-version]),
        [thraneh@gmail.com],
        [roq-jupyter])

AC_PREREQ([2.59])

AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])

AC_CONFIG_FILES([
 Makefile
 notebooks/Makefile
])

AM_INIT_AUTOMAKE([-Wall -Werror foreign subdir-objects])

AC_OUTPUT
