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
include binary_dir/src/CMakeFiles/glfw.dir/depend.make

# Include the progress variables for this target.
include binary_dir/src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include binary_dir/src/CMakeFiles/glfw.dir/flags.make

binary_dir/src/CMakeFiles/glfw.dir/context.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/context.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/context.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object binary_dir/src/CMakeFiles/glfw.dir/context.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\context.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\context.c

binary_dir/src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\context.c > CMakeFiles\glfw.dir\context.c.i

binary_dir/src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\context.c -o CMakeFiles\glfw.dir\context.c.s

binary_dir/src/CMakeFiles/glfw.dir/init.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/init.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/init.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object binary_dir/src/CMakeFiles/glfw.dir/init.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\init.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\init.c

binary_dir/src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\init.c > CMakeFiles\glfw.dir\init.c.i

binary_dir/src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\init.c -o CMakeFiles\glfw.dir\init.c.s

binary_dir/src/CMakeFiles/glfw.dir/input.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/input.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/input.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object binary_dir/src/CMakeFiles/glfw.dir/input.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\input.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\input.c

binary_dir/src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\input.c > CMakeFiles\glfw.dir\input.c.i

binary_dir/src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\input.c -o CMakeFiles\glfw.dir\input.c.s

binary_dir/src/CMakeFiles/glfw.dir/monitor.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/monitor.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/monitor.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object binary_dir/src/CMakeFiles/glfw.dir/monitor.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\monitor.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\monitor.c

binary_dir/src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\monitor.c > CMakeFiles\glfw.dir\monitor.c.i

binary_dir/src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\monitor.c -o CMakeFiles\glfw.dir\monitor.c.s

binary_dir/src/CMakeFiles/glfw.dir/vulkan.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/vulkan.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/vulkan.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/vulkan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object binary_dir/src/CMakeFiles/glfw.dir/vulkan.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\vulkan.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\vulkan.c

binary_dir/src/CMakeFiles/glfw.dir/vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/vulkan.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\vulkan.c > CMakeFiles\glfw.dir\vulkan.c.i

binary_dir/src/CMakeFiles/glfw.dir/vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/vulkan.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\vulkan.c -o CMakeFiles\glfw.dir\vulkan.c.s

binary_dir/src/CMakeFiles/glfw.dir/window.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/window.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/window.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object binary_dir/src/CMakeFiles/glfw.dir/window.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\window.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\window.c

binary_dir/src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\window.c > CMakeFiles\glfw.dir\window.c.i

binary_dir/src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\window.c -o CMakeFiles\glfw.dir\window.c.s

binary_dir/src/CMakeFiles/glfw.dir/win32_init.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/win32_init.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/win32_init.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/win32_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object binary_dir/src/CMakeFiles/glfw.dir/win32_init.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\win32_init.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_init.c

binary_dir/src/CMakeFiles/glfw.dir/win32_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_init.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_init.c > CMakeFiles\glfw.dir\win32_init.c.i

binary_dir/src/CMakeFiles/glfw.dir/win32_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_init.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_init.c -o CMakeFiles\glfw.dir\win32_init.c.s

binary_dir/src/CMakeFiles/glfw.dir/win32_joystick.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/win32_joystick.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/win32_joystick.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/win32_joystick.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object binary_dir/src/CMakeFiles/glfw.dir/win32_joystick.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\win32_joystick.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_joystick.c

binary_dir/src/CMakeFiles/glfw.dir/win32_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_joystick.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_joystick.c > CMakeFiles\glfw.dir\win32_joystick.c.i

binary_dir/src/CMakeFiles/glfw.dir/win32_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_joystick.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_joystick.c -o CMakeFiles\glfw.dir\win32_joystick.c.s

binary_dir/src/CMakeFiles/glfw.dir/win32_monitor.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/win32_monitor.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/win32_monitor.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/win32_monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object binary_dir/src/CMakeFiles/glfw.dir/win32_monitor.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\win32_monitor.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_monitor.c

binary_dir/src/CMakeFiles/glfw.dir/win32_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_monitor.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_monitor.c > CMakeFiles\glfw.dir\win32_monitor.c.i

binary_dir/src/CMakeFiles/glfw.dir/win32_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_monitor.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_monitor.c -o CMakeFiles\glfw.dir\win32_monitor.c.s

binary_dir/src/CMakeFiles/glfw.dir/win32_time.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/win32_time.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/win32_time.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/win32_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object binary_dir/src/CMakeFiles/glfw.dir/win32_time.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\win32_time.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_time.c

binary_dir/src/CMakeFiles/glfw.dir/win32_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_time.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_time.c > CMakeFiles\glfw.dir\win32_time.c.i

binary_dir/src/CMakeFiles/glfw.dir/win32_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_time.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_time.c -o CMakeFiles\glfw.dir\win32_time.c.s

binary_dir/src/CMakeFiles/glfw.dir/win32_thread.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/win32_thread.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/win32_thread.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/win32_thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object binary_dir/src/CMakeFiles/glfw.dir/win32_thread.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\win32_thread.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_thread.c

binary_dir/src/CMakeFiles/glfw.dir/win32_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_thread.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_thread.c > CMakeFiles\glfw.dir\win32_thread.c.i

