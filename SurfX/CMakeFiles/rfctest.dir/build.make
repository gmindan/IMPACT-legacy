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
include SurfX/CMakeFiles/rfctest.dir/depend.make

# Include the progress variables for this target.
include SurfX/CMakeFiles/rfctest.dir/progress.make

# Include the compile flags for this target's objects.
include SurfX/CMakeFiles/rfctest.dir/flags.make

SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj: SurfX/CMakeFiles/rfctest.dir/flags.make
SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj: SurfX/CMakeFiles/rfctest.dir/includes_CXX.rsp
SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj: SurfX/util/rfctest.C
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\brianweis\code\IMPACT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -o CMakeFiles\rfctest.dir\util\rfctest.C.obj -c C:\Users\brianweis\code\IMPACT\SurfX\util\rfctest.C

SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rfctest.dir/util/rfctest.C.i"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -E C:\Users\brianweis\code\IMPACT\SurfX\util\rfctest.C > CMakeFiles\rfctest.dir\util\rfctest.C.i

SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rfctest.dir/util/rfctest.C.s"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -S C:\Users\brianweis\code\IMPACT\SurfX\util\rfctest.C -o CMakeFiles\rfctest.dir\util\rfctest.C.s

SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj.requires:

.PHONY : SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj.requires

SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj.provides: SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj.requires
	$(MAKE) -f SurfX\CMakeFiles\rfctest.dir\build.make SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj.provides.build
.PHONY : SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj.provides

SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj.provides.build: SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj


# Object files for target rfctest
rfctest_OBJECTS = \
"CMakeFiles/rfctest.dir/util/rfctest.C.obj"

# External object files for target rfctest
rfctest_EXTERNAL_OBJECTS =

bin/rfctest.exe: SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj
bin/rfctest.exe: SurfX/CMakeFiles/rfctest.dir/build.make
bin/rfctest.exe: lib/libSurfX.dll.a
bin/rfctest.exe: C:/Program\ Files\ (x86)/Microsoft\ SDKs/MPI/lib/x86/msmpi.lib
bin/rfctest.exe: lib/libSurfUtil.dll.a
bin/rfctest.exe: lib/libSurfMap.dll.a
bin/rfctest.exe: lib/libSimOUT.dll.a
bin/rfctest.exe: lib/libSimIN.dll.a
bin/rfctest.exe: lib/libRHDF4.dll.a
bin/rfctest.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libhdf.lib
bin/rfctest.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libmfhdf.lib
bin/rfctest.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libjpeg.lib
bin/rfctest.exe: lib/libSimpal.dll.a
bin/rfctest.exe: lib/libSITCOM.dll.a
bin/rfctest.exe: C:/Users/brianweis/code/dlib/dl.dll
bin/rfctest.exe: C:/Program\ Files\ (x86)/Microsoft\ SDKs/MPI/lib/x86/msmpi.lib
bin/rfctest.exe: SurfX/CMakeFiles/rfctest.dir/linklibs.rsp
bin/rfctest.exe: SurfX/CMakeFiles/rfctest.dir/objects1.rsp
bin/rfctest.exe: SurfX/CMakeFiles/rfctest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\brianweis\code\IMPACT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\rfctest.exe"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\rfctest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
SurfX/CMakeFiles/rfctest.dir/build: bin/rfctest.exe

.PHONY : SurfX/CMakeFiles/rfctest.dir/build

SurfX/CMakeFiles/rfctest.dir/requires: SurfX/CMakeFiles/rfctest.dir/util/rfctest.C.obj.requires

.PHONY : SurfX/CMakeFiles/rfctest.dir/requires

SurfX/CMakeFiles/rfctest.dir/clean:
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && $(CMAKE_COMMAND) -P CMakeFiles\rfctest.dir\cmake_clean.cmake
.PHONY : SurfX/CMakeFiles/rfctest.dir/clean

SurfX/CMakeFiles/rfctest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\brianweis\code\IMPACT C:\Users\brianweis\code\IMPACT\SurfX C:\Users\brianweis\code\IMPACT C:\Users\brianweis\code\IMPACT\SurfX C:\Users\brianweis\code\IMPACT\SurfX\CMakeFiles\rfctest.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : SurfX/CMakeFiles/rfctest.dir/depend
