project "imgui"
	kind "StaticLib"
	language "C++"

	targetdir("%{wks.location}/Binaries/" .. OutputDir .. "/%{prj.name}")
  	objdir("%{wks.location}/Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imgui_tables.cpp",
	}

	includedirs
	{
		".",
		"backends/"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"