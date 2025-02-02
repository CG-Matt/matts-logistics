local graphics_path = "__matts-logistics__/graphics/technology/"

data:extend(
{
    {
        type = "technology",
        name = "electric-energy-distribution-3",
        icon = graphics_path .. "electric-energy-distribution-3.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "substation-2"
            }
        },
        prerequisites = { "electric-energy-distribution-2", "production-science-pack" },
        unit =
        {
            count = 150,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 45
        }
    },
    {
        type = "technology",
        name = "electric-energy-distribution-4",
        icon = graphics_path .. "electric-energy-distribution-4.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "substation-3"
            }
        },
        prerequisites = { "electric-energy-distribution-3", "utility-science-pack", "nuclear-power" },
        unit =
        {
            count = 300,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 200
        }
    }
})