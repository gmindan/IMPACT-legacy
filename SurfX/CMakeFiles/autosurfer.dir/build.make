# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\brianweis\code\IMPACT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\brianweis\code\IMPACT

# Include any dependencies generated for this target.
include SurfX/CMakeFiles/autosurfer.dir/depend.make

# Include the progress variables for this target.
include SurfX/CMakeFiles/autosurfer.dir/progress.make

# Include the compile flags for this target's objects.
include SurfX/CMakeFiles/autosurfer.dir/flags.make

SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj: SurfX/CMakeFiles/autosurfer.dir/flags.make
SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj: SurfX/CMakeFiles/autosurfer.dir/includes_CXX.rsp
SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj: SurfX/util/autosurfer.C
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\brianweis\code\IMPACT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -o CMakeFiles\autosurfer.dir\util\autosurfer.C.obj -c C:\Users\brianweis\code\IMPACT\SurfX\util\autosurfer.C

SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/autosurfer.dir/util/autosurfer.C.i"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -E C:\Users\brianweis\code\IMPACT\SurfX\util\autosurfer.C > CMakeFiles\autosurfer.dir\util\autosurfer.C.i

SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/autosurfer.dir/util/autosurfer.C.s"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -S C:\Users\brianweis\code\IMPACT\SurfX\util\autosurfer.C -o CMakeFiles\autosurfer.dir\util\autosurfer.C.s

SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj.requires:

.PHONY : SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj.requires

SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj.provides: SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj.requires
	$(MAKE) -f SurfX\CMakeFiles\autosurfer.dir\build.make SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj.provides.build
.PHONY : SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj.provides

SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj.provides.build: SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj


# Object files for target autosurfer
autosurfer_OBJECTS = \
"CMakeFiles/autosurfer.dir/util/autosurfer.C.obj"

# External object files for target autosurfer
autosurfer_EXTERNAL_OBJECTS =

bin/autosurfer.exe: SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj
bin/autosurfer.exe: SurfX/CMakeFiles/autosurfer.dir/build.make
bin/autosurfer.exe: lib/libSurfX.dll.a
bin/autosurfer.exe: C:/Program\ Files\ (x86)/Microsoft\ SDKs/MPI/lib/x86/msmpi.lib
bin/autosurfer.exe: lib/libSurfUtil.dll.a
bin/autosurfer.exe: lib/libSurfMap.dll.a
bin/autosurfer.exe: lib/libSimOUT.dll.a
bin/autosurfer.exe: lib/libSimIN.dll.a
bin/autosurfer.exe: lib/libRHDF4.dll.a
bin/autosurfer.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libhdf.lib
bin/autosurfer.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libmfhdf.lib
bin/autosurfer.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libjpeg.lib
bin/autosurfer.exe: lib/libSimpal.dll.a
bin/autosurfer.exe: lib/libSITCOM.dll.a
bin/autosurfer.exe: C:/Users/brianweis/code/dlib/dl.dll
bin/autosurfer.exe: C:/Program\ Files\ (x86)/Microsoft\ SDKs/MPI/lib/x86/msmpi.lib
bin/autosurfer.exe: SurfX/CMakeFiles/autosurfer.dir/linklibs.rsp
bin/autosurfer.exe: SurfX/CMakeFiles/autosurfer.dir/objects1.rsp
bin/autosurfer.exe: SurfX/CMakeFiles/autosurfer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\brianweis\code\IMPACT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\autosurfer.exe"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\autosurfer.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
SurfX/CMakeFiles/autosurfer.dir/build: bin/autosurfer.exe

.PHONY : SurfX/CMakeFiles/autosurfer.dir/build

SurfX/CMakeFiles/autosurfer.dir/requires: SurfX/CMakeFiles/autosurfer.dir/util/autosurfer.C.obj.requires

.PHONY : SurfX/CMakeFiles/autosurfer.dir/requires

SurfX/CMakeFiles/autosurfer.dir/clean:
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && $(CMAKE_COMMAND) -P CMakeFiles\autosurfer.dir\cmake_clean.cmake
.PHONY : SurfX/CMakeFiles/autosurfer.dir/clean

SurfX/CMakeFiles/autosurfer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\brianweis\code\IMPACT C:\Users\brianweis\code\IMPACT\SurfX C:\Users\brianweis\code\IMPACT C:\Users\brianweis\code\IMPACT\SurfX C:\Users\brianweis\code\IMPACT\SurfX\CMakeFiles\autosurfer.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : SurfX/CMakeFiles/autosurfer.dir/depend
