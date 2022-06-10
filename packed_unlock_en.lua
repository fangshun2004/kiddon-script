local packed_funs = require("./scripts/packed_fun") -- Invoke the packed_fun module

local packed_unlock_menu = menu.add_submenu("Packed Unlock") -- First-level menu

local packed_bool_unlock_menu = packed_unlock_menu:add_submenu("Packed bool 解锁") -- Secondary menu

local function set_mass_packed_bool(value, min_i, max_i)
    for index = min_i, max_i do
        packed_funs.set_packed_bool(index, value)
    end
end

-------------------------------------Unlock/lock toggle button-------------------------------------
local unlock_state = true
packed_bool_unlock_menu:add_toggle("-------------------Unlock/lock", function()
    return unlock_state
end, function()
    unlock_state = not unlock_state
end)
-------------------------------------packed bool unlock-------------------------------------

packed_bool_unlock_menu:add_action("PSTAT_BOOL", function() -- 0-192
    set_mass_packed_bool(unlock_state, 0, 192)
    packed_funs.set_packed_bool(24, false) -- minimap
    packed_funs.set_packed_bool(158, false) -- free weevil
end)

packed_bool_unlock_menu:add_action("MP_PSTAT_BOOL", function() -- 513-705
    set_mass_packed_bool(unlock_state, 513, 705)
end)

packed_bool_unlock_menu:add_action("MP_TUPSTAT_BOOL", function() -- 2919-3111
    set_mass_packed_bool(unlock_state, 2919, 3111)
end)

packed_bool_unlock_menu:add_action("TUPSTAT_BOOL", function() -- 3111-3879
    set_mass_packed_bool(unlock_state, 3111, 3879)
end)

packed_bool_unlock_menu:add_action("NGPSTAT_BOOL", function() -- 4207-4335
    set_mass_packed_bool(unlock_state, 4207, 4335)
end)

packed_bool_unlock_menu:add_action("MP_NGPSTAT_BOOL", function() -- 4335-4399
    set_mass_packed_bool(unlock_state, 4335, 4399)
end)

packed_bool_unlock_menu:add_action("NGTATPSTAT_BOOL", function() -- 6029-6413
    set_mass_packed_bool(unlock_state, 6029, 6413)
end)

packed_bool_unlock_menu:add_action("MP_NGDLCPSTAT_BOOL", function() -- 7321-7385
    set_mass_packed_bool(unlock_state, 7321, 7385)
end)

packed_bool_unlock_menu:add_action("NGDLCPSTAT_BOOL", function() -- 7385-7641
    set_mass_packed_bool(unlock_state, 7385, 7641)
end)

packed_bool_unlock_menu:add_action("DLCBIKEPSTAT_BOOL Bikers ", function() -- Bikers
    set_mass_packed_bool(unlock_state, 9361, 9553)
end)

packed_bool_unlock_menu:add_action("DLCGUNPSTAT_BOOL Import/Export ", function() -- Import/Export
    set_mass_packed_bool(unlock_state, 15369, 15561)
end)

packed_bool_unlock_menu:add_action("GUNTATPSTAT_BOOL Gunrunning", function() -- Gunrunning
    set_mass_packed_bool(unlock_state, 15562, 15946)
end)

packed_bool_unlock_menu:add_action("DLCSMUGCHARPSTAT Smuggler's Run", function() -- Smuggler's Run
    set_mass_packed_bool(unlock_state, 15946, 16010)
    packed_funs.set_packed_bool(22069, false); -- cuban800
end)

packed_bool_unlock_menu:add_action("GANGOPSPSTAT_BOOL The Doomsday Heist", function() -- The Doomsday Heist
    set_mass_packed_bool(unlock_state, 18098, 18162)
end)

packed_bool_unlock_menu:add_action("BUSINESSBATPSTAT_BOOL  After Hours", function() -- nightclub
    set_mass_packed_bool(unlock_state, 22066, 22194)
    packed_funs.set_packed_bool(22069, false) -- 竞速 speedo4
end)

packed_bool_unlock_menu:add_action("ARENAWARSPSTAT_BOOL Arena War", function() -- Arena War
    set_mass_packed_bool(unlock_state, 24962, 25538)
end)

packed_bool_unlock_menu:add_action("CASINOPSTAT_BOOL The Diamond Casino & Resort",
    function() -- The Diamond Casino & Resort
        set_mass_packed_bool(unlock_state, 26810, 27258)
    end)

packed_bool_unlock_menu:add_action("CASINOHSTPSTAT_BOOL The Diamond Casino Heist",
    function() -- The Diamond Casino Heist
        set_mass_packed_bool(unlock_state, 28098, 28354)
    end)

packed_bool_unlock_menu:add_action("HEIST3TATTOOSTAT_BOOL The Diamond Casino Heist",
    function() -- The Diamond Casino Heist
        set_mass_packed_bool(unlock_state, 28355, 28483)
    end)

packed_bool_unlock_menu:add_action("SU20PSTAT_BOOL Los Santos Summer Special", function() -- Los Santos Summer Special
    set_mass_packed_bool(unlock_state, 30355, 30483)
end)

