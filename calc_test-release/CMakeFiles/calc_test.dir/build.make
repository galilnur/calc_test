# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/naugrim/Dropbox/calc_test/calc_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/naugrim/Dropbox/calc_test/calc_test-release

# Include any dependencies generated for this target.
include CMakeFiles/calc_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/calc_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calc_test.dir/flags.make

CMakeFiles/calc_test.dir/exprLexeme.cpp.o: CMakeFiles/calc_test.dir/flags.make
CMakeFiles/calc_test.dir/exprLexeme.cpp.o: /home/naugrim/Dropbox/calc_test/calc_test/exprLexeme.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/naugrim/Dropbox/calc_test/calc_test-release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/calc_test.dir/exprLexeme.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/calc_test.dir/exprLexeme.cpp.o -c /home/naugrim/Dropbox/calc_test/calc_test/exprLexeme.cpp

CMakeFiles/calc_test.dir/exprLexeme.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calc_test.dir/exprLexeme.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/naugrim/Dropbox/calc_test/calc_test/exprLexeme.cpp > CMakeFiles/calc_test.dir/exprLexeme.cpp.i

CMakeFiles/calc_test.dir/exprLexeme.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calc_test.dir/exprLexeme.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/naugrim/Dropbox/calc_test/calc_test/exprLexeme.cpp -o CMakeFiles/calc_test.dir/exprLexeme.cpp.s

CMakeFiles/calc_test.dir/exprLexeme.cpp.o.requires:
.PHONY : CMakeFiles/calc_test.dir/exprLexeme.cpp.o.requires

CMakeFiles/calc_test.dir/exprLexeme.cpp.o.provides: CMakeFiles/calc_test.dir/exprLexeme.cpp.o.requires
	$(MAKE) -f CMakeFiles/calc_test.dir/build.make CMakeFiles/calc_test.dir/exprLexeme.cpp.o.provides.build
.PHONY : CMakeFiles/calc_test.dir/exprLexeme.cpp.o.provides

CMakeFiles/calc_test.dir/exprLexeme.cpp.o.provides.build: CMakeFiles/calc_test.dir/exprLexeme.cpp.o

CMakeFiles/calc_test.dir/exprLexer.cpp.o: CMakeFiles/calc_test.dir/flags.make
CMakeFiles/calc_test.dir/exprLexer.cpp.o: /home/naugrim/Dropbox/calc_test/calc_test/exprLexer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/naugrim/Dropbox/calc_test/calc_test-release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/calc_test.dir/exprLexer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/calc_test.dir/exprLexer.cpp.o -c /home/naugrim/Dropbox/calc_test/calc_test/exprLexer.cpp

CMakeFiles/calc_test.dir/exprLexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calc_test.dir/exprLexer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/naugrim/Dropbox/calc_test/calc_test/exprLexer.cpp > CMakeFiles/calc_test.dir/exprLexer.cpp.i

CMakeFiles/calc_test.dir/exprLexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calc_test.dir/exprLexer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/naugrim/Dropbox/calc_test/calc_test/exprLexer.cpp -o CMakeFiles/calc_test.dir/exprLexer.cpp.s

CMakeFiles/calc_test.dir/exprLexer.cpp.o.requires:
.PHONY : CMakeFiles/calc_test.dir/exprLexer.cpp.o.requires

CMakeFiles/calc_test.dir/exprLexer.cpp.o.provides: CMakeFiles/calc_test.dir/exprLexer.cpp.o.requires
	$(MAKE) -f CMakeFiles/calc_test.dir/build.make CMakeFiles/calc_test.dir/exprLexer.cpp.o.provides.build
.PHONY : CMakeFiles/calc_test.dir/exprLexer.cpp.o.provides

CMakeFiles/calc_test.dir/exprLexer.cpp.o.provides.build: CMakeFiles/calc_test.dir/exprLexer.cpp.o

CMakeFiles/calc_test.dir/exprTree.cpp.o: CMakeFiles/calc_test.dir/flags.make
CMakeFiles/calc_test.dir/exprTree.cpp.o: /home/naugrim/Dropbox/calc_test/calc_test/exprTree.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/naugrim/Dropbox/calc_test/calc_test-release/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/calc_test.dir/exprTree.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/calc_test.dir/exprTree.cpp.o -c /home/naugrim/Dropbox/calc_test/calc_test/exprTree.cpp

CMakeFiles/calc_test.dir/exprTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calc_test.dir/exprTree.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/naugrim/Dropbox/calc_test/calc_test/exprTree.cpp > CMakeFiles/calc_test.dir/exprTree.cpp.i

CMakeFiles/calc_test.dir/exprTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calc_test.dir/exprTree.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/naugrim/Dropbox/calc_test/calc_test/exprTree.cpp -o CMakeFiles/calc_test.dir/exprTree.cpp.s

CMakeFiles/calc_test.dir/exprTree.cpp.o.requires:
.PHONY : CMakeFiles/calc_test.dir/exprTree.cpp.o.requires

CMakeFiles/calc_test.dir/exprTree.cpp.o.provides: CMakeFiles/calc_test.dir/exprTree.cpp.o.requires
	$(MAKE) -f CMakeFiles/calc_test.dir/build.make CMakeFiles/calc_test.dir/exprTree.cpp.o.provides.build
.PHONY : CMakeFiles/calc_test.dir/exprTree.cpp.o.provides

