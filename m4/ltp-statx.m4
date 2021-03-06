dnl
dnl Copyright (c) Zilogic Systems Pvt. Ltd., 2018
dnl
dnl This program is free software;  you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; either version 2 of the License, or
dnl (at your option) any later version.
dnl
dnl This program is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY;  without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See
dnl the GNU General Public License for more details.
dnl
dnl You should have received a copy of the GNU General Public License
dnl along with this program;  if not, write to the Free Software
dnl Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
dnl

dnl
dnl LTP_CHECK_STATX
dnl ----------------------------
dnl
AC_DEFUN([LTP_CHECK_STATX],[
AC_CHECK_FUNCS(statx,,)
AC_CHECK_HEADER(linux/fs.h,,,)
AC_CHECK_TYPES([struct statx],,,[[
	#define _GNU_SOURCE
	#include <sys/stat.h>
]])
AC_CHECK_TYPES([struct statx_timestamp],,,[[
	#define _GNU_SOURCE
	#include <sys/stat.h>]])
])
