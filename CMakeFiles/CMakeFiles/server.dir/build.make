# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/main.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/main.cpp.o -c /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/main.cpp

CMakeFiles/server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/main.cpp > CMakeFiles/server.dir/main.cpp.i

CMakeFiles/server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/main.cpp -o CMakeFiles/server.dir/main.cpp.s

CMakeFiles/server.dir/web_server/session/session.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/web_server/session/session.cpp.o: ../web_server/session/session.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/web_server/session/session.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/web_server/session/session.cpp.o -c /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/web_server/session/session.cpp

CMakeFiles/server.dir/web_server/session/session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/web_server/session/session.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/web_server/session/session.cpp > CMakeFiles/server.dir/web_server/session/session.cpp.i

CMakeFiles/server.dir/web_server/session/session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/web_server/session/session.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/web_server/session/session.cpp -o CMakeFiles/server.dir/web_server/session/session.cpp.s

CMakeFiles/server.dir/web_server/config.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/web_server/config.cpp.o: ../web_server/config.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/web_server/config.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/web_server/config.cpp.o -c /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/web_server/config.cpp

CMakeFiles/server.dir/web_server/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/web_server/config.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/web_server/config.cpp > CMakeFiles/server.dir/web_server/config.cpp.i

CMakeFiles/server.dir/web_server/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/web_server/config.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/web_server/config.cpp -o CMakeFiles/server.dir/web_server/config.cpp.s

CMakeFiles/server.dir/database/database_mysql.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/database/database_mysql.cpp.o: ../database/database_mysql.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/server.dir/database/database_mysql.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/database/database_mysql.cpp.o -c /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/database/database_mysql.cpp

CMakeFiles/server.dir/database/database_mysql.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/database/database_mysql.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/database/database_mysql.cpp > CMakeFiles/server.dir/database/database_mysql.cpp.i

CMakeFiles/server.dir/database/database_mysql.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/database/database_mysql.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/database/database_mysql.cpp -o CMakeFiles/server.dir/database/database_mysql.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/main.cpp.o" \
"CMakeFiles/server.dir/web_server/session/session.cpp.o" \
"CMakeFiles/server.dir/web_server/config.cpp.o" \
"CMakeFiles/server.dir/database/database_mysql.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/main.cpp.o
server: CMakeFiles/server.dir/web_server/session/session.cpp.o
server: CMakeFiles/server.dir/web_server/config.cpp.o
server: CMakeFiles/server.dir/database/database_mysql.cpp.o
server: CMakeFiles/server.dir/build.make
server: /usr/local/lib/libPocoNetSSL.64.dylib
server: /opt/local/lib/libz.dylib
server: /usr/local/lib/libPocoUtild.64.dylib
server: /usr/local/lib/libPocoXMLd.64.dylib
server: /usr/local/lib/libPocoJSONd.64.dylib
server: /usr/local/lib/libPocoNetd.64.dylib
server: /usr/local/lib/libPocoCrypto.64.dylib
server: /usr/local/lib/libPocoFoundationd.64.dylib
server: /opt/local/lib/libssl.dylib
server: /opt/local/lib/libcrypto.dylib
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server

.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles /Users/dvdemon/OneDrive/Documents/Lectures/OOP/2020/Highload/hl_homework_sharding/CMakeFiles/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend
