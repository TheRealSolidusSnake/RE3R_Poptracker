HINT_MAPPING = {}

for id, locations in pairs(LOCATION_MAPPING) do
    for _, loc in ipairs(locations) do
        HINT_MAPPING[id] = loc
    end
end
