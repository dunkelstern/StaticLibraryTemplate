Project and Static Library template that can be built in Xcode as one Project or separately compiled to release binary blob and headers

# Building
Just open the `ProjectUsingLibrary` project and click build

# Releasing
Open a terminal, change to the `StaticLibrary` Folder and run `build.sh` it will create a static library for iOS and the Simulator and merge them together into a universal library.

All output will be dropped to `StaticLibrary/lib` (Universal static library and header files in subdir `include`)

# Modification
If you want to add files to the library do not open the library project directly, use the project that uses the library and expand the subproject.
You'll have to setup header file copying in the build phases tab of the library project.

Beware: If the library project is open for itself in another instance of Xcode it will not build or expand when included as subproject (Xcode locks the project if open and disallows parallel use!)