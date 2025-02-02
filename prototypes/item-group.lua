if settings.startup["matts-logistics-transport-belts"].value == true then
    data:extend(
    {
        -- Matt's Logistics / Belts
        {
            type = "item-subgroup",
            name = "matts-transport-belts",
            group = "logistics",
            order = "b-a-a"
        },
        {
            type = "item-subgroup",
            name = "matts-underground-belts",
            group = "logistics",
            order = "b-a-b"
        },
        {
            type = "item-subgroup",
            name = "matts-splitters",
            group = "logistics",
            order = "b-a-c"
        },
        {
            type = "item-subgroup",
            name = "matts-transport-belt-loaders",
            group = "logistics",
            order = "b-a-d"
        }
    })
end