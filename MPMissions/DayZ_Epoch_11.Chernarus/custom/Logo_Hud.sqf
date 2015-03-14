disableSerialization;

AsReMixhud_Control = true;

while {DZE_AsReMix_PLAYER_HUD =false} do
{

	1000 cutRsc ["AsReMixhud","PLAIN"];

	_wpui = uiNameSpace getVariable "AsReMixhud";
    _vitals = _wpui displayCtrl 4900;

	_vitals ctrlSetStructuredText parseText format 
["
	<img size='2.0' align='right' image='custom\Logo.png'/> 
"];
	_vitals ctrlCommit 0;
    sleep 1.5;
};