project "cppcheck"

  local prj = project()
  local prjDir = prj.basedir

  -- -------------------------------------------------------------
  -- project
  -- -------------------------------------------------------------

  -- common project settings

  dofile (_BUILD_DIR .. "/3rdparty_shared_project.lua")

  -- project specific settings

  kind "ConsoleApp"

  uuid "810F8D2E-8D3F-4A9D-ADC5-308233BBC3EE"

  includedirs {
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

  -- -------------------------------------------------------------
  -- configurations
  -- -------------------------------------------------------------

  if (os.is("windows") and not _TARGET_IS_WINUWP) then
    -- -------------------------------------------------------------
    -- configuration { "windows" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_win.lua")

    -- project specific configuration settings

    -- configuration { "windows" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_win_x86_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_win_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x32" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_win_x86_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x32" }

    -- -------------------------------------------------------------
    -- configuration { "windows", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_win_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "windows", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (os.is("linux") and not _OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "linux" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_linux.lua")

    -- project specific configuration settings

    -- configuration { "linux" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_linux_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "linux", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_linux_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "linux", "Release", "x64" }

    -- -------------------------------------------------------------
  end

  if (os.is("macosx") and not _OS_IS_IOS and not _OS_IS_ANDROID) then
    -- -------------------------------------------------------------
    -- configuration { "macosx" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_mac.lua")

    -- project specific configuration settings

    -- configuration { "macosx" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Debug", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_mac_x64_debug.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Debug", "x64" }

    -- -------------------------------------------------------------
    -- configuration { "macosx", "Release", "x64" }
    -- -------------------------------------------------------------

    -- common configuration settings

    dofile (_BUILD_DIR .. "/shared_mac_x64_release.lua")

    -- project specific configuration settings

    -- configuration { "macosx", "Release", "x64" }

    -- -------------------------------------------------------------
  end
