--print("'/dump GetBuildInfo()' will get you the current build info and interface version")

local function OnZoneChangedNewArea(self, event)
    print("Zone changed, finding Disturbed Earth nodes")

    --Get the current zone
    local currentZone = C_Map.GetBestMapForUnit("player")

    --Find the Disturbed Earth node locations
    local nodeLocations = C_AreaPoiInfo.GetAreaPOIForMap(currentZone)
    for i, node in ipairs(nodeLocations) do
        print(C_AreaPoiInfo.GetAreaPOIInfo(currentZone, node).name)
    end
end

local zoneChangeNewAreaFrame = CreateFrame("Frame")
zoneChangeNewAreaFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
zoneChangeNewAreaFrame:SetScript("OnEvent", OnZoneChangedNewArea)