packed_bool_unlock_menu:add_action("SU20TATTOOSTAT_BOOL Los Santos Summer Special",
    function() -- Los Santos Summer Special
        set_mass_packed_bool(unlock_state, 30227, 30355)
    end)

packed_bool_unlock_menu:add_action("HISLANDPSTAT_BOOL The Cayo Perico Heist", function() -- The Cayo Perico Heist
    set_mass_packed_bool(unlock_state, 30515, 30707)
end)

packed_bool_unlock_menu:add_action("TUNERPSTAT_BOOL Los Santos Tuners", function() -- Los Santos Tuners
    set_mass_packed_bool(unlock_state, 31707, 32283)
end)

packed_bool_unlock_menu:add_action("FIXERPSTAT_BOOL The Contract", function() -- The Contract
    set_mass_packed_bool(unlock_state, 32283, 32411)
end)

packed_bool_unlock_menu:add_action("FIXERTATTOOSTAT The Contract", function() -- The Contract
    set_mass_packed_bool(unlock_state, 32411, 32475)
end)

packed_bool_unlock_menu:add_action("Re-watch the dlc animation", function()
    packed_funs.set_packed_bool(28256, false) -- Re-watch the studio task cutscene Contact DLC
    packed_funs.set_packed_bool(28257, false) -- Re-watch the studio task cutscene  Contact DLC
    packed_funs.set_packed_bool(22193, false) -- Reset the car shop cutscene
    packed_funs.set_packed_bool(31753, false) -- Reset the car shop cutscene
    packed_funs.set_packed_bool(31737, false) -- Re-watch the tuner animation 
    packed_funs.set_packed_bool(27089, false) -- Re-watch casino animations
    packed_funs.set_packed_bool(27245, false) -- Re-watch the casino 2nd floor animation
    packed_funs.set_packed_bool(25008, false) -- arena11
    packed_funs.set_packed_bool(25009, false) -- arena2
    packed_funs.set_packed_bool(25010, false) -- arena3
    packed_funs.set_packed_bool(22106, false) -- -----nightclub----Requires that the predecessor task not complete(false)
    packed_funs.set_packed_bool(18161, false) -- nightclub---ready:employee()
    packed_funs.set_packed_bool(22067, false) -- nightclub---DJ
    packed_funs.set_packed_bool(22068, false) -- nightclub--ready:equipment
    packed_funs.set_packed_bool(22068, false) -- nightclub--- DJ Task completion animation
end)

----------------------------------packed int----------------------------------
local packed_int_unlock_menu = packed_unlock_menu:add_submenu("Packed int Unlock") -- Secondary menu

-- Monkey car
packed_int_unlock_menu:add_action("Monkey car", function()
    packed_funs.set_packed_int(22063, 20)
end)

-- TERBYTE Wholesale price
packed_int_unlock_menu:add_action("TERBYTE Wholesale price", function()

    packed_funs.set_packed_int(22050, 5)
end)

-- --Gold Business Battle Trophy
packed_int_unlock_menu:add_action("Gold Business Battle Trophy", function()
    if (packed_funs.get_packed_int(22058) < 20) then
        packed_funs.set_packed_int(22058, 20)
    end
end)

packed_int_unlock_menu:add_action("Nightclub safe decorations", function()
    packed_funs.set_packed_int(22051, 50) -- box
    packed_funs.set_packed_int(22052, 100) -- Bullet tin box
    packed_funs.set_packed_int(22053, 20) -- Methamphetamine 
    packed_funs.set_packed_int(22054, 80) -- marijuana 
    packed_funs.set_packed_int(22055, 60) -- perjury 
    packed_funs.set_packed_int(22056, 40) -- Counterfeit bills 
    packed_funs.set_packed_int(22057, 10) -- cocaine
end)

packed_int_unlock_menu:add_action("Facility maintenance area decorations", function()
    packed_funs.set_packed_int(18982, 3) -- tM02
    packed_funs.set_packed_int(18983, 3) -- 防暴车
    packed_funs.set_packed_int(18984, 3) -- 导弹车
    packed_funs.set_packed_int(18985, 3) -- 推进者
    packed_funs.set_packed_int(18986, 3) -- 复仇者
end)

packed_int_unlock_menu:add_action(
    "Unlocking the double-action revolver *** needs to be used again by swapping occupancy", function()
        if (packed_funs.get_packed_int(18981) == 0) then
            packed_funs.set_packed_int(18981, 3) -- Skip to the final mission stage
        end
        if (packed_funs.get_packed_int(18981) > 3) then
            packed_funs.set_packed_int(18981, 0) -- Task progress reset
            -- 换占据后才能触发
        end
    end)

packed_int_unlock_menu:add_action("Unlocking the Stone Axe *** requires a change of occupation to use again", function()
    if (packed_funs.get_packed_int(7315) == 0) then
        packed_funs.set_packed_int(7315, 5) -- --Skip to the final mission stage
    end
    if (packed_funs.get_packed_int(7315) > 5) then
        packed_funs.set_packed_int(7315, 0) -- Task progress reset
        -- 换占据后才能触发
    end
end)
