data:extend(
{
    {
        type = "recipe",
        name = "matts-medium-pipe-to-ground",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            { type = "item", name = "pipe", amount = 30 },
            { type = "item", name = "iron-plate", amount = 20 }
        },
        results = { { type = "item", name = "matts-medium-pipe-to-ground", amount = 2 } }
    },
    {
        type = "recipe",
        category = "advanced-crafting",
        name = "matts-long-pipe-to-ground",
        enabled = false,
        energy_required = 30,
        ingredients =
        {
            { type = "item", name = "pipe", amount = 50 },
            { type = "item", name = "steel-plate", amount = 30 },
            { type = "item", name = "plastic-bar", amount = 30 }
        },
        results = { { type = "item", name = "matts-long-pipe-to-ground", amount = 2 } }
    },
    {
        type = "recipe",
        category = "advanced-crafting",
        name = "matts-ultra-pipe-to-ground",
        enabled = false,
        energy_required = 60,
        ingredients =
        {
            { type = "item", name = "matts-long-pipe-to-ground", amount = 4 },
            { type = "item", name = "steel-plate", amount = 4 },
            { type = "item", name = "plastic-bar", amount = 4 },
            { type = "item", name = "pump", amount = 1 }
        },
        results = { { type = "item", name = "matts-ultra-pipe-to-ground", amount = 2 } }
    },
    {
        type = "recipe",
        category = "crafting-with-fluid",
        name = "matts-continental-pipe-to-ground",
        enabled = false,
        energy_required = 120,
        ingredients =
        {
            { type = "item", name = "matts-ultra-pipe-to-ground", amount = 4 },
            { type = "item", name = "steel-plate", amount = 20 },
            { type = "item", name = "plastic-bar", amount = 20 },
            { type = "fluid", name = "lubricant", amount = 5 }
        },
        results = { { type = "item", name = "matts-continental-pipe-to-ground", amount = 2 } }
    }
})