
if stats.get_int("MPPLY_LAST_MP_CHAR") == 0 then
mpx = "MP0_"
else
mpx = "MP1_"
end

local function fixertattoostat_bool_unlock(value,mpx)--32411-32475
	for index=0,63 do
		stats.set_bool_masked(mpx.."FIXERTATTOOSTAT0",value,index)
	end
end
menu.add_action("FIXERTATTOOSTAT--Contact DLC",function() --Contact dlc
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
menu.add_action("FIXERPSTAT_BOOL--Contact DLC",function()--Contact dlcdlc
	fixerpstat_bool_unlock(true,mpx)	
end
)

local function tunerpstal_bool_unlock(value,mpx) --31707-32283
	for i=0,8 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."TUNERPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("TUNERPSTAT_BOOL--Riders' clubs",function()
	tunerpstal_bool_unlock(true,mpx)
end
)

local function hislandpstal_bool_unlock(value,mpx)--30515-30707
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."HISLANDPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("HISLANDPSTAT_BOOL--Peric Island",function() --Peric Island
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
menu.add_action("SU20TATTOOSTAT_BOOL--Summer updates",function()
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
menu.add_action("SU20PSTAT_BOOL--Summer updates",function()--Summer updates
	su20pstat_bool_unlock(true,mpx)
end
)

local function heist3tattoostat_bool_unlock(value,mpx) --28355-28483
	for i=0,1 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."HEIST3TATTOOSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("HEIST3TATTOOSTAT_BOOL--Casino HEIST",function()--Casino HEIST
	heist3tattoostat_bool_unlock(true,mpx)
end
)


local function casinohstpstat_bool_unlock(value,mpx)--28098-28354
	for i=0,3 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("CASINOHSTPSTAT_BOOL--Casino HEIST",function()--Casino HEIST
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
menu.add_action("CASINOPSTAT_BOOL--Diamond Casino",function() --Diamond Casino
	casinopstat_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL4",false,23)--Re-watch casino animations
	stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL6",false,51)--Re-watch the casino 2nd floor animation

end
)

local function arenawarspstat_bool_unlock(value,mpx)--24962-25538
	for i=0,8 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("ARENAWARSPSTAT_BOOL--Arena",function() --arena
	arenawarspstat_bool_unlock(true,mpx)
end
)

local function businessbatpstat_bool_unlock(value,mpx)--22066-22194
	for i=0,1 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."BUSINESSBATPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("BUSINESSBATPSTAT_BOOL--Nightclub",function()--nightclub
	businessbatpstat_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."BUSINESSBATPSTAT_BOOL0",false,3)--speedo4
end
)

local function gangopspstat_bool_unlock(value,mpx)--18098-18162
		for index=0,63 do
			stats.set_bool_masked(mpx.."GANGOPSPSTAT_BOOL0",value,index)
		end
end
menu.add_action("GANGOPSPSTAT_BOOL--Doomsday HEIST",function()
	gangopspstat_bool_unlock(true,mpx)
end
)

local function dlcsmugcharpstat_bool_unlock(value,mpx) --15946-16010
		for index=0,63 do
			stats.set_bool_masked(mpx.."DLCSMUGCHARPSTAT0",value,index)
		end
end
menu.add_action("DLCSMUGCHARPSTAT--Arms smuggling",function()
	dlcsmugcharpstat_bool_unlock(true,mpx)
	stats.set_bool_masked(mpx.."DLCSMUGCHARPSTAT0",false,48)--cuban800
end
)

