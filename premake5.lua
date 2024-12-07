project "glfw"
	kind "StaticLib"
	langauge "C"
	staticruntime "Off"
	warnings "Off"

	targetdir("bin/" .. outputDir .. "/%{prj.name}")
    objdir("bin-obj/" .. outputDir .. "/%{prj.name}")

	files {
		"src/**.c",
		"src/**h",
		"src/**.m",
		"include/GLFW/**.h"
	}