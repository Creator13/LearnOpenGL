# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Programs\JetBrains\apps\CLion\ch-0\211.6693.114\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\Programs\JetBrains\apps\CLion\ch-0\211.6693.114\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Workspace\Programming\LearnOpenGL\Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Project.dir/flags.make

CMakeFiles/Project.dir/src/main.cpp.obj: CMakeFiles/Project.dir/flags.make
CMakeFiles/Project.dir/src/main.cpp.obj: CMakeFiles/Project.dir/includes_CXX.rsp
CMakeFiles/Project.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Project.dir/src/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Project.dir\src\main.cpp.obj -c D:\Workspace\Programming\LearnOpenGL\Project\src\main.cpp

CMakeFiles/Project.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Project.dir/src/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Workspace\Programming\LearnOpenGL\Project\src\main.cpp > CMakeFiles\Project.dir\src\main.cpp.i

CMakeFiles/Project.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Project.dir/src/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Workspace\Programming\LearnOpenGL\Project\src\main.cpp -o CMakeFiles\Project.dir\src\main.cpp.s

CMakeFiles/Project.dir/src/glad.c.obj: CMakeFiles/Project.dir/flags.make
CMakeFiles/Project.dir/src/glad.c.obj: CMakeFiles/Project.dir/includes_C.rsp
CMakeFiles/Project.dir/src/glad.c.obj: ../src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Project.dir/src/glad.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Project.dir\src\glad.c.obj -c D:\Workspace\Programming\LearnOpenGL\Project\src\glad.c

CMakeFiles/Project.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project.dir/src/glad.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Workspace\Programming\LearnOpenGL\Project\src\glad.c > CMakeFiles\Project.dir\src\glad.c.i

CMakeFiles/Project.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project.dir/src/glad.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Workspace\Programming\LearnOpenGL\Project\src\glad.c -o CMakeFiles\Project.dir\src\glad.c.s

# Object files for target Project
Project_OBJECTS = \
"CMakeFiles/Project.dir/src/main.cpp.obj" \
"CMakeFiles/Project.dir/src/glad.c.obj"

# External object files for target Project
Project_EXTERNAL_OBJECTS =

Project.exe: CMakeFiles/Project.dir/src/main.cpp.obj
Project.exe: CMakeFiles/Project.dir/src/glad.c.obj
Project.exe: CMakeFiles/Project.dir/build.make
Project.exe: binary_dir/src/libglfw3.a
Project.exe: CMakeFiles/Project.dir/linklibs.rsp
Project.exe: CMakeFiles/Project.dir/objects1.rsp
Project.exe: CMakeFiles/Project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Project.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Project.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Project.dir/build: Project.exe

.PHONY : CMakeFiles/Project.dir/build

CMakeFiles/Project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Project.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Project.dir/clean

CMakeFiles/Project.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Workspace\Programming\LearnOpenGL\Project D:\Workspace\Programming\LearnOpenGL\Project D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles\Project.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Project.dir/depend

