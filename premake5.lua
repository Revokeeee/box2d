project "Box2D"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "off"

    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "src/**.h",
        "src/**.cpp",
        "include/**.h",
    }
    
	filter "system:windows"
        systemversion "latest"


    filter "configurations:Debug"
        runtime "Debug"
        optimize "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"            