local function guntatpstat_bool_unlock(value,mpx)--15562-15946
	for i=0,5 do
		for index=0,63 do
			stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("GUNTATPSTAT_BOOL--Arms smuggling",function()
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
menu.add_action("DLCGUNPSTAT_BOOL--Arms smuggling",function()
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

local function mp_ngdlcpstat_bool_unlock(value)--7321-7385
	for index=0,63 do
			stats.set_bool_masked("MP_NGDLCPSTAT_BOOL0",value,index)
	end
end
menu.add_action("MP_NGDLCPSTAT_BOOL",function()
	mp_ngdlcpstat_bool_unlock(true)
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


local function mp_ngpstat_bool_unlock(value)--4335-4399
	for index=0,63 do
			stats.set_bool_masked("MP_NGPSTAT_BOOL0",value,index)
	end
end
menu.add_action("MP_NGPSTAT_BOOL",function()
	mp_ngpstat_bool_unlock(true)
end
)
local function ngpstat_bool_unlock(value,mpx)--4207-4335
	for i=0,1 do
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
local function mp_tupstat_bool_unlock(value)--2919-3111
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked("MP_TUPSTAT_BOOL"..i,value,index)
		end
	end	
end
menu.add_action("MP_TUPSTAT_BOOL",function()
	mp_tupstat_bool_unlock(true)
end
)

local function mp_pstat_bool(value)
	for i=0,2 do
		for index=0,63 do
			stats.set_bool_masked("MP_PSTAT_BOOL"..i,value,index)
		end
	end
end
menu.add_action("MP_PSTAT_BOOL",function()--513-705
	mp_pstat_bool(true)
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
	stats.set_bool_masked(mpx.."PSTAT_BOOL0",false,24)--mini map
	stats.set_bool_masked(mpx.."PSTAT_BOOL2",false,30)-- free weevil
end
)

menu.add_action("Re-watch the dlc animation ",function()
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,46)--arena1
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,47)-- arena2
	stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL0",false,48)-- arena3
	stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL4",false,23)--Re-watch casino animations
	stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL6",false,51)--Re-watch the casino 2nd floor animation
	stats.set_bool_masked(mpx.."TUNERPSTAT_BOOL0",false,30)--Re-watch the tuner animation 
	stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL2",false,30)--Re-watch the studio task cutscene Contact DLC
	stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL2",false,31)--Re-watch the studio task cutscene  Contact DLC
end
)

menu.add_action("Monkey car",function()
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 20,40, 8)--Monkey car
end
)

menu.add_action("TERBYTE Wholesale price",function()
	if (stats.get_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 0, 8) < 5) then
		stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 5, 0, 8)--TERBYTE Wholesale price
	end
end
)

menu.add_action("Gold Business Battle Trophy",function()
	if (stats.get_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 0, 8) <20) then
		stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT380", 20, 0, 8)--Gold Business Battle Trophy
	end
end
)

menu.add_action("Nightclub safe decorations",function()
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 51, 8, 8)--box
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 100, 16, 8)--Bullet tin box 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 20, 24, 8)--Methamphetamine 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 80, 32, 8)--marijuana 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 60, 40, 8)--perjury 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 40, 48, 8)--Counterfeit bills 
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT379", 10, 56, 8)--//cocaine
	end
)

menu.add_action("Facility maintenance area decorations",function()
	stats.set_masked_int(mpx.."DLCSMUGCHARPSTAT_INT260", 3, 16, 8)--TM02
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 24, 8)--
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 32, 8)--
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 40, 8)--
	stats.set_masked_int(mpx.."BUSINESSBATPSTAT_INT260", 3, 48, 8)--
	end
)

menu.add_action("Unlocking the double-action revolver *** needs to be used again by swapping occupancy",function()
	if (stats.get_masked_int(mpx.."GANGOPSPSTAT_INT102", 24, 8)<3) then
		stats.set_masked_int(mpx.."GANGOPSPSTAT_INT102", 3, 24, 8)--Skip to the final mission stage
	end
	if (stats.get_masked_int(mpx.."GANGOPSPSTAT_INT102", 24, 8) > 3) then
		stats.set_masked_int(mpx.."GANGOPSPSTAT_INT102", 0, 24, 8)--Task progress reset
	end
end
)

menu.add_action("Unlocking the Stone Axe *** requires a change of occupation to use again",function()
	if (stats.get_masked_int("MP_NGDLCPSTAT_INT0", 16, 8)<5)then
		stats.set_masked_int("MP_NGDLCPSTAT_INT0", 5, 16, 8)--Skip to the final mission stage
	end
	if (stats.get_masked_int("MP_NGDLCPSTAT_INT0", 16, 8)>5)then
		stats.set_masked_int("MP_NGDLCPSTAT_INT0", 0, 16, 8) --Task progress reset
	end	
end
)
