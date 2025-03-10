data:extend(
{
    {
        type = "recipe",
        name = "uranium-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/uranium-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "uranium-asteroid-chunk", amount = 1},
        {type = "fluid", name = "sulfuric-acid", amount = 20}
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "uranium-ore", amount = 20},
        {type = "item", name = "uranium-asteroid-chunk", amount = 1, probability = 0.2}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "advanced-uranium-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/advanced-uranium-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "uranium-asteroid-chunk", amount = 1},
        {type = "fluid", name = "sulfuric-acid", amount = 20}
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "uranium-ore", amount = 10},
        {type = "item", name = "uranium-235", amount = 1, probability = 0.05},
        {type = "item", name = "uranium-238", amount = 1, probability = 0.95},
        {type = "item", name = "uranium-asteroid-chunk", amount = 1, probability = 0.05}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "rock-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/rock-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "rock-asteroid-chunk", amount = 1},
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "stone", amount = 20},
        {type = "item", name = "rock-asteroid-chunk", amount = 1, probability = 0.2}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "advanced-rock-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/advanced-rock-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "rock-asteroid-chunk", amount = 1},
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "stone", amount = 5},
        {type = "item", name = "tungsten-ore", amount = 5},
        {type = "item", name = "rock-asteroid-chunk", amount = 1, probability = 0.05}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "chemical-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/chemical-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "chemical-asteroid-chunk", amount = 1},
        },
        energy_required = 2,
        results =
        {
        {type = "fluid", name = "ammonia", amount = 20},
        {type = "item", name = "chemical-asteroid-chunk", amount = 1, probability = 0.2}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "advanced-chemical-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/advanced-chemical-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "chemical-asteroid-chunk", amount = 1},
        },
        energy_required = 2,
        results =
        {
        {type = "fluid", name = "ammonia", amount = 5},
        {type = "fluid", name = "fluorine", amount = 5},
        {type = "fluid", name = "lithium-brine", amount = 5},
        {type = "item", name = "chemical-asteroid-chunk", amount = 1, probability = 0.05}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "scrap-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/scrap-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "scrap-asteroid-chunk", amount = 1},
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "scrap", amount = 20},
        {type = "item", name = "scrap-asteroid-chunk", amount = 1, probability = 0.2}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "advanced-scrap-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/advanced-scrap-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "scrap-asteroid-chunk", amount = 1},
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "scrap", amount_min = 5, amount_max = 50},
        {type = "item", name = "scrap-asteroid-chunk", amount = 1, probability = 0.05}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "organic-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/organic-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "organic-asteroid-chunk", amount = 1},
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "spoilage", amount_min = 5, amount_max = 50},
        {type = "item", name = "organic-asteroid-chunk", amount = 1, probability = 0.2}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "advanced-organic-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/advanced-organic-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "organic-asteroid-chunk", amount = 1},
        {type = "item", name = "nutrients", amount = 5},
        {type = "fluid", name = "water", amount = 50},
    
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "pentapod-egg", amount = 1, probability = 0.1},
        {type = "item", name = "yumako", amount = 5, probability = 0.5},
        {type = "item", name = "jellynut", amount = 10, probability = 0.125},
        {type = "item", name = "organic-asteroid-chunk", amount = 1, probability = 0.05}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "petrified-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/petrified-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "petrified-asteroid-chunk", amount = 1},
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "wood", amount_min = 5, amount_max = 20},
        {type = "item", name = "raw-fish", amount = 1, probability = 0.4},
        {type = "item", name = "petrified-asteroid-chunk", amount = 1, probability = 0.2}
        },
        allow_productivity = true,
        allow_decomposition = false
    },
    {
        type = "recipe",
        name = "advanced-petrified-asteroid-crushing",
        icon = "__More-Asteroids__/graphics/icons/advanced-petrified-asteroid-crushing.png",
        category = "crushing",
        subgroup="space-crushing",
        order = "b-a-a",
        auto_recycle = false,
        enabled = false,
        ingredients =
        {
        {type = "item", name = "petrified-asteroid-chunk", amount = 1},
        {type = "item", name = "bioflux", amount = 5},
        {type = "fluid", name = "fluoroketone-cold", amount = 10},
    
        },
        energy_required = 2,
        results =
        {
        {type = "item", name = "biter-egg", amount = 1},
        {type = "item", name = "petrified-asteroid-chunk", amount = 1, probability = 0.05}
        },
        allow_productivity = true,
        allow_decomposition = false
    }
  })