JAVA_HOME = os.getenv("JAVA_HOME") or "/usr/lib/jvm/jdk-24.0.1-oracle-x64"
workspace "hello"
    architecture "x64"
    configurations "Release"

project "hello"
    kind "SharedLib" -- build into a .dll (windows) / .so (linux)
    files "Hello.*"
    includedirs {
        JAVA_HOME.."/include",
        JAVA_HOME.."/include/linux" -- check for the folder in your version
    }
    targetname "hello" -- should be named this way (lib<libname>)
