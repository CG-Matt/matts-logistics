local icon_path = "__matts-logistics__/graphics/icons/"
local sprite_path = "__matts-logistics__/graphics/entity/"
local meld = require("meld")

local function ips_to_speed(ips)
    return 0.03125 / 15 * ips
end

local function get_animation_set(tier)
    return {
        animation_set =
        {
            filename = sprite_path .. "transport-belt/" .. tier .. "-transport-belt.png",
            priority = "extra-high",
            size = 128,
            scale = 0.5,
            frame_count = 16,
            direction_count = 20
        }
    }
end

local function transport_belt(tier, max_health, speed, next_tier)
    local belt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
    local name = tier .. "-transport-belt"
    local animation_set = get_animation_set(tier)

    meld(animation_set, belt_reader_gfx)

    belt.name = name
    belt.icon = icon_path .. name .. ".png"
    belt.minable.result = name
    belt.max_health = max_health
    -- belt.corpse = -- Uses transport-belt-remnants by default
    -- belt.dying_explosion = -- Uses transport-belt-explosion by default
    belt.belt_animation_set = animation_set
    belt.related_underground_belt = tier .. "-underground-belt"
    if next_tier then
        belt.next_upgrade = next_tier .. "-transport-belt"
    else
        belt.next_upgrade = nil
    end
    belt.speed = ips_to_speed(speed)

    return belt
end

local function underground_belt(tier, max_health, speed, distance, next_tier)
    local belt = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
    local name = tier .. "-underground-belt"
    local belt_animation_set = get_animation_set(tier)

    meld(belt_animation_set, belt_reader_gfx)

    belt.name = name
    belt.icon = icon_path .. name .. ".png"
    belt.minable.result = name
    belt.max_health = max_health
    -- belt.corpse = -- Uses underground-belt-remnants by default
    -- belt.dying_explosion = -- Uses underground-belt-explosion by default
    belt.factoriopedia_simulation = nil
    belt.max_distance = distance
    belt.belt_animation_set = belt_animation_set
    belt.speed = ips_to_speed(speed)
    belt.structure.direction_in.sheet.filename = sprite_path .. "underground-belt/" .. tier .. "-underground-belt.png"
    belt.structure.direction_out.sheet.filename = sprite_path .. "underground-belt/" .. tier .. "-underground-belt.png"
    belt.structure.direction_in_side_loading.sheet.filename = sprite_path .. "underground-belt/" .. tier .. "-underground-belt.png"
    belt.structure.direction_out_side_loading.sheet.filename = sprite_path .. "underground-belt/" .. tier .. "-underground-belt.png"
    belt.structure.back_patch.sheet.filename = sprite_path .. "underground-belt/underground-belt-back-patch.png"
    belt.structure.front_patch.sheet.filename = sprite_path .. "underground-belt/underground-belt-front-patch.png"
    if next_tier then
        belt.next_upgrade = next_tier .. "-underground-belt"
    else
        belt.next_upgrade = nil
    end

    return belt
end

local function splitter(tier, max_health, speed, next_tier)
    local belt = table.deepcopy(data.raw["splitter"]["splitter"])
    local name = tier .. "-splitter"
    local animation_set = get_animation_set(tier)

    meld(animation_set, belt_reader_gfx)

    belt.name = name
    belt.icon = icon_path .. name .. ".png"
    belt.minable.result = name
    belt.max_health = max_health
    -- belt.corpse = -- Uses transport-belt-remnants by default
    -- belt.dying_explosion = -- Uses transport-belt-explosion by default
    belt.belt_animation_set = animation_set
    if next_tier then
        belt.next_upgrade = next_tier .. "-splitter"
    else
        belt.next_upgrade = nil
    end
    belt.speed = ips_to_speed(speed)
    belt.related_transport_belt = tier .. "-transport-belt"

    -- Sprites are based on the express splitter ones so we will copy those and edit them

    belt.structure = table.deepcopy(data.raw["splitter"]["express-splitter"].structure)
    belt.structure_patch = table.deepcopy(data.raw["splitter"]["express-splitter"].structure_patch)

    belt.structure.north.filename = sprite_path .. "splitter/" .. tier .. "/splitter-north.png"
    belt.structure.east.filename = sprite_path .. "splitter/" .. tier .. "/splitter-east.png"
    belt.structure.south.filename = sprite_path .. "splitter/" .. tier .. "/splitter-south.png"
    belt.structure.west.filename = sprite_path .. "splitter/" .. tier .. "/splitter-west.png"

    belt.structure_patch.east.filename = sprite_path .. "splitter/" .. tier .. "/splitter-east-top_patch.png"
    belt.structure_patch.west.filename = sprite_path .. "splitter/" .. tier .. "/splitter-west-top_patch.png"

    return belt
end

-- Patch next upgrade for vanilla belts
if mods["space-age"] then
    data.raw["transport-belt"]["turbo-transport-belt"].next_upgrade = "ultra-fast-transport-belt"
    data.raw["underground-belt"]["turbo-underground-belt"].next_upgrade = "ultra-fast-underground-belt"
    data.raw["splitter"]["turbo-splitter"].next_upgrade = "ultra-fast-splitter"
else
    data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "ultra-fast-transport-belt"
    data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "ultra-fast-underground-belt"
    data.raw["splitter"]["express-splitter"].next_upgrade = "ultra-fast-splitter"
end

data:extend(
{
    transport_belt("ultra-fast",      300,  90, "extreme-fast"   ),
    transport_belt("extreme-fast",    350, 180, "ultra-express"  ),
    transport_belt("ultra-express",   400, 270, "extreme-express"),
    transport_belt("extreme-express", 450, 360, "ultimate"       ),
    transport_belt("ultimate",        500, 450, nil              ),

    underground_belt("ultra-fast",      300,  90, 30, "extreme-fast"   ),
    underground_belt("extreme-fast",    350, 180, 35, "ultra-express"  ),
    underground_belt("ultra-express",   400, 270, 40, "extreme-express"),
    underground_belt("extreme-express", 450, 360, 45, "ultimate"       ),
    underground_belt("ultimate",        500, 450, 50, nil              ),

    splitter("ultra-fast",      300,  90, "extreme-fast"   ),
    splitter("extreme-fast",    350, 180, "ultra-express"  ),
    splitter("ultra-express",   400, 270, "extreme-express"),
    splitter("extreme-express", 450, 360, "ultimate"       ),
    splitter("ultimate",        500, 450, nil              )
})