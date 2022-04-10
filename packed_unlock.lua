PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
if PlayerIndex == 0 then
mpx = "MP0_"
else
mpx = "MP1_"
end

local function fixertattoostat_bool_unlock(value,mpx)--32411-32475
	for index=0,63 do
		stats.set_bool_masked(mpx.."FIXERTATTOOSTAT0",value,index)
	end
end
menu.add_action("FIXERTATTOOSTAT 解锁联系人DLC物品",function() --联系人dlc
	fixertattoostat_bool_unlock(true,mpx)
end
)

local function fixerpstat_bool_unlock(value,mpx)--32283-32411
	for i=0,1 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."FIXERPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("FIXERPSTAT_BOOL 解锁联系人DLC物品",function()--联系人dlc
	fixerpstat_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL2",false,30)--联系人dlc 重新观看事务所动画
	stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL2",false,31)--联系人dlc 重新观看事务所任务电话触发动画
end
)

local function tunerpstal_bool_unlock(value,mpx) --31707-32283
	for i=0,8 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."TUNERPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("TUNERPSTAT_BOOL 解锁车友会DLC物品",function()
	tunerpstal_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."TUNERPSTAT_BOOL0",false,30)--重新观看车友会动画
end
)

local function hislandpstal_bool_unlock(value,mpx)--30515-30707
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."HISLANDPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("HISLANDPSTAT_BOOL 解锁佩里克岛DLC物品",function() --佩里克岛
	hislandpstal_bool_unlock(true,mpx)
end
)


local function su20tattoostat_bool_unlock(value,mpx) --30227-30355
	for i=0,1 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."SU20TATTOOSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("SU20TATTOOSTAT_BOOL 解锁夏季更新DLC物品",function()--夏季更新
	su20tattoostat_bool_unlock(true,mpx)
end
)

local function su20pstat_bool_unlock(value,mpx)--30355-30483
	for i=0,1 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."SU20PSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("SU20PSTAT_BOOL夏季更新",function()--夏季更新
	su20pstat_bool_unlock(true,mpx)
end
)

local function heist3tattoostat_bool_unlock(value,mpx) --28355-28483--dc抢劫
	for i=0,1 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."HEIST3TATTOOSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("HEIST3TATTOOSTAT_BOOL 赌场抢劫DLC物品",function()
	heist3tattoostat_bool_unlock(true,mpx)
end
)


local function casinohstpstat_bool_unlock(value,mpx)--28098-28354
	for i=0,4 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("CASINOHSTPSTAT_BOOL 赌场抢劫DLC物品",function()--dc抢劫
	casinohstpstat_bool_unlock(true,mpx)
end
)

local function casinopstat_bool_unlock(value,mpx)--26810-27258
	for i=0,6 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("CASINOPSTAT_BOOL 钻石赌场DLC物品",function() --钻石赌场
	casinopstat_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL4",false,23)--重新观看賭場動畫
	stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL6",false,51)--重新观看赌场2楼動畫

end
)

local function arenawarspstat_bool_unlock(value,mpx)--24962-25538
	for i=0,8 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("ARENAWARSPSTAT_BOOL 竞技场DLC物品",function() --竞技场
	arenawarspstat_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,46)--重新观看竞技场动画1
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,47)--重新观看竞技场动画2
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,48)--重新观看竞技场动画2
end
)

local function businessbatpstat_bool_unlock(value,mpx)--22066-22194
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."BUSINESSBATPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("BUSINESSBATPSTAT_BOOL 夜总会DLC物品",function()--夜总会
	businessbatpstat_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."BUSINESSBATPSTAT_BOOL0",false,3)--夜总会赠送竞速改装版 speedo4
end
)

local function gangopspstat_bool_unlock(value,mpx)--18098-18162
		for index=0,63 do
			stats.set_bool_masked(mpx.."GANGOPSPSTAT_BOOL0",value,index)
		end
end
menu.add_action("GANGOPSPSTAT_BOOL 末日豪劫",function()
	gangopspstat_bool_unlock(true,mpx)
end
)

local function dlcsmugcharpstat_bool_unlock(value,mpx) --15946-16010
		for index=0,63 do
			stats.set_bool_masked(mpx.."DLCSMUGCHARPSTAT0",value,index)
		end
end
menu.add_action("DLCSMUGCHARPSTAT 军火走私",function()
	dlcsmugcharpstat_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."DLCSMUGCHARPSTAT0",false,48)--古邦800f cuban800
end
)

local function guntatpstat_bool_unlock(value,mpx)--15562-15946
	for i=0,5 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("GUNTATPSTAT_BOOL 军火走私",function()
	guntatpstat_bool_unlock(true,mpx)
end
)

local function dlcgunpstat_bool_unlock(value,mpx)--15369-15561
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("DLCGUNPSTAT_BOOL",function()
	dlcgunpstat_bool_unlock(true,mpx)
end
)

local function dlcbikepstat_bool_unlock(value,mpx)--9361-9553
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."DLCBIKEPSTAT"..i,value,index)
		end
	end
end
menu.add_action("DLCBIKEPSTAT_BOOL",function()
	dlcbikepstat_bool_unlock(true,mpx)
end
)

local function ngdlcpstat_bool_unlock(value,mpx)--7385--7641
	for i=0,3 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."NGDLCPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("NGDLCPSTAT_BOOL",function()
	ngdlcpstat_bool_unlock(true,mpx)
