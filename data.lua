require("prototypes.item-group")

if settings.startup["matts-logistics-transport-belts"].value == true then
    require("prototypes.item.transport-belts")
    require("prototypes.recipe.transport-belts")
    require("prototypes.entity.transport-belts")
    require("prototypes.technology.transport-belts")

    if deadlock then
        require("prototypes.deadlock-integrations")
    end
end

if settings.startup["matts-logistics-longer-underground-pipes"].value == true then
    require("prototypes.entity.pipes")
    require("prototypes.recipe.pipes")
    require("prototypes.technology.pipes")
end

if settings.startup["matts-logistics-substations"].value == true then
    -- Note: Did not port the nuclear explosion gimick from advanced substations
    require("prototypes.item.substations")
    require("prototypes.recipe.substations")
    require("prototypes.entity.substations")
    require("prototypes.technology.substations")
end