local info =
{
	LrSdkVersion        = 3.0,
	LrToolkitIdentifier = 'de.fabrizio-branca.exposuretimecheck',
	LrPluginName        = LOC "$$$/ExposureTimeCheck/PluginName=Exposure Time Check",
	LrPluginInfoUrl     = 'http://www.fabrizio-branca.de/',
	
	VERSION = { major=0, minor=1, revision=1, build=0, },
	
	LrMetadataProvider = 'ExposureTimeCheckMetadataDefinition.lua',
	
	LrExportMenuItems = {
	    {
    		title = LOC "$$$/ExposureTimeCheck/UpdateMenuItem=Update exposure time factor for selected photos",
    		file = "Update.lua",
			enabledWhen = 'photosAvailable',
        },
    },
	
	LrLibraryMenuItems = {
	    {
    		title = LOC "$$$/ExposureTimeCheck/UpdateMenuItem=Update exposure time factor for selected photos",
    		file = "Update.lua",
			enabledWhen = 'photosAvailable',
        },
    },
}

return info
