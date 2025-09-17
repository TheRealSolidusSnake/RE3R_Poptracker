-- get current variant
local variant = Tracker.ActiveVariantUID
-- check variant info
IS_ITEMS_ONLY = variant:find("ItemsOnly")

-- Items
require("scripts/items_import")

-- Logic
require("scripts/logic/logic_helper")
require("scripts/logic/logic_main")

if not IS_ITEMS_ONLY then -- <--- use variant info to optimize loading
    -- Maps
    Tracker:AddMaps("maps/maps.json")    
    -- Locations
    Tracker:AddLocations("locations/Downtown.json")
    Tracker:AddLocations("locations/Subway Office.json")
    Tracker:AddLocations("locations/Substation.json")
    Tracker:AddLocations("locations/Redstone Station.json")
    Tracker:AddLocations("locations/Lower Waterway.json")
    Tracker:AddLocations("locations/Upper Waterway.json")
    Tracker:AddLocations("locations/Ground Floor.json")
    Tracker:AddLocations("locations/Rooftop.json")
    Tracker:AddLocations("locations/R First Floor.json")
    Tracker:AddLocations("locations/R Second Floor.json")
    Tracker:AddLocations("locations/R Third Floor.json")
    Tracker:AddLocations("locations/Plaza Tunnel.json")
    Tracker:AddLocations("locations/Plaza.json")
    Tracker:AddLocations("locations/H First Floor.json")
    Tracker:AddLocations("locations/H Second Floor.json")
    Tracker:AddLocations("locations/Underground Storage.json")
    Tracker:AddLocations("locations/N First Floor.json")
    Tracker:AddLocations("locations/N Second Floor.json")
    Tracker:AddLocations("locations/N Basement 1.json")
    Tracker:AddLocations("locations/N Basement 2.json")
end

-- Layout
require("scripts/layouts_import")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.26.0" then
    require("scripts/autotracking")
end