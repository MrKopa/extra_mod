-- version : 230914 / DDMMYY
-- original author : MrKopa
-- name : extra_mod [name might change in the near future]


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

minetest.register_node("extra_mod:tree_fence",{
  tiles = {"xtr_fence_top.png","xtr_fence_top.png","xtr_fence_side.png","xtr_fence_side.png","xtr_fence_side.png","xtr_fence_side.png"},
  description = "Large Tree Fence",
  is_ground_content = false,
  sunlight_propagates = true,
  groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
  paramtype = "light",
  paramtype2 = "facedir",
  drawtype = "nodebox",
  selection_box = {
    type = "fixed",
    fixed = {-1/4, -1/1.36, -1/4, 1/4, 1/1.36, 1/4},
  },
  node_box = {
    type = "fixed",
    fixed = {-1/4, -1/1.36, -1/4, 1/4, 1/1.36, 1/4},
    },
  on_place = minetest.rotate_node,
  })
    
minetest.register_ore({
  ore_type = "scatter",
  ore      = "extra_mod:xtr_ore_block",
  wherein  = "default:stone",
  clust_scarcity = 8*8*8,
  clust_num_ores = 8,
  clust_size = 4,
  height_min = -5000,
  height_max = 32,
  })

minetest.register_ore({
  ore_type = "scatter",
  ore      = "extra_mod:xtr_shard_block",
  wherein  = "default:stone",
  clust_scarcity = 8*8*8,
  clust_num_ores = 2,
  clust_size = 2,
  height_min = -31000,
  height_max = -100,
  })


minetest.register_craft({
            output = 'extra_mod:xtr_shard_block 1',
            recipe = {
               {'extra_mod:xtr_ore_shard','extra_mod:xtr_ore_shard',''},
               {'extra_mod:xtr_ore_shard','extra_mod:xtr_ore_shard',''},
               {'','',''},
            }
            }) 

minetest.register_craft({
    output = "extra_mod:tree_fence 10",
    recipe = {
      {'','',''},
      {'default:tree','default:stick','default:tree'},
      {'default:tree','default:tree','default:tree'},
  }
  })

