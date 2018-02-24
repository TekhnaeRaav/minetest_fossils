--Fossils/Ores

--Trillobite
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "fossils:fossil_trillobite",
	wherein        = "default:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ores = 5,
	clust_size     = 5,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "fossils:fossil_trillobite",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 3,
	clust_size     = 5,
	y_min          = -255,
	y_max          = -64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "fossils:fossil_trillobite",
	wherein        = "default:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ores = 5,
	clust_size     = 5,
	y_min          = -31000,
	y_max          = -256,
})

minetest.register_node("fossils:fossil_trillobite", {
	description = "Trillobite Fossil",
	tiles = {"default_stone.png^fossils_fossil_trillobite.png"},
	groups = {cracky = 3},
	drop = 'fossils:bone',
	sounds = default.node_sound_stone_defaults(),
})
-----


--Material
minetest.register_craftitem("fossils:bone", {
	description = "bone",
	inventory_image = "fossils_bone.png"
})

minetest.register_node("fossils:bone_block", {
	description = "Bone Block",
	tiles = {"fossils_bone_block.png"},
	groups = {cracky = 3},
	drop = "fossils:bone_block",
	sounds = default.node_sound_stone_defaults(),
})


--Tools
minetest.register_tool("fossils:pick_bone", {
	description = "Bone Pickaxe",
	inventory_image = "fossils_tool_bonepick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.00}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("fossils:shovel_bone", {
	description = "Bone Shovel",
	inventory_image = "fossils_tool_boneshovel.png",
	wield_image = "fossils_tool_boneshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=50, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("fossils:axe_bone", {
	description = "Bone Axe",
	inventory_image = "fossils_tool_boneaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=2.00, [3]=1.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("fossils:sword_bone", {
	description = "Bone Sword",
	inventory_image = "fossils_tool_bonesword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.6, [3]=0.40}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
})

--Crafting

minetest.register_craft( {
	type = "shapeless",
	output = "fossils:bone_block",
	recipe = {"fossils:bone", "fossils:bone",
						"fossils:bone", "fossils:bone"},
})

minetest.register_craft( {
	type = "shapeless",
	output = "fossils:bone 4",
	recipe = {"fossils:bone_block"},
})

minetest.register_craft({
	output = 'default:pick_bone',
	recipe = {
		{'default:bone', 'default:bone', 'default:bone'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:shovel_bone',
	recipe = {
		{'default:bone'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_bone',
	recipe = {
		{'default:bone', 'default:bone'},
		{'default:bone', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'default:axe_bone',
	recipe = {
		{'default:bone', 'default:bone'},
		{'group:stick', 'default:bone'},
		{'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:sword_bone',
	recipe = {
		{'default:bone'},
		{'default:bone'},
		{'group:stick'},
	}
})
