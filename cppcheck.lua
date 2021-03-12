project "cppcheck"

dofile(_BUILD_DIR .. "/console_application.lua")

configuration { "*" }

uuid "810F8D2E-8D3F-4A9D-ADC5-308233BBC3EE"

includedirs {
  "externals",
  "externals/simplecpp",
  "externals/tinyxml",
  "lib",
}

files {
  "cli/*.cpp",
  "lib/*.cpp",
  "externals/simplecpp/simplecpp.cpp",
  "externals/tinyxml/*.cpp",
}

-- Override the targetdir to the runtime/tools/cppcheck/bin directory
target_dir=_TOOLS_DIR .. "/cppcheck/bin"
targetdir(target_dir)

if (_PLATFORM_LINUX) then
  -- Copy the necessary cfg files that cppcheck requires to load at runtime
  postbuildcommands {
    "cp cfg/std.cfg " .. target_dir,
  }
end

if (_PLATFORM_MACOS) then
  -- Copy the necessary cfg files that cppcheck requires to load at runtime
  postbuildcommands {
    "cp cfg/std.cfg " .. target_dir,
  }
end

if (_PLATFORM_WINDOWS) then
  links {
    "Shlwapi",
  }

  -- Copy the necessary cfg files that cppcheck requires to load at runtime
  -- For Windows, we need to use copy which expects windows style path seperators
  local source_path=path.translate("cfg/")
  local destination_path=path.translate(target_dir)
  postbuildcommands {
    "copy " .. source_path .. "std.cfg " .. destination_path,
    "copy " .. source_path .. "windows.cfg " .. destination_path,
  }
end
