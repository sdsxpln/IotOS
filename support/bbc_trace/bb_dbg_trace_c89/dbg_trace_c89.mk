#==============================================================================
# FILE: dbg_trace_c89.mk
#
#------------------------------------------------------------------------------
#
# Copyright 2009-2013 Delphi Technologies, Inc., All Rights Reserved.
# Delphi Confidential
#
#------------------------------------------------------------------------------
#
# %full_filespec:dbg_trace_c89.mk~kok_inf#5:makefile:kok_aud#1 %
# %version:kok_inf#5 %
# %derived_by:dzq92s %
# %date_modified:Thu Oct  3 09:58:42 2013 %
#
# DESCRIPTION:
# ------------
# This file provides the project-specific information required for a build
# of this module. On entry, the variable "_build_" identifies which build is
# being performed, and the variable $(_build_)_FLAVOR defines the flavor for
# this build. This file includes template Makefiles for the flavor
# from the $(MAKE_INCL_DIR) directory, which must be defined prior to
# including this file.
#
#==============================================================================
_flavor_ := $($(_build_)_FLAVOR)

include $(MAKE_INCL_DIR)/$(_flavor_)_prolog.mak

###############################################################################
# Definitions for compiling/assembling source code into object code:
####################################################################

#
# Define the directory (relative to project root directory) containing the
# source files for this module.
#
# EXAMPLE: _src_dirs_ := $(_cur_module_path_)/<implementation directory>/_src
#
_src_dirs_ := $(_cur_module_path_)/bb_dbg_trace_c89_imp/_src

###############################################################################
# Definitions for linking object code into a static library:
############################################################

#
# Define the name of the library; e.g., "foo" for libfoo.a.
#
# EXAMPLE: _lib_name_ := test_platform
#          for $(_lib_prefix_)test_platform$(_lib_ext_)
#
_lib_name_ := dbg_trace_c89
#
# Define the list of object files that go into the static library.
#
# EXAMPLE: _lib_objs_ := $($(_build_)_OBJ_OUTDIR)/filename$(_obj_ext_)
#
_lib_objs_ :=\
  $($(_build_)_OBJ_OUTDIR)/dbg_trace_c89$(_obj_ext_)      \
  $($(_build_)_OBJ_OUTDIR)/dbg_trace_c89_log$(_obj_ext_)  \
  $($(_build_)_OBJ_OUTDIR)/dbg_trace_c89_store$(_obj_ext_)\
  $($(_build_)_OBJ_OUTDIR)/em_assert_c89$(_obj_ext_)      \

ifeq ($(_flavor_),uitron_arm_rvct)
  # The following causes DBG_TRACE_PATH_SEPARATOR to have the value '\\'
  $(_lib_objs_):CC_$(_build_)_MACRO:=-DUITRON=1 -DDBG_TRACE_PATH_SEPARATOR=\'\\\\\'
endif

###############################################################################
# Definitions for generating an executable from object files and libraries:
###########################################################################

#
# Define the name of the executable:
#
# EXAMPLE: _bin_name_ := my_prog$(_bin_ext_)
#
_bin_name_ :=
#
# Define the list of object files for the executable:
#
# EXAMPLE: _bin_objs_ := $($(_build_)_OBJ_OUTDIR)/my_prog$(_obj_ext_)
#
_bin_objs_ :=
#
# Define the list of libraries to link against. If you want the library to be
# defined as a prerequisite of the binary (so that the binary is rebuilt any
# time the library is new), then you must specify the path to the library; 
# e.g., "<rel_proj_dir>/libfoo.a". Libraries specified without a path (e.g.,
# "libfoo.a") will not be made prerequisites of the binary and will be
# found by dynamically searching the library directories (_bin_lib_dirs_,
# defined below) in whatever manner is prescribed for the tools associated with
# this flavor.
#
# EXAMPLE:
# _bin_libs_ := $($(_build_)_LIB_OUTDIR)/$(_lib_prefix_)platform$(_lib_ext_)
#
_bin_libs_ :=
#
# Define the list of directories to search for libraries (in the order in which
# they are to be searched). These are for libraries that were not specified
# with a path in _bin_libs_ above:
#
# EXAMPLE: _bin_lib_dirs_ := <path to library>
#
_bin_lib_dirs_ := 
#
# If appropriate, define the linker command file for the binary.
#
# EXAMPLE: _bin_lnk_cmd_ := $(_cur_module_path_)/$(_flavor_)_cmd.lnk
#
_bin_lnk_cmd_ :=

include $(MAKE_INCL_DIR)/$(_flavor_)_epilog.mak

#===========================================================================
# File Revision History (top to bottom: first revision to last revision)
#===========================================================================
#
# Date        Name      (Description on following lines: SCR #, etc.)
# ----------- --------
# 07-jul-2009 kirk bailey
# + Created separate file to build the dbg_trace_c89 library.
#
# 09-may-2011 Kris Boultbee
# + Added dbg_trace_c89_log and dbg_trace_c89_store files
#
# 12-Jun-2011 Kirk Bailey
# + Eliminated configurable assert types; replaced with a single callout.
#
# 03-Oct-2013 Kirk Bailey REV 5
# + Fixed order of revision history comments - no functional changes
#
#===========================================================================
