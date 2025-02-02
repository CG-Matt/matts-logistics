local icon_path = "__matts-logistics__/graphics/icons/"
local item_sounds = require("__base__.prototypes.item_sounds")

local function transport_belt(tier, order)
    return {
        type = "item",
        name = tier .. "-transport-belt",
        icon = icon_path .. tier .. "-transport-belt.png",
        subgroup = "matts-transport-belts",
        color_hint = { text = "1" }, -- ??? What does this do -- Shound go up with tier
        order = "b[matts-logistics]-" .. order,
        inventory_move_sound = item_sounds.transport_belt_inventory_move,
        pick_sound = item_sounds.transport_belt_inventory_pickup,
        drop_sound = item_sounds.transport_belt_inventory_move,
        place_result = tier .. "-transport-belt",
        stack_size = 100,
        weight = 20*kg
    }
end

local function underground_belt(tier, order)
    return {
        type = "item",
        name = tier .. "-underground-belt",
        icon = icon_path .. tier .. "-underground-belt.png",
        subgroup = "matts-underground-belts",
        color_hint = { text = "1" }, -- ??? What does this do -- Shound go up with tier
        order = "b[matts-logistics]-" .. order,
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = tier .. "-underground-belt",
        stack_size = 50,
        weight = 40*kg
    }
end

local function splitter(tier, order)
    return {
        type = "item",
        name = tier .. "-splitter",
        icon = icon_path .. tier .. "-splitter.png",
        subgroup = "matts-splitters",
        color_hint = { text = "1" }, -- ??? What does this do -- Shound go up with tier
        order = "b[matts-logistics]-" .. order,
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = tier .. "-splitter",
        stack_size = 50,
        weight = 40*kg
    }
end

data:extend(
{
    transport_belt("ultra-fast",      "a"),
    transport_belt("extreme-fast",    "b"),
    transport_belt("ultra-express",   "c"),
    transport_belt("extreme-express", "d"),
    transport_belt("ultimate",        "e"),

    underground_belt("ultra-fast",      "a"),
    underground_belt("extreme-fast",    "b"),
    underground_belt("ultra-express",   "c"),
    underground_belt("extreme-express", "d"),
    underground_belt("ultimate",        "e"),

    splitter("ultra-fast",      "a"),
    splitter("extreme-fast",    "b"),
    splitter("ultra-express",   "c"),
    splitter("extreme-express", "d"),
    splitter("ultimate",        "e")
})