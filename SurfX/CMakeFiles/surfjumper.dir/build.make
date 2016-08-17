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
include SurfX/CMakeFiles/surfjumper.dir/depend.make

# Include the progress variables for this target.
include SurfX/CMakeFiles/surfjumper.dir/progress.make

# Include the compile flags for this target's objects.
include SurfX/CMakeFiles/surfjumper.dir/flags.make

SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj: SurfX/CMakeFiles/surfjumper.dir/flags.make
SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj: SurfX/CMakeFiles/surfjumper.dir/includes_CXX.rsp
SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj: SurfX/util/surfjumper.C
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\brianweis\code\IMPACT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -o CMakeFiles\surfjumper.dir\util\surfjumper.C.obj -c C:\Users\brianweis\code\IMPACT\SurfX\util\surfjumper.C

SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/surfjumper.dir/util/surfjumper.C.i"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -E C:\Users\brianweis\code\IMPACT\SurfX\util\surfjumper.C > CMakeFiles\surfjumper.dir\util\surfjumper.C.i

SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/surfjumper.dir/util/surfjumper.C.s"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -fPIC  -S C:\Users\brianweis\code\IMPACT\SurfX\util\surfjumper.C -o CMakeFiles\surfjumper.dir\util\surfjumper.C.s

SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj.requires:

.PHONY : SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj.requires

SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj.provides: SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj.requires
	$(MAKE) -f SurfX\CMakeFiles\surfjumper.dir\build.make SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj.provides.build
.PHONY : SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj.provides

SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj.provides.build: SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj


# Object files for target surfjumper
surfjumper_OBJECTS = \
"CMakeFiles/surfjumper.dir/util/surfjumper.C.obj"

# External object files for target surfjumper
surfjumper_EXTERNAL_OBJECTS =

bin/surfjumper.exe: SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj
bin/surfjumper.exe: SurfX/CMakeFiles/surfjumper.dir/build.make
bin/surfjumper.exe: lib/libSurfX.dll.a
bin/surfjumper.exe: C:/Program\ Files\ (x86)/Microsoft\ SDKs/MPI/lib/x86/msmpi.lib
bin/surfjumper.exe: lib/libSurfUtil.dll.a
bin/surfjumper.exe: lib/libSurfMap.dll.a
bin/surfjumper.exe: lib/libSimOUT.dll.a
bin/surfjumper.exe: lib/libSimIN.dll.a
bin/surfjumper.exe: lib/libRHDF4.dll.a
bin/surfjumper.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libhdf.lib
bin/surfjumper.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libmfhdf.lib
bin/surfjumper.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libjpeg.lib
bin/surfjumper.exe: lib/libSimpal.dll.a
bin/surfjumper.exe: lib/libSITCOM.dll.a
bin/surfjumper.exe: C:/Users/brianweis/code/dlib/dl.dll
bin/surfjumper.exe: C:/Program\ Files\ (x86)/Microsoft\ SDKs/MPI/lib/x86/msmpi.lib
bin/surfjumper.exe: SurfX/CMakeFiles/surfjumper.dir/linklibs.rsp
bin/surfjumper.exe: SurfX/CMakeFiles/surfjumper.dir/objects1.rsp
bin/surfjumper.exe: SurfX/CMakeFiles/surfjumper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\brianweis\code\IMPACT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\surfjumper.exe"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\surfjumper.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
SurfX/CMakeFiles/surfjumper.dir/build: bin/surfjumper.exe

.PHONY : SurfX/CMakeFiles/surfjumper.dir/build

SurfX/CMakeFiles/surfjumper.dir/requires: SurfX/CMakeFiles/surfjumper.dir/util/surfjumper.C.obj.requires

.PHONY : SurfX/CMakeFiles/surfjumper.dir/requires

SurfX/CMakeFiles/surfjumper.dir/clean:
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && $(CMAKE_COMMAND) -P CMakeFiles\surfjumper.dir\cmake_clean.cmake
.PHONY : SurfX/CMakeFiles/surfjumper.dir/clean

SurfX/CMakeFiles/surfjumper.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\brianweis\code\IMPACT C:\Users\brianweis\code\IMPACT\SurfX C:\Users\brianweis\code\IMPACT C:\Users\brianweis\code\IMPACT\SurfX C:\Users\brianweis\code\IMPACT\SurfX\CMakeFiles\surfjumper.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : SurfX/CMakeFiles/surfjumper.dir/depend
