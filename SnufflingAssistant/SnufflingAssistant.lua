--print("'/dump GetBuildInfo()' will get you the current build info and interface version")

local function OnZoneChangedNewArea(self, event)
    print("Zone changed, finding Disturbed Earth")
end

local zoneChangeNewAreaFrame = CreateFrame("Frame")
zoneChangeNewAreaFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
zoneChangeNewAreaFrame:SetScript("OnEvent", OnZoneChangedNewArea)