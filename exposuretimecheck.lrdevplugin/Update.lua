local LrTasks = import 'LrTasks'
local catalog = import "LrApplication".activeCatalog()

function updateExposureTimeCheckValues()
	LrTasks.startAsyncTask(function()
		catalog:withWriteAccessDo( "Filename to title", function()
			local cat_photos = catalog.targetPhotos
			-- loop through each of the photos
			for i, photo in ipairs(cat_photos) do
				
				shutterSpeed = photo:getRawMetadata('shutterSpeed')
				focalLength = photo:getRawMetadata('focalLength')
				
				factor = shutterSpeed / (1/focalLength)
				
				factor = tonumber(string.format("%.0f", factor))
				
				if factor >= 9 then
					factor = '9+'
				end
				
				photo:setPropertyForPlugin(_PLUGIN, 'exposureTimeFactor', tostring(factor))
			end
		end)
	end)
end

updateExposureTimeCheckValues()