binary_dir/src/CMakeFiles/glfw.dir/win32_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_thread.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_thread.c -o CMakeFiles\glfw.dir\win32_thread.c.s

binary_dir/src/CMakeFiles/glfw.dir/win32_window.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/win32_window.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/win32_window.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/win32_window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object binary_dir/src/CMakeFiles/glfw.dir/win32_window.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\win32_window.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_window.c

binary_dir/src/CMakeFiles/glfw.dir/win32_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/win32_window.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_window.c > CMakeFiles\glfw.dir\win32_window.c.i

binary_dir/src/CMakeFiles/glfw.dir/win32_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/win32_window.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\win32_window.c -o CMakeFiles\glfw.dir\win32_window.c.s

binary_dir/src/CMakeFiles/glfw.dir/wgl_context.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/wgl_context.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/wgl_context.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/wgl_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object binary_dir/src/CMakeFiles/glfw.dir/wgl_context.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\wgl_context.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\wgl_context.c

binary_dir/src/CMakeFiles/glfw.dir/wgl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/wgl_context.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\wgl_context.c > CMakeFiles\glfw.dir\wgl_context.c.i

binary_dir/src/CMakeFiles/glfw.dir/wgl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/wgl_context.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\wgl_context.c -o CMakeFiles\glfw.dir\wgl_context.c.s

binary_dir/src/CMakeFiles/glfw.dir/egl_context.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/egl_context.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/egl_context.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/egl_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object binary_dir/src/CMakeFiles/glfw.dir/egl_context.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\egl_context.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\egl_context.c

binary_dir/src/CMakeFiles/glfw.dir/egl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/egl_context.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\egl_context.c > CMakeFiles\glfw.dir\egl_context.c.i

binary_dir/src/CMakeFiles/glfw.dir/egl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/egl_context.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\egl_context.c -o CMakeFiles\glfw.dir\egl_context.c.s

binary_dir/src/CMakeFiles/glfw.dir/osmesa_context.c.obj: binary_dir/src/CMakeFiles/glfw.dir/flags.make
binary_dir/src/CMakeFiles/glfw.dir/osmesa_context.c.obj: binary_dir/src/CMakeFiles/glfw.dir/includes_C.rsp
binary_dir/src/CMakeFiles/glfw.dir/osmesa_context.c.obj: D:/Workspace/Programming/LearnOpenGL/glfw-3.3.4/src/osmesa_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object binary_dir/src/CMakeFiles/glfw.dir/osmesa_context.c.obj"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -o CMakeFiles\glfw.dir\osmesa_context.c.obj -c D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\osmesa_context.c

binary_dir/src/CMakeFiles/glfw.dir/osmesa_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/osmesa_context.c.i"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\osmesa_context.c > CMakeFiles\glfw.dir\osmesa_context.c.i

binary_dir/src/CMakeFiles/glfw.dir/osmesa_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/osmesa_context.c.s"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src\osmesa_context.c -o CMakeFiles\glfw.dir\osmesa_context.c.s

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.obj" \
"CMakeFiles/glfw.dir/init.c.obj" \
"CMakeFiles/glfw.dir/input.c.obj" \
"CMakeFiles/glfw.dir/monitor.c.obj" \
"CMakeFiles/glfw.dir/vulkan.c.obj" \
"CMakeFiles/glfw.dir/window.c.obj" \
"CMakeFiles/glfw.dir/win32_init.c.obj" \
"CMakeFiles/glfw.dir/win32_joystick.c.obj" \
"CMakeFiles/glfw.dir/win32_monitor.c.obj" \
"CMakeFiles/glfw.dir/win32_time.c.obj" \
"CMakeFiles/glfw.dir/win32_thread.c.obj" \
"CMakeFiles/glfw.dir/win32_window.c.obj" \
"CMakeFiles/glfw.dir/wgl_context.c.obj" \
"CMakeFiles/glfw.dir/egl_context.c.obj" \
"CMakeFiles/glfw.dir/osmesa_context.c.obj"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/context.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/init.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/input.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/monitor.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/vulkan.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/window.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/win32_init.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/win32_joystick.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/win32_monitor.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/win32_time.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/win32_thread.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/win32_window.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/wgl_context.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/egl_context.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/osmesa_context.c.obj
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/build.make
binary_dir/src/libglfw3.a: binary_dir/src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library libglfw3.a"
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && $(CMAKE_COMMAND) -P CMakeFiles\glfw.dir\cmake_clean_target.cmake
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\glfw.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
binary_dir/src/CMakeFiles/glfw.dir/build: binary_dir/src/libglfw3.a

.PHONY : binary_dir/src/CMakeFiles/glfw.dir/build

binary_dir/src/CMakeFiles/glfw.dir/clean:
	cd /d D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src && $(CMAKE_COMMAND) -P CMakeFiles\glfw.dir\cmake_clean.cmake
.PHONY : binary_dir/src/CMakeFiles/glfw.dir/clean

binary_dir/src/CMakeFiles/glfw.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Workspace\Programming\LearnOpenGL\Project D:\Workspace\Programming\LearnOpenGL\glfw-3.3.4\src D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src D:\Workspace\Programming\LearnOpenGL\Project\cmake-build-debug\binary_dir\src\CMakeFiles\glfw.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : binary_dir/src/CMakeFiles/glfw.dir/depend

