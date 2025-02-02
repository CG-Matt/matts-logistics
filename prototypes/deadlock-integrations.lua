deadlock.add_tier(
{
    transport_belt      = "ultra-fast-transport-belt",
    underground_belt    = "ultra-fast-underground-belt",
    splitter            = "ultra-fast-splitter",
    colour              = { r=0, g=211, b=37 },
    technology          = "logistics-4",
    order               = "e[matts-logistics]-a",
    loader_ingredients  =
    {
        { type = "item", name = "express-transport-belt-loader", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 50 },
        { type = "fluid", name = "lubricant", amount = 25 }
    },
    beltbox_ingredients =
    {
        { type = "item", name = "express-transport-belt-beltbox", amount = 1 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 40 },
        { type = "item", name = "processing-unit", amount = 5 },
        { type = "fluid", name = "lubricant", amount = 100 }
    }
})

deadlock.add_tier(
{
    transport_belt      = "extreme-fast-transport-belt",
    underground_belt    = "extreme-fast-underground-belt",
    splitter            = "extreme-fast-splitter",
    colour              = { r=245, g=17, b=24 },
    technology          = "logistics-5",
    order               = "e[matts-logistics]-b",
    loader_ingredients  =
    {
        { type = "item", name = "ultra-fast-transport-belt-loader", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 50 },
        { type = "item", name = "low-density-structure", amount = 2 },
        { type = "fluid", name = "lubricant", amount = 30 }
    },
    beltbox_ingredients =
    {
        { type = "item", name = "ultra-fast-transport-belt-beltbox", amount = 1 },
        { type = "item", name = "steel-plate", amount = 30 },
        { type = "item", name = "iron-gear-wheel", amount = 50 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "low-density-structure", amount = 5 },
        { type = "fluid", name = "lubricant", amount = 100 }
    }
})

deadlock.add_tier(
{
    transport_belt      = "ultra-express-transport-belt",
    underground_belt    = "ultra-express-underground-belt",
    splitter            = "ultra-express-splitter",
    colour              = { r=86, g=0, b=204 },
    technology          = "logistics-6",
    order               = "e[matts-logistics]-c",
    loader_ingredients  =
    {
        { type = "item", name = "extreme-fast-transport-belt-loader", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 50 },
        { type = "item", name = "low-density-structure", amount = 5 },
        { type = "item", name = "speed-module", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 35 }
    },
    beltbox_ingredients =
    {
        { type = "item", name = "extreme-fast-transport-belt-beltbox", amount = 1 },
        { type = "item", name = "steel-plate", amount = 40 },
        { type = "item", name = "iron-gear-wheel", amount = 60 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "low-density-structure", amount = 10 },
        { type = "item", name = "speed-module", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 100 }
    }
})

deadlock.add_tier(
{
    transport_belt      = "extreme-express-transport-belt",
    underground_belt    = "extreme-express-underground-belt",
    splitter            = "extreme-express-splitter",
    colour              = { r=0, g=0, b=204 },
    technology          = "logistics-7",
    order               = "e[matts-logistics]-d",
    loader_ingredients  =
    {
        { type = "item", name = "ultra-express-transport-belt-loader", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 50 },
        { type = "item", name = "low-density-structure", amount = 5 },
        { type = "item", name = "speed-module-2", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 40 }
    },
    beltbox_ingredients =
    {
        { type = "item", name = "ultra-express-transport-belt-beltbox", amount = 1 },
        { type = "item", name = "steel-plate", amount = 50 },
        { type = "item", name = "iron-gear-wheel", amount = 70 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "low-density-structure", amount = 10 },
        { type = "item", name = "speed-module-2", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 100 }
    }
})

deadlock.add_tier(
{
    transport_belt      = "ultimate-transport-belt",
    underground_belt    = "ultimate-underground-belt",
    splitter            = "ultimate-splitter",
    colour              = { r=220, g=220, b=220 },
    technology          = "logistics-8",
    order               = "e[matts-logistics]-e",
    loader_ingredients  =
    {
        { type = "item", name = "extreme-express-transport-belt-loader", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 50 },
        { type = "item", name = "low-density-structure", amount = 5 },
        { type = "item", name = "speed-module-3", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 50 }
    },
    beltbox_ingredients =
    {
        { type = "item", name = "extreme-express-transport-belt-beltbox", amount = 1 },
        { type = "item", name = "steel-plate", amount = 60 },
        { type = "item", name = "iron-gear-wheel", amount = 80 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "low-density-structure", amount = 10 },
        { type = "item", name = "speed-module-3", amount = 1 },
        { type = "fluid", name = "lubricant", amount = 100 }
    }
})

