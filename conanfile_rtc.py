from conans import ConanFile


class CppcheckConan(ConanFile):
    name = "cppcheck"
    version = "1.90"
    url = "https://github.com/Esri/cppcheck/tree/runtimecore"
    license = "https://github.com/Esri/cppcheck/blob/runtimecore/COPYING"
    description = "Static analysis of C/C++ code"

    # Use the OS default to pick the correct executables
    settings = "os"

    def package(self):
        base = self.source_folder + "/"

        # tools
        tools = "tools/cppcheck"
        self.copy("*", src=base + "../../" + tools, dst=tools, excludes=["*.exp", "*.lib", "*.pdb"])
