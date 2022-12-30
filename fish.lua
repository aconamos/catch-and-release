-- fish.lua

-- This file does three things: 
--   fish_placeable: adds an entirely new item. I could have tried modifying the original one, but I felt like this was more proper. I also want to be able to keep the original functionality of raw fish as well, if you're a monster.
--      fish_entity: adds another entity, to replace the default raw fish
--    fish_crafting: adds a crafting recipe to turn the new live fish item into raw fish

-- fish_placeable

local fish_placeable = {
    name = "fish-placeable",
    type = "item",
    icon = "__base__/graphics/icons/fish.png",
    icon_size = 64,
    place_result = "fish",
    stack_size = 100
}

data:extend{fish_placeable}

-- fish_entity

local fish = table.deepcopy(data.raw["fish"]["fish"])
fish.minable = {mining_time = 0.4, result = "fish-placeable", count = 1}

data:extend{fish}

-- fish_crafting

local placeable_to_raw = {
    name = "placeable-to-raw",
    type = "recipe",
    ingredients = {{"fish-placeable", 1}},
    result = "raw-fish",
    result_count = 5,
    enabled = true,
    show_amount_in_title = true
}

data:extend{placeable_to_raw}