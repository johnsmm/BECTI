private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//************************ACE Stuff************************

//Items																									
_i = _i + ["ACE_EarPlugs"];																									
_u = _u + [0];																									
_p = _p + [100];																									
																																																
_i = _i + ["ACE_key_lockpick"];																									
_u = _u + [0];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_DefusalKit"];																									
_u = _u + [0];																									
_p = _p + [100];																									
																									
//Explosives																									
_i = _i + ["ACE_M26_Clacker"];																									
_u = _u + [2];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_DeadManSwitch"];																									
_u = _u + [2];																									
_p = _p + [10];																									
																									
_i = _i + ["ACE_Cellphone"];																									
_u = _u + [1];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_Clacker"];																									
_u = _u + [1];																									
_p = _p + [100];																									
																									
//Spotting Scope																									
_i = _i + ["ACE_SpottingScope"];																									
_u = _u + [1];																									
_p = _p + [100];																									
																									
_i = _i + ["ACE_SpottingScopeObject"];																								
_u = _u + [1];																									
_p = _p + [100];																									


[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 