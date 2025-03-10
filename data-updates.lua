--File to alter data in base/space-age game files

--Adding Fluidboxes to the asteroid crusher
local crusher = data.raw["assembling-machine"]["crusher"]
crusher.fluid_boxes = {
  {
    production_type = "input",
    volume = 1000,
    pipe_connections = {
      { flow_direction="input-output", direction = defines.direction.west, position = {-0.5, -1} },
      { flow_direction="input-output", direction = defines.direction.west, position = {-0.5, 1} },
      { flow_direction="input-output", direction = defines.direction.east, position = {0.5, 0} }}
  },
  {
    production_type = "output",
    volume = 1000,
    pipe_connections = {
      { flow_direction="output", direction = defines.direction.west, position = {-0.5, 0} }}
  },
  {
    production_type = "output",
    volume = 1000,
    pipe_connections = {
      { flow_direction="output", direction = defines.direction.east, position = {0.5, -1} }}
  },
  {
    production_type = "output",
    volume = 1000,
    pipe_connections = {
      { flow_direction="output", direction = defines.direction.east, position = {0.5, 1} }}
  }
}

crusher.fluid_boxes_off_when_no_fluid_recipe = true;

--adding the asteroid spawn definitions to the original data
--had to comment out the code block that added definitions to the connections due to some NIL error
-- theoretically the additional asteroids shouldn't spawn in between the planets because of this but they do anyway. Idk how
local planets = data.raw.planet
local locations = data.raw["space-location"]
local connections = data.raw["space-connection"]
local more_asteroid_util = require("__More-Asteroids__.more-asteroids-spawn-definitions")

local planet_stuffmapping = {}
planet_stuffmapping["vulcanus"] = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_vulcanus, 0.9)
planet_stuffmapping["gleba"] = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_gleba, 0.9)
planet_stuffmapping["fulgora"] = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_fulgora, 0.9)
planet_stuffmapping["aquilo"] = more_asteroid_util.spawn_definitions(more_asteroid_util.fulgora_aquilo, 0.9)


for _,planet in pairs(planets) do
  local hi = planet_stuffmapping[planet.name]
  if planet.name == "nauvis" then
    hi = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_vulcanus, 0.1)
  elseif planet.name == "vulcanus" then
    hi = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_vulcanus, 0.9)
  elseif planet.name == "gleba" then
    hi = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_gleba, 0.9)
  elseif planet.name == "fulgora" then
    hi = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_fulgora, 0.9)
  else 
    hi = more_asteroid_util.spawn_definitions(more_asteroid_util.fulgora_aquilo, 0.9)
  end
  for _,def in pairs(hi) do
    table.insert(planet.asteroid_spawn_definitions, def)
  end
end

local location_stuffmapping = {
  ["solar-system-edge"] = more_asteroid_util.spawn_definitions(more_asteroid_util.aquilo_solar_system_edge, 0.9),
  ["shattered-planet"] = more_asteroid_util.spawn_definitions(more_asteroid_util.shattered_planet_trip, 0.8)
}
for _,location in pairs(locations) do
  local hi = location_stuffmapping[location.name]
  if location.name == "solar-system-edge" then
    hi = more_asteroid_util.spawn_definitions(more_asteroid_util.aquilo_solar_system_edge, 0.9)
  elseif location.name == "shattered-planet" then
    hi = more_asteroid_util.spawn_definitions(more_asteroid_util.shattered_planet_trip, 0.8)
  end
  if location.name == "solar-system-edge" or location.name == "shattered-planet" then
    for _,def in pairs(hi) do
      table.insert(location.asteroid_spawn_definitions, def)
    end
  end
  
end
--[[
local connections_stuffmapping = {
  ["nauvis-vulcanus"] = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_vulcanus),
  ["nauvis-gleba"] = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_gleba),
  ["nauvis-fulgora"] = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_fulgora),
  ["vulcanus-gleba"] = more_asteroid_util.spawn_definitions(more_asteroid_util.vulcanus_gleba),
  ["gleba-fulgora"] = more_asteroid_util.spawn_definitions(more_asteroid_util.gleba_fulgora),
  ["gleba-aquilo"] = more_asteroid_util.spawn_definitions(more_asteroid_util.gleba_aquilo),
  ["fulgora-aquilo"] = more_asteroid_util.spawn_definitions(more_asteroid_util.fulgora_aquilo),
  ["aquilo-solar-system-edge"] = more_asteroid_util.spawn_definitions(more_asteroid_util.aquilo_solar_system_edge),
  ["solar-system-edge-shattered-planet"] = more_asteroid_util.spawn_definitions(more_asteroid_util.shattered_planet_trip),
}
for _,connection in pairs(connections) do
  local hi = {}
  if connection.name == "nauvis-vulcanus" then
    hi = more_asteroid_util.spawn_definitions(more_asteroid_util.nauvis_vulcanus)
  end
  for _,def in pairs(hi) do
    --table.insert(connection.asteroid_spawn_definitions, def)
  end
end
]]



--add recipes to tech research
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "uranium-asteroid-crushing"})
table.insert(data.raw["technology"]["space-platform"].effects, {type = "unlock-recipe", recipe = "petrified-asteroid-crushing"})

table.insert(data.raw["technology"]["planet-discovery-vulcanus"].effects, {type = "unlock-recipe", recipe = "rock-asteroid-crushing"})
table.insert(data.raw["technology"]["planet-discovery-fulgora"].effects, {type = "unlock-recipe", recipe = "scrap-asteroid-crushing"})
table.insert(data.raw["technology"]["planet-discovery-gleba"].effects, {type = "unlock-recipe", recipe = "organic-asteroid-crushing"})

table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "advanced-uranium-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "advanced-petrified-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "advanced-rock-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "advanced-scrap-asteroid-crushing"})
table.insert(data.raw["technology"]["advanced-asteroid-processing"].effects, {type = "unlock-recipe", recipe = "advanced-organic-asteroid-crushing"})

table.insert(data.raw["technology"]["planet-discovery-aquilo"].effects, {type = "unlock-recipe", recipe = "chemical-asteroid-crushing"})
table.insert(data.raw["technology"]["planet-discovery-aquilo"].effects, {type = "unlock-recipe", recipe = "advanced-chemical-asteroid-crushing"})
