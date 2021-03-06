/*
  # HEADER #
	Script: 		Client\Functions\Client_OnCampCaptured.sqf
	Alias:			CTI_CL_FNC_OnCampCaptured
	Description:	Called by the server whenever a camp is captured by either side
					Note this function is called automatically by the PVF "CTI_PVF_CLT_OnCampCaptured"
	Author: 		Benny
	Creation Date:	20-04-2016
	Revision Date:	20-04-2016
	
  # PARAMETERS #
    0	[Object]: The Town
    1	[Object]: The Camp
    2	[Integer]: The new Side ID
    3	[Integer]: The previous Side ID
	
  # RETURNED VALUE #
	None
	
  # SYNTAX #
	[TOWN, CAMP, NEW SIDE ID, OLD SIDE ID] call CTI_CL_FNC_OnCampCaptured
	
  # DEPENDENCIES #
	Common Function: CTI_CO_FNC_GetSideColoration
	Common Function: CTI_CO_FNC_GetSideFromID
	
  # EXAMPLE #
	[EntreDeux, Camp1, WESTID, EASTID] call CTI_CL_FNC_OnCampCaptured
	  -> Camp1 of Town EntreDeux will change side from East to West
*/

params ["_town", "_camp", "_sideID_new", "_sideID_old"];
private ["_color", "_side_new"];

if !(CTI_P_SideID in [_sideID_new, _sideID_old]) exitWith {}; //--- Make sure that the client need an update

_side_new = (_sideID_new) call CTI_CO_FNC_GetSideFromID;

if (_side_new isEqualTo CTI_P_SideJoined) then { //--- The player's side has captured it
	CTI_P_ChatID commandChat format["A camp has been captured in %1!", _town getVariable "cti_town_name"];
	// todo: player award on capture?
} else {
	CTI_P_ChatID commandChat format["A camp has been lost in %1!", _town getVariable "cti_town_name"];
};

//--- Paint it
_color = (_side_new) call CTI_CO_FNC_GetSideColoration;
(_camp getVariable "cti_camp_marker") setMarkerColorLocal _color;