-- Make updates to the generated data
if settings.startup["deadlock-enable-beltboxes"].value == true then
    -- Add extra ingredients to recipes if space-age is active
    if mods["space-age"] then
        mattslib.recipe.replace_ingredient("ultra-fast-transport-belt-beltbox", "express-transport-belt-beltbox", "turbo-transport-belt-beltbox")

        mattslib.recipe.replace_ingredient("ultra-fast-transport-belt-beltbox", "steel-plate", "tungsten-plate")
        mattslib.recipe.replace_ingredient("extreme-fast-transport-belt-beltbox", "steel-plate", "tungsten-plate")
        mattslib.recipe.replace_ingredient("ultra-express-transport-belt-beltbox", "steel-plate", "tungsten-plate")
        mattslib.recipe.replace_ingredient("extreme-express-transport-belt-beltbox", "steel-plate", "tungsten-plate")
        mattslib.recipe.replace_ingredient("ultimate-transport-belt-beltbox", "steel-plate", "tungsten-plate")
    end

    -- Set next_upgrade for all beltboxes
    data.raw.furnace["express-transport-belt-beltbox"].next_upgrade = "ultra-fast-transport-belt-beltbox"
    data.raw.furnace["ultra-fast-transport-belt-beltbox"].next_upgrade = "extreme-fast-transport-belt-beltbox"
    data.raw.furnace["extreme-fast-transport-belt-beltbox"].next_upgrade = "ultra-express-transport-belt-beltbox"
    data.raw.furnace["ultra-express-transport-belt-beltbox"].next_upgrade = "extreme-express-transport-belt-beltbox"
    data.raw.furnace["extreme-express-transport-belt-beltbox"].next_upgrade = "ultimate-transport-belt-beltbox"

    -- Add additional prerequisites for technology
    if mods["space-age"] then
        table.insert(data.raw.technology["ultra-fast-transport-belt-beltbox"].prerequisites, "deadlock-stacking-4")
    else
        table.insert(data.raw.technology["ultra-fast-transport-belt-beltbox"].prerequisites, "deadlock-stacking-3")
    end

    table.insert(data.raw.technology["extreme-fast-transport-belt-beltbox"].prerequisites, "ultra-fast-transport-belt-beltbox")
    table.insert(data.raw.technology["ultra-express-transport-belt-beltbox"].prerequisites, "extreme-fast-transport-belt-beltbox")
    table.insert(data.raw.technology["extreme-express-transport-belt-beltbox"].prerequisites, "ultra-express-transport-belt-beltbox")
    table.insert(data.raw.technology["ultimate-transport-belt-beltbox"].prerequisites, "extreme-express-transport-belt-beltbox")
end

if settings.startup["deadlock-enable-loaders"].value == true then
    -- Add extra ingredients to recipes if space-age is active
    if mods["space-age"] then
        mattslib.recipe.replace_ingredient("ultra-fast-transport-belt-loader", "express-transport-belt-loader", "turbo-transport-belt-loader")
        mattslib.recipe.add_ingredient("ultra-fast-transport-belt-loader", { type = "item", name = "iron-gear-wheel", amount = -25 })
        mattslib.recipe.add_ingredient("ultra-fast-transport-belt-loader", { type = "item", name = "tungsten-plate", amount = 25 })
    end

    -- Set next_upgrade for all loaders 
    data.raw["loader-1x1"]["express-transport-belt-loader"].next_upgrade = "ultra-fast-transport-belt-loader"
    data.raw["loader-1x1"]["ultra-fast-transport-belt-loader"].next_upgrade = "extreme-fast-transport-belt-loader"
    data.raw["loader-1x1"]["extreme-fast-transport-belt-loader"].next_upgrade = "ultra-express-transport-belt-loader"
    data.raw["loader-1x1"]["ultra-express-transport-belt-loader"].next_upgrade = "extreme-express-transport-belt-loader"
    data.raw["loader-1x1"]["extreme-express-transport-belt-loader"].next_upgrade = "ultimate-transport-belt-loader"
end