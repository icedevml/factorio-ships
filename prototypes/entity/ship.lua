data:extend(
{	
	{
		type = "car",
		name = "kuter",
		icon = "__Ships__/graphics/icons/ship.png",
		flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
		--minable = {mining_time = 1, result = "tank"},
		max_health = 2000,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		energy_per_hit_point = 0.5,
		resistances =
		{
			{
				type = "fire",
				decrease = 15,
				percent = 80
			},
			{
				type = "physical",
				decrease = 5,
				percent = 10
			},
			{
				type = "impact",
				decrease = 50,
				percent = 80
			},
			{
				type = "acid",
				decrease = 6,
				percent = 20
			}
		},
		collision_box = {{-1.35, -3.1}, {1.35, 3.1}},
		selection_box = {{-1.35, -3.1}, {1.35, 3.1}},
		collision_mask = {'ground-tile', 'object-layer'},
		effectivity = 0.5,
		braking_power = "200kW",
		burner =
		{
			effectivity = 0.65,
			fuel_inventory_size = 4,
			smoke =
			{
				{
					name = "tank-smoke",
					deviation = {0.55, 0.55},
					frequency = 20,
					position = {0, 2.5},
					starting_frame = 0,
					starting_frame_deviation = 60
				}
			}
		},
		consumption = "2600kW",
		terrain_friction_modifier = 0.1,
		friction = 0.001,
		light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2.5,
					width = 200,
					height = 200
				},
				shift = {-0.8, -14},
				size = 2,
				intensity = 0.6
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.8, -14},
				size = 2.5,
				intensity = 0.6
			}
		},
		animation =
		{
			layers =
			{
				{
					width = 360,
					height = 249,
					frame_count = 1,
					direction_count = 24,
					shift = {-0.0, -0.58125},
					animation_speed = 8,
					max_advance = 1,
					scale = 1.5,
					stripes =
					{
						{
						 filename = "__Ships__/graphics/entity/ship1.png",
						 width_in_frames = 1,
						 height_in_frames = 6,
						},
						
						{
						 filename = "__Ships__/graphics/entity/ship2.png",
						 width_in_frames = 1,
						 height_in_frames = 6,
						},
						
						{
						 filename = "__Ships__/graphics/entity/ship3.png",
						 width_in_frames = 1,
						 height_in_frames = 6,
						},
						
						{
						 filename = "__Ships__/graphics/entity/ship4.png",
						 width_in_frames = 1,
						 height_in_frames = 6,
						}
					}
				}
			}
		},
		turret_animation =
		{
			layers =
			{
				--[[{
					filename = "__base__/graphics/entity/tank/turret.png",
					line_length = 8,
					width = 92,
					height = 69,
					frame_count = 1,
					direction_count = 64,
					shift = {-0.15625, -1.07812},
					animation_speed = 8,
				},
				{
					filename = "__base__/graphics/entity/tank/turret-mask.png",
					line_length = 8,
					width = 38,
					height = 29,
					frame_count = 1,
					apply_runtime_tint = true,
					direction_count = 64,
					shift = {-0.15625, -1.23438},
				},
				{
					filename = "__base__/graphics/entity/tank/turret-shadow.png",
					line_length = 8,
					width = 95,
					height = 67,
					frame_count = 1,
					draw_as_shadow = true,
					direction_count = 64,
					shift = {1.70312, 0.640625},
				}]]
			}
		},
		turret_rotation_speed = 0.35 / 60,
		turret_return_timeout = 300,
		stop_trigger_speed = 0.2,
		sound_no_fuel =
		{
			{
				filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
				volume = 0.6
			},
		},
		stop_trigger =
		{
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/car-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		sound_minimum_speed = 0.12;
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.9 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/steam-engine-90bpm.ogg",
				volume = 0.5
			},
			activate_sound =
			{
				filename = "__base__/sound/fight/tank-engine-start.ogg",
				volume = 0.4
			},
			deactivate_sound =
			{
				filename = "__base__/sound/fight/tank-engine-stop.ogg",
				volume = 0.4
			},
			match_speed_to_activity = true,
		},
		open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.4 },
		close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.4 },
		rotation_speed = 0.0013,
		tank_driving = true,
		weight = 160000,
		inventory_size = 180,
		guns = {},
	},
	
	{
		type = "item",
		name = "kuter",
		icon = "__Ships__/graphics/icons/ship.png",
		flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "b[personal-transport]-b[car]",
		place_result = "kuter",
		stack_size = 1
	}
})


data:extend({
	{
		type = "recipe",
		name = "kuter",
		enabled = false,
		category = "crafting",
		energy_required = 120,
		ingredients = 
			{
				{"engine-unit",45},
				{"advanced-circuit",150},
				{"iron-gear-wheel",150},
				{"iron-plate",400},
				{"steel-plate",200},
				{"copper-plate",300}
			},
		result = "kuter"
	}
})