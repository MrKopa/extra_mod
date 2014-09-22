-- version : 220914 / DDMMYY
-- original author : MrKopa
-- name : extra_mod [name might change in the near future]

minetest.register_node("extra_mod:decowood",{
                tiles = {"tutorial_decowood.png"},
                groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flamable=3},
                })  
                
minetest.register_craft({
            output = 'extra_mod:decowood 2',
            recipe = {
               {'default:wood','default:wood',''},
               {'default:wood','default:wood',''},
               {'','',''},
            }
            }) 
            
minetest.register_craft({
  type = "cooking",
  recipe = "extra_mod:decowood",
  output = "default:wood",
})

minetest.register_craftitem("extra_mod:xtr_ore_shard",{
  description = "XTR Ore shard",
  inventory_image = "xtr_shard.png",
  })

minetest.register_node("extra_mod:xtr_ore_block",{
  tiles = {'xtr_ore.png'},
  description = "XTR Ore Block",
  is_ground_content = true,
  groups = {cracky=3,stone=1},
  drop = "extra_mod:xtr_ore_shard",
  legacy_mineral = true,
  })

minetest.register_node("extra_mod:xtr_shard_block",{
  tiles = {'shard_block.png'},
  description = "XTR Shard Block",
  is_ground_content = false,
  light_source = 14,
  groups = {cracky=3,stone=1},
  drop = "extra_mod:xtr_shard_block",
  })
    
minetest.register_ore({
  ore_type = "scatter",
  ore      = "extra_mod:xtr_ore_block",
  wherein  = "default:stone",
  clust_scarcity = 8*8*8,
  clust_num_ores = 8,
  clust_size = 4,
  height_min = -31000,
  height_max = 64,
  })

minetest.register_ore({
  ore_type = "scatter",
  ore      = "extra_mod:xtr_shard_block",
  wherein  = "default:stone",
  clust_scarcity = 8*8*8,
  clust_num_ores = 2,
  clust_size = 2,
  height_min = -31000,
  height_max = -10,
  })


minetest.register_craft({
            output = 'extra_mod:xtr_shard_block 1',
            recipe = {
               {'extra_mod:xtr_ore_shard','extra_mod:xtr_ore_shard',''},
               {'extra_mod:xtr_ore_shard','extra_mod:xtr_ore_shard',''},
               {'','',''},
            }
            }) 

minetest.register_node("extra_mod:test_node",{
  tiles = {"xtr_fence_top.png","xtr_fence_top.png","xtr_fence_side.png","xtr_fence_side.png","xtr_fence_side.png","xtr_fence_side.png"},
  description = "Simple Test Node",
  is_ground_content = false,
  sunlight_propagates = true,
  groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
  paramtype = "light",
  paramtype2 = "facedir",
  drawtype = "nodebox",
  selection_box = {
    type = "fixed",
    fixed = {-1/4, -1/2, -1/4, 1/4, 1/2, 1/4},
  },
  node_box = {
    type = "fixed",
    fixed = {-1/4, -1/1.35, -1/4, 1/4, 1/1.35, 1/4},
    },
  on_place = minetest.rotate_node,
 
    

  })