project "imgui"
    kind "StaticLib"
    language "C++"

    targetdir ("Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir    ("Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imgui_tables.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"