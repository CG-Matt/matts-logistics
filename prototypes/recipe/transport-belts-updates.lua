-- Additional support for other modded items

if data.raw.item["advanced-processing-unit"] then
    mattslib.recipe.replace_ingredient("extreme-express-splitter", "processing-unit", "advanced-processing-unit", 10)
    mattslib.recipe.replace_ingredient("ultimate-splitter", "processing-unit", "advanced-processing-unit", 20)
end