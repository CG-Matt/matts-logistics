data:extend(
{
    {
        type = "recipe",
        name = "substation-2",
        enabled = false,
        ingredients =
        {
            { type = "item", name = "substation", amount = 1 },
            { type = "item", name = "big-electric-pole", amount = 1 },
            { type = "item", name = "advanced-circuit", amount = 10 },
            { type = "item", name = "steel-plate", amount = 40 },
            { type = "item", name = "copper-plate", amount = 20 }
        },
        results = { { type = "item", name = "substation-2", amount = 1 } }
    },
    {
        type = "recipe",
        name = "substation-3",
        enabled = false,
        ingredients =
        {
            { type = "item", name = "substation-2", amount = 1 },
            { type = "item", name = "big-electric-pole", amount = 1 },
            { type = "item", name = "processing-unit", amount = 20 },
            { type = "item", name = "refined-concrete", amount = 100 },
            { type = "item", name = "copper-plate", amount = 50 },
            { type = "item", name = "uranium-fuel-cell", amount = 5 }
        },
        results = { { type = "item", name = "substation-3", amount = 1 } }
    }
})