local icon_path = "__matts-logistics__/graphics/icons/"
local sprite_path = "__matts-logistics__/graphics/entity/"

local ss2 = table.deepcopy(data.raw["electric-pole"]["substation"])

ss2.name = "substation-2"
ss2.icon = icon_path .. "substation-2.png"
ss2.minable.result = "substation-2"
ss2.max_health = ss2.max_health * 1.5
ss2.pictures.layers[1].filename = sprite_path .. "substation-2.png"
ss2.maximum_wire_distance = 36
ss2.supply_area_distance = 18

local ss3 = table.deepcopy(data.raw["electric-pole"]["substation"])

ss3.name = "substation-3"
ss3.icon = icon_path .. "substation-3.png"
ss3.minable.result = "substation-3"
ss3.max_health = ss3.max_health * 2
ss3.pictures.layers[1].filename = sprite_path .. "substation-3.png"
ss3.maximum_wire_distance = 50
ss3.supply_area_distance = 25

data:extend({ ss2, ss3 })