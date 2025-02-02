local icon_path = "__matts-logistics__/graphics/technology/"
local entry_prerequisites = {}
local science_packs = {}

if mods["space-age"] then
    entry_prerequisites = { "turbo-transport-belt", "utility-science-pack" }
    science_packs =
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
        { "metallurgic-science-pack", 1 }
    }
else
    entry_prerequisites = { "logistics-3", "utility-science-pack" }
    science_packs =
    {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 }
    }
end

data:extend(
{
    {
        type = "technology",
        name = "logistics-4",
        icon = icon_path .. "ultra-fast-logistics.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ultra-fast-transport-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "ultra-fast-underground-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "ultra-fast-splitter"
            }
        },
        prerequisites = entry_prerequisites,
        unit =
        {
            count = 400,
            ingredients = science_packs,
            time = 20
        }
    },
    {
        type = "technology",
        name = "logistics-5",
        icon = icon_path .. "extreme-fast-logistics.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "extreme-fast-transport-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "extreme-fast-underground-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "extreme-fast-splitter"
            }
        },
        prerequisites = { "logistics-4" },
        unit =
        {
            count = 550,
            ingredients = science_packs,
            time = 30
        }
    },
    {
        type = "technology",
        name = "logistics-6",
        icon = icon_path .. "ultra-express-logistics.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ultra-express-transport-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "ultra-express-underground-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "ultra-express-splitter"
            }
        },
        prerequisites = { "logistics-5", "speed-module" },
        unit =
        {
            count = 700,
            ingredients = science_packs,
            time = 40
        }
    },
    {
        type = "technology",
        name = "logistics-7",
        icon = icon_path .. "extreme-express-logistics.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "extreme-express-transport-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "extreme-express-underground-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "extreme-express-splitter"
            }
        },
        prerequisites = { "logistics-6", "speed-module-2" },
        unit =
        {
            count = 850,
            ingredients = science_packs,
            time = 50
        }
    },
    {
        type = "technology",
        name = "logistics-8",
        icon = icon_path .. "ultimate-logistics.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ultimate-transport-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "ultimate-underground-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "ultimate-splitter"
            }
        },
        prerequisites = { "logistics-7", "speed-module-3" },
        unit =
        {
            count = 1000,
            ingredients = science_packs,
            time = 60
        }
    }
})