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
include SurfX/CMakeFiles/ex7.dir/depend.make

# Include the progress variables for this target.
include SurfX/CMakeFiles/ex7.dir/progress.make

# Include the compile flags for this target's objects.
include SurfX/CMakeFiles/ex7.dir/flags.make

SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj: SurfX/CMakeFiles/ex7.dir/flags.make
SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj: SurfX/CMakeFiles/ex7.dir/includes_CXX.rsp
SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj: SurfX/test/ex7CellCentered.C
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\brianweis\code\IMPACT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ex7.dir\test\ex7CellCentered.C.obj -c C:\Users\brianweis\code\IMPACT\SurfX\test\ex7CellCentered.C

SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex7.dir/test/ex7CellCentered.C.i"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\brianweis\code\IMPACT\SurfX\test\ex7CellCentered.C > CMakeFiles\ex7.dir\test\ex7CellCentered.C.i

SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex7.dir/test/ex7CellCentered.C.s"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && C:\Qt\Tools\mingw492_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\brianweis\code\IMPACT\SurfX\test\ex7CellCentered.C -o CMakeFiles\ex7.dir\test\ex7CellCentered.C.s

SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj.requires:

.PHONY : SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj.requires

SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj.provides: SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj.requires
	$(MAKE) -f SurfX\CMakeFiles\ex7.dir\build.make SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj.provides.build
.PHONY : SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj.provides

SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj.provides.build: SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj


# Object files for target ex7
ex7_OBJECTS = \
"CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj"

# External object files for target ex7
ex7_EXTERNAL_OBJECTS =

bin/ex7.exe: SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj
bin/ex7.exe: SurfX/CMakeFiles/ex7.dir/build.make
bin/ex7.exe: lib/libSurfX.dll.a
bin/ex7.exe: C:/Program\ Files\ (x86)/Microsoft\ SDKs/MPI/lib/x86/msmpi.lib
bin/ex7.exe: lib/libSurfUtil.dll.a
bin/ex7.exe: lib/libSurfMap.dll.a
bin/ex7.exe: lib/libSimOUT.dll.a
bin/ex7.exe: lib/libSimIN.dll.a
bin/ex7.exe: lib/libRHDF4.dll.a
bin/ex7.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libhdf.lib
bin/ex7.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libmfhdf.lib
bin/ex7.exe: C:/Program\ Files/HDF_Group/HDF/4.2.12/lib/libjpeg.lib
bin/ex7.exe: lib/libSimpal.dll.a
bin/ex7.exe: lib/libSITCOM.dll.a
bin/ex7.exe: C:/Users/brianweis/code/dlib/dl.dll
bin/ex7.exe: C:/Program\ Files\ (x86)/Microsoft\ SDKs/MPI/lib/x86/msmpi.lib
bin/ex7.exe: SurfX/CMakeFiles/ex7.dir/linklibs.rsp
bin/ex7.exe: SurfX/CMakeFiles/ex7.dir/objects1.rsp
bin/ex7.exe: SurfX/CMakeFiles/ex7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\brianweis\code\IMPACT\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\ex7.exe"
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ex7.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
SurfX/CMakeFiles/ex7.dir/build: bin/ex7.exe

.PHONY : SurfX/CMakeFiles/ex7.dir/build

SurfX/CMakeFiles/ex7.dir/requires: SurfX/CMakeFiles/ex7.dir/test/ex7CellCentered.C.obj.requires

.PHONY : SurfX/CMakeFiles/ex7.dir/requires

SurfX/CMakeFiles/ex7.dir/clean:
	cd /d C:\Users\brianweis\code\IMPACT\SurfX && $(CMAKE_COMMAND) -P CMakeFiles\ex7.dir\cmake_clean.cmake
.PHONY : SurfX/CMakeFiles/ex7.dir/clean

SurfX/CMakeFiles/ex7.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\brianweis\code\IMPACT C:\Users\brianweis\code\IMPACT\SurfX C:\Users\brianweis\code\IMPACT C:\Users\brianweis\code\IMPACT\SurfX C:\Users\brianweis\code\IMPACT\SurfX\CMakeFiles\ex7.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : SurfX/CMakeFiles/ex7.dir/depend
