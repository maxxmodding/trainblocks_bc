
--[[

	Trainblocks
	=============
	This mod adds signs for the advanced trains mod by orwell
	
	version 0.4 by maxx

	Copyright (C) 2018 Maximilian Hipp and gpcf

	See LICENSE.txt for more information

	History: 
	2018-03-04  version 0.1  release 
	2018-03-05  version 0.2  better node registrations and craft receipes | changed textures
	2018-03-06  version 0.21 alias added
	2018-03-07  version 0.3  alias removed in trainblocks and added new signs. => trainblocks_bc for backwards compatibility
	2018-09-24  version 0.4  code cleaned up; added new signs/blocks; textures uptdated
	
]]--

--import file /craft.lua


dofile(minetest.get_modpath("trainblocks") .. "/alias.lua")





--subwayblock germany

minetest.register_node(":trainblocks:subwayblock", {
    description = "Subwayblock",
	light_source = 8,
    tiles = {
        "down_subwayblock.png",
        "down_subwayblock.png",
        "front_subwayblock.png",
        "front_subwayblock.png",
        "front_subwayblock.png",
        "front_subwayblock.png"
    },
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "trainblocks:subwayblock"
})

--sbahn block

minetest.register_node("trainblocks:sbahnblock", {
    description = "Sbahnblock",
    light_source = 8,
	tiles = {
        "down_sbahnblock.png",
        "down_sbahnblock.png",
        "front_sbahnblock.png",
        "front_sbahnblock.png",
        "front_sbahnblock.png",
        "front_sbahnblock.png"
    },
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "trainblocks:sbahnblock"
})


--for bachwards-compatibility there has to be a signlike drawtype

for count = 1, 10, 1 do  
 minetest.register_node("trainblocks:line" .. count, {
			     description = "Line ".. count,
			  tiles = {"front_line" .. count .. ".png"},
			  drawtype = "nodebox",
			  paramtype2 = "wallmounted",
			  legacy_wallmounted = true,
			  paramtype=light,
			  light_source=12,
			  sunlight_propagates = true,
			  is_ground_content = false,
			  walkable = false,
			  
			  groups = {choppy = 2, attached_node = 1, flammable = 2, oddly_breakable_by_hand = 3},			
			  node_box = {
			     type = "wallmounted",
			     wall_top ={-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
			     wall_bottom = {-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
			     wall_side =  {-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
			     						     
			  }
			  
   })
   end
   
--subway signs R and L

minetest.register_node("trainblocks:subwaysignL", {
	description = "Subway Sign Left",
	tiles = {
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign2.png",
		"subway_sign2.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:subwaysignR", {
	description = "Subway Sign Right",
	tiles = {
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign2.png",
		"subway_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})


--subway signs R and L

minetest.register_node("trainblocks:sbahnsignL", {
	description = "SBahn Sign Left",
	tiles = {
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign2l.png",
		"sbahn_sign2l.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:sbahnsignR", {
	description = "SBahn Sign Right",
	tiles = {
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign2.png",
		"sbahn_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})



--station signs

minetest.register_node("trainblocks:stationsignR", {
	description = "Station Sign Right",
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign2.png",
		"station_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:stationsignL", {
	description = "Station Sign Left",
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign2.png",
		"station_sign2.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:stationsign", {
	description = "Station Sign",
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign.png",
		"station_sign.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -8/16, 6/16,  8/16,  8/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})


--platform signs from 1 to 10

for count = 1, 10, 1 do  
minetest.register_node("trainblocks:platformsign" .. count, {    
    description = "Platform Sign " .. count,
	drawtype = "nodebox",

    tiles = {"front_platform" .. count .. ".png"},
	inventory_image = "inventory_platform" .. count .. ".png",
	light_source = 5,
    groups = {cracky = 3},
	
	paramtype2 = "facedir",
	paramtype = 'light',
	
	node_box = {
		type = "fixed",
		fixed = {
			{ -4/16, -4/16, 6/16,  4/16,  4/16, 8/16},
		},
	},
   
})
end


--gabriel's mountain railway block

minetest.register_node("trainblocks:mr", {
    description = "Mountain Railway Block",
    light_source = 8,
	tiles = {
			"down_mr.png",
			"down_mr.png",
			"front_mr.png",
			"front_mr.png",
			"front_mr.png",
			"front_mr.png"
		},
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "trainblocks:sbahnblock"
})