end
)

local function mp_ngdlcpstat_bool_unlock(value,mpx)--7321-7385
	for index=0,63 do
			stats.set_bool_masked("MP_NGDLCPSTAT_BOOL0",value,index)
	end
end
menu.add_action("MP_NGDLCPSTAT_BOOL",function()
	mp_ngdlcpstat_bool_unlock(true,mpx)
end
)


local function ngtatpstat_bool_unlock(value,mpx)--6029-6413
	for i=0,5 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."NGTATPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("NGTATPSTAT_BOOL",function()
	ngtatpstat_bool_unlock(true,mpx)
end
)


local function mp_ngpstat_bool_unlock(value,mpx)--4335-4399
	for index=0,63 do
			stats.set_bool_masked("MP_NGPSTAT_BOOL0",value,index)
	end
end
menu.add_action("MP_NGPSTAT_BOOL",function()
	mp_ngpstat_bool_unlock(true,mpx)
end
)
local function ngpstat_bool_unlock(value,mpx)--4027-4335
	for i=0,20 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."NGPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("NGPSTAT_BOOL",function()
	ngpstat_bool_unlock(true,mpx)
end
)


local function tupstat_bool_unlock(value,mpx)--3111-3879
	for i=0,11 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."TUPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("TUPSTAT_BOOL",function()
	tupstat_bool_unlock(true,mpx)
end
)
local function mp_tupstat_bool_unlock(value,mpx)--2919-3111
	for index=0,63 do
			stats.set_bool_masked("MP_TUPSTAT_BOOL"..i,value,index)
	end
end
menu.add_action("MP_TUPSTAT_BOOL",function()
	mp_tupstat_bool_unlock(true,mpx)
end
)

local function mp_pstat_bool(value,mpx)
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked("MP_PSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("MP_PSTAT_BOOL",function()--513-705
	mp_pstat_bool(true,mpx)
end
)
local function pstat_bool(value,mpx)
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."PSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("PSTAT_BOOL",function()--0-192
	pstat_bool(true,mpx)
	stats.set_bool_masked(mpx.."PSTAT_BOOL0",false,24)--迷你地图不放大
	stats.set_bool_masked(mpx.."PSTAT_BOOL2",false,30)--免费象鼻虫 free weevil
end
)

menu.add_action("Re-watch the dlc animation 重新观看动画",function()
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,46)--重新观看竞技场动画1 arena1
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,47)--重新观看竞技场动画2 arena2
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,48)--重新观看竞技场动画2 arena3
	stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL4",false,23)--重新观看賭場動畫
	stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL6",false,51)--重新观看赌场2楼動畫
	stats.set_bool_masked(mpx.."TUNERPSTAT_BOOL0",false,30)--重新观看车友会动画 Riders' clubs
	stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL2",false,30)--联系人dlc 重新观看事务所动画 28256
	stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL2",false,31)--联系人dlc 重新观看事务所任务电话触发动画 28257
end
)

menu.add_action("冲冲猴旅行家",function()
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 20,40, 8)--冲冲猴旅行家	
end
)

menu.add_action("恐霸批发价",function()
if (stats.get_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 0, 8) < 5) then
stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 5, 0, 8)--恐霸
end
end
)

menu.add_action("商战黄金奖杯",function()
if (stats.get_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 0, 8) <20) then
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 20, 0, 8)--商战黄金奖杯
end
end
)

menu.add_action("夜总会保险箱装饰",function()
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 51, 8, 8)--木盒子
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 100, 16, 8)--子弹铁盒
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 20, 24, 8)--冰毒
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 80, 32, 8)--大麻
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 60, 40, 8)--伪证
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 40, 48, 8)--假钞
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 10, 56, 8)--可卡因
	end
)

menu.add_action("设施维修区摆件",function()
	stats.set_masked_int(mpx.."DLCSMUGCHARPSTAT_INT260", 3, 16, 8)--tM02
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 24, 8)--
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 32, 8)--
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 40, 8)--
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 48, 8)--
	end
)

menu.add_action("解锁双动左轮 需要换占据再次使用",function()
if (stats.get_masked_int(mpx.."GANGOPSPSTAT_INT102", 24, 8)<3) then
	stats.set_masked_int(mpx.."GANGOPSPSTAT_INT102", 3, 24, 8)--双动左轮跳到最后任务阶段
end
if (stats.get_masked_int(mpx.."GANGOPSPSTAT_INT102", 24, 8) > 3) then
	stats.set_masked_int(mpx.."GANGOPSPSTAT_INT102", 0, 24, 8)--双动左轮进度清零
	--换占据后才能触发
end
end
)

menu.add_action("解锁石斧 需要换占据再次使用",function()
if (stats.get_masked_int("MP_NGDLCPSTAT_INT0", 16, 8)<5)then
		stats.set_masked_int("MP_NGDLCPSTAT_INT0", 5, 16, 8)--跳到石斧最后任务阶段
end
if (stats.get_masked_int("MP_NGDLCPSTAT_INT0", 16, 8)>5)then
	stats.set_masked_int("MP_NGDLCPSTAT_INT0", 0, 16, 8) --双动左轮进度清零
--换占据后才能触发
end	
end
)