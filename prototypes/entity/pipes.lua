local icon_path = "__matts-logistics__/graphics/icons/"
local sprite_path = "__matts-logistics__/graphics/entity/"

local function makePipe(name, distance)
    local pipe = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])

    pipe.name = "matts-" .. name .. "-pipe-to-ground"
    pipe.icon = icon_path .. name .. "-pipe-to-ground.png"
    pipe.minable.result = "matts-" .. name .. "-pipe-to-ground"
    pipe.fluid_box.pipe_connections[2].max_underground_distance = distance

    pipe.pictures.north.filename = sprite_path .. "pipe-to-ground/" .. name .. "/up.png"
    pipe.pictures.south.filename = sprite_path .. "pipe-to-ground/" .. name .. "/down.png"
    pipe.pictures.west.filename = sprite_path .. "pipe-to-ground/" .. name .. "/left.png"
    pipe.pictures.east.filename = sprite_path .. "pipe-to-ground/" .. name .. "/right.png"

    return pipe
end

data:extend(
{
    {
        type = "item",
        name = "matts-medium-pipe-to-ground",
        icon = icon_path .. "medium-pipe-to-ground.png",
        subgroup = "energy-pipe-distribution",
        order = "a[pipe]-b[pipe-to-ground]-a",
        place_result = "matts-medium-pipe-to-ground",
        stack_size = 30
    },
    makePipe("medium", 30),

    {
        type = "item",
        name = "matts-long-pipe-to-ground",
        icon = icon_path .. "long-pipe-to-ground.png",
        subgroup = "energy-pipe-distribution",
        order = "a[pipe]-b[pipe-to-ground]-b",
        place_result = "matts-long-pipe-to-ground",
        stack_size = 20
    },
    makePipe("long", 50),

    {
        type = "item",
        name = "matts-ultra-pipe-to-ground",
        icon = icon_path .. "ultra-pipe-to-ground.png",
        subgroup = "energy-pipe-distribution",
        order = "a[pipe]-b[pipe-to-ground]-c",
        place_result = "matts-ultra-pipe-to-ground",
        stack_size = 10
    },
    makePipe("ultra", 120),

    {
        type = "item",
        name = "matts-continental-pipe-to-ground",
        icon = icon_path .. "continental-pipe-to-ground.png",
        subgroup = "energy-pipe-distribution",
        order = "a[pipe]-b[pipe-to-ground]-d",
        place_result = "matts-continental-pipe-to-ground",
        stack_size = 2
    },
    makePipe("continental", 255)
})