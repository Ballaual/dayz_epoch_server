//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples
DZE_CLICK_ACTIONS = [
    ["ItemGPS","Scan Nearby","if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_ZOMBIE_COUNT = count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]); DZE_CLICK_ACTIONS_MAN_COUNT = count ((position player) nearEntities ['CAManBase',DZE_CLICK_ACTIONS_GPS_RANGE]);cutText[format['Within %1 Meters: %2 AI/players, %3 zombies, %4 vehicles',DZE_CLICK_ACTIONS_GPS_RANGE,DZE_CLICK_ACTIONS_MAN_COUNT - DZE_CLICK_ACTIONS_ZOMBIE_COUNT,count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]),count ((position player) nearEntities ['allVehicles',DZE_CLICK_ACTIONS_GPS_RANGE]) - DZE_CLICK_ACTIONS_MAN_COUNT],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Up"   ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE + 100) min 2500; cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Down" ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE - 100) max 1000;  cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemGPS","Toggle Map Marker","execVM 'overwrites\click_actions\examples\marker.sqf';","true"],
    ["ItemMap","Toggle Map Marker","execVM 'overwrites\click_actions\examples\marker.sqf';","true"],
	["ItemMap","Identify Keys","execVM 'scripts\locatevehicle\locateVehicle.sqf';","true"],
	["Binocular_Vector","1000 Meters","setViewDistance 1000; systemChat('View Distance Set: 1000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","1250 Meters","setViewDistance 1250; systemChat('View Distance Set: 1250. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","1500 Meters","setViewDistance 1500; systemChat('View Distance Set: 1500. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","1750 Meters","setViewDistance 1750; systemChat('View Distance Set: 1750. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","2000 Meters","setViewDistance 2000; systemChat('View Distance Set: 2000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","2500 Meters","setViewDistance 2500; systemChat('View Distance Set: 2500. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","3000 Meters","setViewDistance 3000; systemChat('View Distance Set: 3000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","3500 Meters","setViewDistance 3500; systemChat('View Distance Set: 3500. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","4000 Meters","setViewDistance 4000; systemChat('View Distance Set: 4000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular_Vector","5000 Meters","setViewDistance 5000; systemChat('View Distance Set: 5000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","1000 Meters","setViewDistance 1000; systemChat('View Distance Set: 1000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","1250 Meters","setViewDistance 1250; systemChat('View Distance Set: 1250. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","1500 Meters","setViewDistance 1500; systemChat('View Distance Set: 1500. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","1750 Meters","setViewDistance 1750; systemChat('View Distance Set: 1750. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","2000 Meters","setViewDistance 2000; systemChat('View Distance Set: 2000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","2500 Meters","setViewDistance 2500; systemChat('View Distance Set: 2500. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","3000 Meters","setViewDistance 3000; systemChat('View Distance Set: 3000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","3500 Meters","setViewDistance 3500; systemChat('View Distance Set: 3500. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","4000 Meters","setViewDistance 4000; systemChat('View Distance Set: 4000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["Binocular","5000 Meters","setViewDistance 5000; systemChat('View Distance Set: 5000. DO NOT set this value too high, it will cause FPS to drop and your graphics could lag.');","true"],
	["glock17_EP1","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["M9","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["M9SD","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["Makarov","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["MakarovSD","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["revolver_EP1","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["UZI_EP1","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["SA61_EP1","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["UZI_SD_EP1","Suicide","[] execVM 'scripts\suicide\suicide_init.sqf';","true"],
	["ItemRadio","Toggle Power","execVM 'scripts\radio\switch_on_off.sqf';","true"]
];