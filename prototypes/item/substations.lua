local icon_path = "__matts-logistics__/graphics/icons/"

local ss2 = table.deepcopy(data.raw.item["substation"])

ss2.name = "substation-2"
ss2.icon = icon_path .. "substation-2.png"
ss2.order = ss2.order .. "-b"
ss2.place_result = "substation-2"

local ss3 = table.deepcopy(data.raw.item["substation"])

ss3.name = "substation-3"
ss3.icon = icon_path .. "substation-3.png"
ss3.order = ss3.order .. "-c"
ss3.place_result = "substation-3"

data:extend({ ss2, ss3 })