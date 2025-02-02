-- Reorganising vanilla logistics if logistics are enabled
if settings.startup["matts-logistics-transport-belts"].value == true then

    require("prototypes.recipe.transport-belts-updates")

    -- The empty string is intentional
    local tiers = { "", "fast", "express" }
    local tier_order = { "a", "b", "c" }
    local types = { "transport-belt", "underground-belt", "splitter" }
    local order_prefix = "a[vanilla]-"

    if mods["space-age"] then
        table.insert(tiers, "turbo")
        table.insert(tier_order, "d")
    end

    -- Loop over all types and tiers and change order and subgroup
    for _, type in ipairs(types) do
        for tier_idx, tier in ipairs(tiers) do
            local name = tier
            if tier:len() > 0 then name = name .. "-" end
            name = name .. type
            data.raw.item[name].subgroup = "matts-" .. type .. "s"
            data.raw.item[name].order = order_prefix .. tier_order[tier_idx]
        end
    end
end