CMakeFiles/calc_test.dir/exprTree.cpp.o.provides.build: CMakeFiles/calc_test.dir/exprTree.cpp.o

CMakeFiles/calc_test.dir/main.cpp.o: CMakeFiles/calc_test.dir/flags.make
CMakeFiles/calc_test.dir/main.cpp.o: /home/naugrim/Dropbox/calc_test/calc_test/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/naugrim/Dropbox/calc_test/calc_test-release/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/calc_test.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/calc_test.dir/main.cpp.o -c /home/naugrim/Dropbox/calc_test/calc_test/main.cpp

CMakeFiles/calc_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calc_test.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/naugrim/Dropbox/calc_test/calc_test/main.cpp > CMakeFiles/calc_test.dir/main.cpp.i

CMakeFiles/calc_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calc_test.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/naugrim/Dropbox/calc_test/calc_test/main.cpp -o CMakeFiles/calc_test.dir/main.cpp.s

CMakeFiles/calc_test.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/calc_test.dir/main.cpp.o.requires

CMakeFiles/calc_test.dir/main.cpp.o.provides: CMakeFiles/calc_test.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/calc_test.dir/build.make CMakeFiles/calc_test.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/calc_test.dir/main.cpp.o.provides

CMakeFiles/calc_test.dir/main.cpp.o.provides.build: CMakeFiles/calc_test.dir/main.cpp.o

CMakeFiles/calc_test.dir/exprParser.cpp.o: CMakeFiles/calc_test.dir/flags.make
CMakeFiles/calc_test.dir/exprParser.cpp.o: /home/naugrim/Dropbox/calc_test/calc_test/exprParser.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/naugrim/Dropbox/calc_test/calc_test-release/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/calc_test.dir/exprParser.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/calc_test.dir/exprParser.cpp.o -c /home/naugrim/Dropbox/calc_test/calc_test/exprParser.cpp

CMakeFiles/calc_test.dir/exprParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calc_test.dir/exprParser.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/naugrim/Dropbox/calc_test/calc_test/exprParser.cpp > CMakeFiles/calc_test.dir/exprParser.cpp.i

CMakeFiles/calc_test.dir/exprParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calc_test.dir/exprParser.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/naugrim/Dropbox/calc_test/calc_test/exprParser.cpp -o CMakeFiles/calc_test.dir/exprParser.cpp.s

CMakeFiles/calc_test.dir/exprParser.cpp.o.requires:
.PHONY : CMakeFiles/calc_test.dir/exprParser.cpp.o.requires

CMakeFiles/calc_test.dir/exprParser.cpp.o.provides: CMakeFiles/calc_test.dir/exprParser.cpp.o.requires
	$(MAKE) -f CMakeFiles/calc_test.dir/build.make CMakeFiles/calc_test.dir/exprParser.cpp.o.provides.build
.PHONY : CMakeFiles/calc_test.dir/exprParser.cpp.o.provides

CMakeFiles/calc_test.dir/exprParser.cpp.o.provides.build: CMakeFiles/calc_test.dir/exprParser.cpp.o

# Object files for target calc_test
calc_test_OBJECTS = \
"CMakeFiles/calc_test.dir/exprLexeme.cpp.o" \
"CMakeFiles/calc_test.dir/exprLexer.cpp.o" \
"CMakeFiles/calc_test.dir/exprTree.cpp.o" \
"CMakeFiles/calc_test.dir/main.cpp.o" \
"CMakeFiles/calc_test.dir/exprParser.cpp.o"

# External object files for target calc_test
calc_test_EXTERNAL_OBJECTS =

calc_test: CMakeFiles/calc_test.dir/exprLexeme.cpp.o
calc_test: CMakeFiles/calc_test.dir/exprLexer.cpp.o
calc_test: CMakeFiles/calc_test.dir/exprTree.cpp.o
calc_test: CMakeFiles/calc_test.dir/main.cpp.o
calc_test: CMakeFiles/calc_test.dir/exprParser.cpp.o
calc_test: CMakeFiles/calc_test.dir/build.make
calc_test: CMakeFiles/calc_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable calc_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calc_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calc_test.dir/build: calc_test
.PHONY : CMakeFiles/calc_test.dir/build

CMakeFiles/calc_test.dir/requires: CMakeFiles/calc_test.dir/exprLexeme.cpp.o.requires
CMakeFiles/calc_test.dir/requires: CMakeFiles/calc_test.dir/exprLexer.cpp.o.requires
CMakeFiles/calc_test.dir/requires: CMakeFiles/calc_test.dir/exprTree.cpp.o.requires
CMakeFiles/calc_test.dir/requires: CMakeFiles/calc_test.dir/main.cpp.o.requires
CMakeFiles/calc_test.dir/requires: CMakeFiles/calc_test.dir/exprParser.cpp.o.requires
.PHONY : CMakeFiles/calc_test.dir/requires

CMakeFiles/calc_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calc_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calc_test.dir/clean

CMakeFiles/calc_test.dir/depend:
	cd /home/naugrim/Dropbox/calc_test/calc_test-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/naugrim/Dropbox/calc_test/calc_test /home/naugrim/Dropbox/calc_test/calc_test /home/naugrim/Dropbox/calc_test/calc_test-release /home/naugrim/Dropbox/calc_test/calc_test-release /home/naugrim/Dropbox/calc_test/calc_test-release/CMakeFiles/calc_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/calc_test.dir/depend
