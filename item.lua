local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")

data:extend({
    {
        type = "item",
        name = "rock-asteroid-chunk",
        icon = "__More-Asteroids__/graphics/icons/rock-asteroid-chunk.png",
        subgroup = "space-material",
        order = "a[metallic]-e[chunk]",
        inventory_move_sound = space_age_item_sounds.rock_inventory_move,
        pick_sound = space_age_item_sounds.rock_inventory_pickup,
        drop_sound = space_age_item_sounds.rock_inventory_move,
        stack_size = 1,
        weight = 100 * kg,
        random_tint_color = item_tints.iron_rust
      },
      {
        type = "item",
        name = "uranium-asteroid-chunk",
        icon = "__More-Asteroids__/graphics/icons/uranium-asteroid-chunk.png",
        subgroup = "space-material",
        order = "a[metallic]-e[chunk]",
        inventory_move_sound = space_age_item_sounds.rock_inventory_move,
        pick_sound = space_age_item_sounds.rock_inventory_pickup,
        drop_sound = space_age_item_sounds.rock_inventory_move,
        stack_size = 1,
        weight = 100 * kg,
        random_tint_color = item_tints.iron_rust
      },
      {
        type = "item",
        name = "scrap-asteroid-chunk",
        icon = "__More-Asteroids__/graphics/icons/scrap-asteroid-chunk.png",
        subgroup = "space-material",
        order = "a[metallic]-e[chunk]",
        inventory_move_sound = space_age_item_sounds.rock_inventory_move,
        pick_sound = space_age_item_sounds.rock_inventory_pickup,
        drop_sound = space_age_item_sounds.rock_inventory_move,
        stack_size = 1,
        weight = 100 * kg,
        random_tint_color = item_tints.iron_rust
      },
      {
        type = "item",
        name = "organic-asteroid-chunk",
        icon = "__More-Asteroids__/graphics/icons/organic-asteroid-chunk.png",
        subgroup = "space-material",
        order = "a[metallic]-e[chunk]",
        inventory_move_sound = space_age_item_sounds.sulfur_inventory_move,
        pick_sound = space_age_item_sounds.resource_inventory_pickup,
        drop_sound = space_age_item_sounds.sulfur_inventory_move,
        stack_size = 1,
        weight = 100 * kg,
        random_tint_color = item_tints.iron_rust
      },
      {
        type = "item",
        name = "petrified-asteroid-chunk",
        icon = "__More-Asteroids__/graphics/icons/petrified-asteroid-chunk.png",
        subgroup = "space-material",
        order = "a[metallic]-e[chunk]",
        inventory_move_sound = space_age_item_sounds.sulfur_inventory_move,
        pick_sound = space_age_item_sounds.resource_inventory_pickup,
        drop_sound = space_age_item_sounds.sulfur_inventory_move,
        stack_size = 1,
        weight = 100 * kg,
        random_tint_color = item_tints.iron_rust
      },
      {
        type = "item",
        name = "chemical-asteroid-chunk",
        icon = "__More-Asteroids__/graphics/icons/chemical-asteroid-chunk.png",
        subgroup = "space-material",
        order = "a[metallic]-e[chunk]",
        inventory_move_sound = space_age_item_sounds.sulfur_inventory_move,
        pick_sound = space_age_item_sounds.resource_inventory_pickup,
        drop_sound = space_age_item_sounds.sulfur_inventory_move,
        stack_size = 1,
        weight = 100 * kg,
        random_tint_color = item_tints.iron_rust
      }
})