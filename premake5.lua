project "glfw"
	kind "StaticLib"
	language "C"
	staticruntime "On"
	warnings "Off"

	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	targetdir ("bin-obj/" .. outputDir .. "/%{prj.name}")

	files {
		"include/**.h",
		"src/**.h",
		"src/**.c",
		"src/**.m"
	}

	filter "system:linux"
		systemversion "latest"
		pic "On"
		defines {
		"_GLFW_X11"
		}

	filter "system:windows"
		systemversion "latest"
		defines {
			"_GLFW_WIN32",
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "system:macosx"
		pic "On"
		defines {
			"_GLFW_COCOA"
		}