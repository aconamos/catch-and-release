-- more-fish.lua
-- asher_sky:More Fish

-- placeables: new items

local salmon_placeable = {
    name = "salmon-placeable",
    type = "item",
    icon = "__more-fish__/graphics/icons/Raw_Salmon_JE2_BE2.png",
    icon_size = 160,
    place_result = "salmon",
    stack_size = 100
}
local cod_placeable = {
    name = "cod-placeable",
    type = "item",
    icon = "__more-fish__/graphics/icons/Raw_Cod_JE4_BE2.png",
    icon_size = 160,
    place_result = "cod",
    stack_size = 100
}
local pufferfish_placeable = {
    name = "pufferfish-placeable",
    type = "item",
    icon = "__more-fish__/graphics/icons/Pufferfish_(item)_JE5_BE2.png",
    icon_size = 160,
    place_result = "pufferfish",
    stack_size = 100
}
local clownfish_placeable = {
    name = "clownfish-placeable",
    type = "item",
    icon = "__more-fish__/graphics/icons/Tropical_Fish_JE2_BE2.png",
    icon_size = 160,
    place_result = "clownfish",
    stack_size = 100
}

-- entities: modify the entities 

local salmon = table.deepcopy(data.raw["fish"]["salmon"])
local cod = table.deepcopy(data.raw["fish"]["cod"])
local pufferfish = table.deepcopy(data.raw["fish"]["pufferfish"])
local clownfish = table.deepcopy(data.raw["fish"]["clownfish"])
salmon.minable = {mining_time = 0.4, result = "salmon-placeable", count = 1}
cod.minable = {mining_time = 0.4, result = "cod-placeable", count = 1}
pufferfish.minable = {mining_time = 0.4, result = "pufferfish-placeable", count = 1}
clownfish.minable = {mining_time = 0.4, result = "clownfish-placeable", count = 1}

-- crafting: add recipes to turn them into the original raw fish

local salmon_placeable_to_raw = {
    name = "salmon-placeable-to-raw",
    type = "recipe",
    ingredients = {{"salmon-placeable", 1}},
    result = "raw-salmon",
    result_count = 5,
    enabled = true,
    show_amount_in_title = true
}
local cod_placeable_to_raw = {
    name = "cod-placeable-to-raw",
    type = "recipe",
    ingredients = {{"cod-placeable", 1}},
    result = "raw-cod",
    result_count = 5,
    enabled = true,
    show_amount_in_title = true
}
local pufferfish_placeable_to_raw = {
    name = "pufferfish-placeable-to-raw",
    type = "recipe",
    ingredients = {{"pufferfish-placeable", 1}},
    result = "raw-pufferfish",
    result_count = 2,
    enabled = true,
    show_amount_in_title = true
}
local clownfish_placeable_to_raw = {
    name = "clownfish-placeable-to-raw",
    type = "recipe",
    ingredients = {{"clownfish-placeable", 1}},
    result = "raw-clownfish",
    enabled = true
}

data:extend({
    salmon_placeable,
    cod_placeable,
    pufferfish_placeable,
    clownfish_placeable,
    salmon,
    cod,
    pufferfish,
    clownfish,
    salmon_placeable_to_raw,
    cod_placeable_to_raw,
    pufferfish_placeable_to_raw,
    clownfish_placeable_to_raw
})