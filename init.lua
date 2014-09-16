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
            


minetest.register_abm({
    nodenames = {'extra_mod:decowood'},
    interval = 30,
    chance = 1,
    action = function(pos)
              minetest.add_node(pos,{name="default:wood"})
    end,
})

minetest.register_abm({
  nodenames = {"default:dirt_with_grass"},
  interval = 1,
  chance = 100,
  action = function(pos)
    pos.y=pos.y+1
    minetest.add_node(pos, {name="default:junglegrass"})
  end,
})