local graphics_path = "__matts-logistics__/graphics/"

data:extend(
{
	{
		type = "technology",
		name = "pipe-upgrade-1",
		icon_size = 64, icon_mipmaps = 4,
		icon = graphics_path .. "icons/medium-pipe-to-ground.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "matts-medium-pipe-to-ground"
			},
		},
		prerequisites = {"fluid-handling", "logistics-2"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 15,
			count = 40
		},
		order = "a"
	},
	{
		type = "technology",
		name = "pipe-upgrade-2",
		icon_size = 64, icon_mipmaps = 4,
		icon = graphics_path .. "icons/long-pipe-to-ground.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "matts-long-pipe-to-ground"
			},
		},
		prerequisites = {"pipe-upgrade-1", "plastics"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 2}
			},
			time = 30,
			count = 60
		},
		order = "a"
	},
	{
		type = "technology",
		name = "pipe-upgrade-3",
		icon_size = 64, icon_mipmaps = 4,
		icon = graphics_path .. "icons/ultra-pipe-to-ground.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "matts-ultra-pipe-to-ground"
			},
		},
		prerequisites = {"pipe-upgrade-2", "logistics-3"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 2},
				{"logistic-science-pack", 2},
				{"chemical-science-pack", 1}
			},
			time = 45,
			count = 60
		},
		order = "a"
	},
	{
		type = "technology",
		name = "pipe-upgrade-4",
		icon_size = 64, icon_mipmaps = 4,
		icon = graphics_path .. "icons/continental-pipe-to-ground.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "matts-continental-pipe-to-ground"
			},
		},
		prerequisites = {"pipe-upgrade-3", "automation-3"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 60,
			count = 150
		},
		order = "a"
	}
})