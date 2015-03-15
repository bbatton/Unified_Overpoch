_pathtoscripts = "custom\actions\";
_EXECscript1 = 'player execVM "'+_pathtoscripts+'%1"';
_EXECscript2 = '["%1"] execVM "custom\actions\FunMenu\morph.sqf"';
_EXECscript3 = '["%1"] execVM "custom\actions\FunMenu\movements.sqf"';

// Normal player action menu
ActionMenu =
[
	["",true],
	["Action Menu >>", [], "#USER:ActionsMenu", -5, [["expression", ""]], "1", "1"],
	["Deploy Menu >>", [], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
	["Movement Menu >>",[],"#USER:MovementMenu", -5,[["expression",""]],"1","1"],
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [20], "", -5, [["expression", ""]], "1", "1"]		
];


ActionsMenu =
[
	["",true],
	["Self Bloodbag", [], "", -5, [["expression", format[_EXECscript1,"player_selfbloodbag.sqf"]]], "1", "1"],
	["Flip Vehicle", [], "", -5, [["expression", format[_EXECscript1,"flip_vehicle.sqf"]]], "1", "1"],
	["Suicide", [], "", -5, [["expression", format[_EXECscript1,"suicide.sqf"]]], "1", "1"],	
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [20], "", -5, [["expression", ""]], "1", "1"]		
];

VehicleMenu =
[
	["",true],
	["Build Bike", [], "", -5, [["expression", format[_EXECscript1,"deploy_bike.sqf"]]], "1", "1"],
	["Build Motorcycle", [], "", -5, [["expression", format[_EXECscript1,"deploy_motorBike.sqf"]]], "1", "1"],
	["Build Mozzie", [],  "", -5, [["expression", format[_EXECscript1,"deploy_mozzie.sqf"]]], "1", "1"],
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [20], "", -5, [["expression", ""]], "1", "1"]		
];

FunMenu =
[
	["",true],
	["Movement Menu >>",[],"#USER:MovementMenu", -5,[["expression",""]],"1","1"],
	//["Transform Animal >>",[],"#USER:TransformAnimalMenu", -5,[["expression",""]],"1","1"],
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];

MovementMenu =
[
	["",true],
	["Dance1",[],"", -5,[["expression",format[_EXECscript3,"ActsPercMstpSnonWnonDnon_DancingDuoIvan"]]],"1","1"],
	["Dance2",[],"", -5,[["expression",format[_EXECscript3,"ActsPercMstpSnonWnonDnon_DancingDuoStefan"]]],"1","1"],
	["Dance3",[],"", -5,[["expression",format[_EXECscript3,"ActsPercMstpSnonWnonDnon_DancingStefan"]]],"1","1"],
	["Boxing",[],"", -5,[["expression",format[_EXECscript3,"AmovPercMstpSnonWnonDnon_idle68boxing"]]],"1","1"],
	["Karate",[],"", -5,[["expression",format[_EXECscript3,"AmovPercMstpSnonWnonDnon_exerciseKata"]]],"1","1"],
	["Pushups",[],"", -5,[["expression",format[_EXECscript3,"AmovPercMstpSnonWnonDnon_exercisePushup"]]],"1","1"],
	["Squat",[],"", -5,[["expression",format[_EXECscript3,"AmovPercMstpSnonWnonDnon_exercisekneeBendA"]]],"1","1"],
	["HandStand",[],"", -5,[["expression",format[_EXECscript3,"AmovPercMstpSnonWnonDnon_idle70chozeniPoRukou"]]],"1","1"],
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:ActionMenu";