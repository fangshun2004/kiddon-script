local packed_funs = require("./scripts/packed_fun") -- 调用packed_fun文件

local packed_unlock_menu = menu.add_submenu("packed 解锁") -- 一级菜单

local packed_bool_unlock_menu = packed_unlock_menu:add_submenu("Packed bool 解锁") -- 二级菜单

local function set_mass_packed_bool(value, min_i, max_i)
    for index = min_i, max_i do
        packed_funs.set_packed_bool(index, value)
    end
end

-------------------------------------解锁/锁定切换按钮-------------------------------------
local unlock_state = true
packed_bool_unlock_menu:add_toggle("-------------------解锁/锁定", function()
    return unlock_state
end, function()
    unlock_state = not unlock_state
end)
-------------------------------------packed bool unlock-------------------------------------

packed_bool_unlock_menu:add_action("PSTAT_BOOL", function() -- 0-192
    set_mass_packed_bool(unlock_state, 0, 192)
    packed_funs.set_packed_bool(24, false) -- 迷你地图不放大
    packed_funs.set_packed_bool(158, false) -- 免费象鼻虫 free weevil
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

packed_bool_unlock_menu:add_action("DLCBIKEPSTAT_BOOL 狂野镖客", function() -- 狂野飙客
    set_mass_packed_bool(unlock_state, 9361, 9553)
end)

packed_bool_unlock_menu:add_action("DLCGUNPSTAT_BOOL 进出口大亨", function() -- 进出口大亨
    set_mass_packed_bool(unlock_state, 15369, 15561)
end)

packed_bool_unlock_menu:add_action("GUNTATPSTAT_BOOL 军火走私", function() -- 军火走私
    set_mass_packed_bool(unlock_state, 15562, 15946)
end)

packed_bool_unlock_menu:add_action("DLCSMUGCHARPSTAT 走私大暴走", function() -- 走私大暴走
    set_mass_packed_bool(unlock_state, 15946, 16010)
    packed_funs.set_packed_bool(22069, false); -- 古邦800f cuban800
end)

packed_bool_unlock_menu:add_action("GANGOPSPSTAT_BOOL 末日豪劫", function() -- 末日豪劫
    set_mass_packed_bool(unlock_state, 18098, 18162)
end)

packed_bool_unlock_menu:add_action("BUSINESSBATPSTAT_BOOL 夜总会DLC物品", function() -- 夜总会dlc
    set_mass_packed_bool(unlock_state, 22066, 22194)
    packed_funs.set_packed_bool(22069, false) -- 竞速 speedo4
end)

packed_bool_unlock_menu:add_action("ARENAWARSPSTAT_BOOL 竞技场DLC物品", function() -- 竞技场dlc
    set_mass_packed_bool(unlock_state, 24962, 25538)
end)

packed_bool_unlock_menu:add_action("CASINOPSTAT_BOOL 钻石赌场DLC物品", function() -- 钻石赌场dlc
    set_mass_packed_bool(unlock_state, 26810, 27258)
end)

packed_bool_unlock_menu:add_action("CASINOHSTPSTAT_BOOL 赌场抢劫DLC物品", function() -- 赌场抢劫dlc
    set_mass_packed_bool(unlock_state, 28098, 28354)
end)

packed_bool_unlock_menu:add_action("HEIST3TATTOOSTAT_BOOL 赌场抢劫DLC物品", function() -- 赌场抢劫dlc
    set_mass_packed_bool(unlock_state, 28355, 28483)
end)

packed_bool_unlock_menu:add_action("SU20PSTAT_BOOL夏季更新", function() -- 夏季更新
    set_mass_packed_bool(unlock_state, 30355, 30483)
end)

packed_bool_unlock_menu:add_action("SU20TATTOOSTAT_BOOL 解锁夏季更新DLC物品", function() -- 夏季更新
    set_mass_packed_bool(unlock_state, 30227, 30355)
end)

packed_bool_unlock_menu:add_action("HISLANDPSTAT_BOOL 解锁佩里克岛DLC物品", function() -- 佩里克岛抢劫dlc
    set_mass_packed_bool(unlock_state, 30515, 30707)
end)

packed_bool_unlock_menu:add_action("TUNERPSTAT_BOOL 解锁车友会DLC物品", function() -- 车友会dlc
    set_mass_packed_bool(unlock_state, 31707, 32283)
end)

packed_bool_unlock_menu:add_action("FIXERPSTAT_BOOL 解锁联系人DLC物品", function() -- 联系人dlc
    set_mass_packed_bool(unlock_state, 32283, 32411)
end)

packed_bool_unlock_menu:add_action("FIXERTATTOOSTAT 解锁联系人DLC物品", function() -- 联系人dlc
    set_mass_packed_bool(unlock_state, 32411, 32475)
end)

packed_bool_unlock_menu:add_action("Re-watch the dlc animation 重新观看动画", function()
    packed_funs.set_packed_bool(28256, false) -- 安保確認
    packed_funs.set_packed_bool(28257, false) -- 任务动画
    packed_funs.set_packed_bool(22193, false) -- 改车铺进门動畫
    packed_funs.set_packed_bool(31753, false) -- 改车铺开张任务動畫
    packed_funs.set_packed_bool(31737, false) -- 车友会動畫
    packed_funs.set_packed_bool(27089, false) -- 賭場動畫確認
    packed_funs.set_packed_bool(27245, false) -- 平臺動畫
    packed_funs.set_packed_bool(25008, false) -- 竞技场动画1
    packed_funs.set_packed_bool(25009, false) -- 竞技场动画2
    packed_funs.set_packed_bool(25010, false) -- 竞技场动画2
end)

----------------------------------packed int----------------------------------
local packed_int_unlock_menu = packed_unlock_menu:add_submenu("Packed int 解锁") -- 二级菜单

-- 冲冲猴旅行家
packed_int_unlock_menu:add_action("冲冲猴旅行家", function()
    packed_funs.set_packed_int(22063, 20)
end)

-- 恐霸批发价
packed_int_unlock_menu:add_action("恐霸批发价", function()

    packed_funs.set_packed_int(22050, 5)
end)

-- 商战黄金奖杯
packed_int_unlock_menu:add_action("商战黄金奖杯", function()
    if (packed_funs.get_packed_int(22058) < 20) then
        packed_funs.set_packed_int(22058, 20)
    end
end)

packed_int_unlock_menu:add_action("夜总会保险箱装饰", function()
    packed_funs.set_packed_int(22051, 50) -- 木盒子
    packed_funs.set_packed_int(22052, 100) -- 子弹铁盒
    packed_funs.set_packed_int(22053, 20) -- 冰毒
    packed_funs.set_packed_int(22054, 80) -- 大麻
    packed_funs.set_packed_int(22055, 60) -- 伪证
    packed_funs.set_packed_int(22056, 40) -- 假钞
    packed_funs.set_packed_int(22057, 10) -- 可卡因
end)

packed_int_unlock_menu:add_action("设施维修区摆件", function()
    packed_funs.set_packed_int(18982, 3) -- tM02
    packed_funs.set_packed_int(18983, 3) -- 防暴车
    packed_funs.set_packed_int(18984, 3) -- 导弹车
    packed_funs.set_packed_int(18985, 3) -- 推进者
    packed_funs.set_packed_int(18986, 3) -- 复仇者
end)

packed_int_unlock_menu:add_action("解锁双动左轮 使用后换占据再次使用", function()
    if (packed_funs.get_packed_int(18981) == 0) then
        packed_funs.set_packed_int(18981, 3) -- 双动左轮跳到最后任务阶段
    end
    if (packed_funs.get_packed_int(18981) > 3) then
        packed_funs.set_packed_int(18981, 0) -- 双动左轮进度清零
        -- 换占据后才能触发
    end
end)

packed_int_unlock_menu:add_action("解锁石斧 使用后换占据再次使用", function()
    if (packed_funs.get_packed_int(7315) == 0) then
        packed_funs.set_packed_int(7315, 5) -- 跳到石斧最后任务阶段
    end
    if (packed_funs.get_packed_int(7315) > 5) then
        packed_funs.set_packed_int(7315, 0) -- 双动左轮进度清零
        -- 换占据后才能触发
    end
end)
