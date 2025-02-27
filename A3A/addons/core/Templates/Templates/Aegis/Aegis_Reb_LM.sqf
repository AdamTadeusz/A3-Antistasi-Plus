private _hasWs = "ws" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "LM"] call _fnc_saveToTemplate;

["flag", "Flag_EnochLooters_F"] call _fnc_saveToTemplate;
["flagTexture", "\A3_Aegis\Data_F_Aegis\Flags\flag_Looters_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_EnochLooters"] call _fnc_saveToTemplate;

["vehiclesBasic", ["Opf_B_P_Quadbike_01_F"]] call _fnc_saveToTemplate;
private _vehiclesLightUnarmed = ["Opf_B_P_Offroad_01_F"];
private _vehiclesLightArmed = ["Opf_B_P_Offroad_01_armed_F"];
private _vehiclesAt = ["Opf_B_P_Offroad_01_AT_F"];
["vehiclesTruck", ["Opf_B_P_Truck_02_transport_F"]] call _fnc_saveToTemplate;;
private _vehiclesAA = [];

["vehiclesBoat", ["I_C_Boat_Transport_02_F"]] call _fnc_saveToTemplate;
["vehiclesPlane", ["I_C_Plane_Civil_01_F"]] call _fnc_saveToTemplate;

private _vehiclesCivCar = ["C_Offroad_01_F", "C_Hatchback_01_F", "C_Hatchback_01_sport_F", "C_SUV_01_F"];
["vehiclesCivTruck", ["C_Truck_02_transport_F", "C_Van_02_transport_F", "C_Van_02_vehicle_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["C_Heli_Light_01_civil_F"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["C_Boat_Civil_01_F", "C_Rubberboat"]] call _fnc_saveToTemplate;


["staticMGs", ["I_G_HMG_02_high_F", "I_G_HMG_02_F"]] call _fnc_saveToTemplate;
["staticAT", ["I_static_AT_F"]] call _fnc_saveToTemplate;
private _staticAA = ["I_static_AA_F","Aegis_I_G_ZU23_lxWS_F"];
["staticMortars", ["I_G_Mortar_01_F"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"]] call _fnc_saveToTemplate;
["minesAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

if (_hasApex) then {
    _vehiclesCivCar pushBack "C_Offroad_02_unarmed_F";
    _vehiclesLightUnarmed pushBack "I_C_Offroad_02_unarmed_F";
    _vehiclesLightArmed pushBack "I_C_Offroad_02_LMG_F";
    _vehiclesAt pushBack "I_C_Offroad_02_AT_F";
};
if (_hasWs) then {
    _vehiclesLightUnarmed pushBack "I_G_Offroad_01_armor_base_lxWS";
    _vehiclesLightArmed pushBack "I_G_Offroad_01_armor_AT_lxWS";
    _vehiclesAt pushBack "I_C_Offroad_02_AT_F";
    _vehiclesAA pushBack "Opf_B_P_Truck_02_AA_F";
    _staticAA = ["I_Tura_ZU23_lxWS"];
};
["vehiclesCivCar", _vehiclesCivCar] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", _vehiclesLightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _vehiclesLightArmed] call _fnc_saveToTemplate;
["vehiclesAT", _vehiclesAt] call _fnc_saveToTemplate;
["vehiclesAA", _vehiclesAA] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

//classname, price, type, availability condition
private _shopWs = if (_hasWs) then {
    [
        ["I_UAV_02_lxWS", 3500, "UAV", {tierWar > 2}], 
        ["I_G_UAV_02_IED_lxWS", 4500, "UAV", {tierWar > 3}]
    ]
} else {
    []
};

private _vehiclesBlackMarket = _shopWs + [
    ["I_UAV_01_F", 2000, "UAV", {true}],
    ["I_Static_Designator_01_F", 5000, "UAV", {tierWar > 4}],
    ["Atlas_I_I_UAV_03_dynamicLoadout_F", 13000, "UAV", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["O_R_UAV_02_dynamicLoadout_F", 10000, "UAV", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["B_UAV_05_F", 30000, "UAV", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],

    ["I_LT_01_AA_F", 7500, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],
    ["I_static_AA_F", 3000, "AA", {tierWar > 2}],
    ["I_A_Truck_02_aa_lxWS", 3000, "AA", {tierWar > 3}],
    ["Atlas_I_I_APC_Tracked_01_AA_F", 25000, "AA", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["O_R_Radar_System_02_F", 65000, "AA", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],
    ["O_R_SAM_System_04_F", 40000, "AA", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],

    ["Atlas_I_I_MBT_01_arty_F", 45000, "ARTILLERY", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["I_Truck_02_MRL_F", 65000, "ARTILLERY", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],

    ["O_R_LSV_02_armed_F", 4000, "CAR", {tierWar > 3}],
    ["O_R_LSV_02_AT_F", 8000, "CAR", {tierWar > 4}],
    ["B_LSV_01_light_F", 3000, "CAR", {tierWar > 3}],
    ["I_MRAP_03_hmg_F", 6500, "CAR", {tierWar > 4}],
    ["I_Truck_02_flatbed_lxWS", 7500, "CAR", {tierWar > 3}],

    ["I_APC_Wheeled_03_cannon_F", 12000, "APC", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["Atlas_I_UNO_APC_Wheeled_04_cannon_F", 17000, "APC", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],

    ["I_APC_tracked_03_cannon_v2_F", 22000, "APC", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],

    ["I_MBT_03_cannon_F", 25000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["B_MBT_03_cannon_lxWS", 27000, "TANK", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],

    ["I_Plane_Fighter_03_dynamicLoadout_F", 25000, "PLANE", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 1}}],
    ["I_Plane_Fighter_04_F", 40000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 2}}],
    ["O_R_Plane_CAS_02_dynamicLoadout_F", 55000, "PLANE", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],
    ["I_Plane_Transport_01_vehicle_F", 45000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],

    ["I_Heli_Light_01_dynamicLoadout_F", 8000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["I_Heli_light_03_dynamicLoadout_F", 12000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}]
];
["blackMarketStock", _vehiclesBlackMarket] call _fnc_saveToTemplate;

["variants", [
    ["I_LT_01_AA_F", ["Indep_Olive",1]],
    ["I_LT_01_scout_F", ["Indep_Olive",1]],
    ["I_LT_01_cannon_F", ["Indep_Olive",1]],
    ["I_LT_01_AT_F", ["Indep_Olive",1]],
    ["I_Heli_Light_01_F", ["Black",1]],
    ["I_Heli_Light_01_dynamicLoadout_F", ["Black",1]]
]] call _fnc_saveToTemplate;

#include "Aegis_Reb_Vehicle_Attributes.sqf"

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "sgun_Mp153_classic_F",
    "hgun_Pistol_heavy_02_F",
    "hgun_ACPC2_black_F",
    "hgun_PDW2000_F",
    "4Rnd_12Gauge_Pellets", "4Rnd_12Gauge_Slug",
    "30Rnd_9x21_Mag", "30Rnd_9x21_Red_Mag",
    "9Rnd_45ACP_Mag",
    "6Rnd_45ACP_Cylinder",
    "MiniGrenade","SmokeShell",
    ["IEDUrbanSmall_Remote_Mag", 10], ["IEDLandSmall_Remote_Mag", 10], ["IEDUrbanBig_Remote_Mag", 3], ["IEDLandBig_Remote_Mag", 3],
    "B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_khk",
    "V_BandollierB_blk","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_Rangemaster_belt",
    "Binocular", "acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol",
    "Aegis_V_Ammo_Bandolier_F"
];

if (_hasLawsOfWar) then {
    _initialRebelEquipment append [
        "V_Pocketed_olive_F", 
        "V_Pocketed_coyote_F", 
        "V_Pocketed_black_F", 
        "V_Pocketed_hunter_F", 
        "V_Pocketed_wdl_F"
    ];
};

private _backpacks = [];

if (_hasLawsOfWar) then {
    _backpacks append [
        "B_Messenger_Black_F", 
        "B_Messenger_Coyote_F", 
        "B_Messenger_Gray_F",
        "B_Messenger_Olive_F", 
        "B_LegStrapBag_black_F", 
        "B_LegStrapBag_coyote_F", 
        "B_LegStrapBag_olive_F"
    ];
} else {
    _backpacks append ["B_FieldPack_blk","B_AssaultPack_blk"];
};
_initialRebelEquipment append _backpacks;

if (_hasContact) then {
    _initialRebelEquipment append [
        "sgun_HunterShotgun_01_F",
        "sgun_HunterShotgun_01_sawedoff_F",
        "2Rnd_12Gauge_Pellets",
        "2Rnd_12Gauge_Slug"
    ];
};


if (_hasApex) then {
    _initialRebelEquipment append [
        "hgun_Pistol_01_F",
        "10Rnd_9x21_Mag",
        ["launch_RPG7_F", 3], 
        ["RPG7_F", 9]
    ];
} else {
    _initialRebelEquipment append [["launch_RPG32_F", 2], ["RPG32_F", 6]];
};

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "U_IG_Guerrilla_6_1",
    "U_BG_Guerilla2_1",
    "U_IG_Guerilla2_2",
    "U_IG_Guerilla2_3",
    "U_I_G_resistanceLeader_F",
    "Opf_U_B_P_Uniform_Advisor_F",
    "Opf_U_B_P_FieldJacket_01_F",
    "Opf_U_B_P_FieldJacket_02_F",
    "Opf_U_B_P_FieldJacket_03_F",
    "Opf_U_B_P_Uniform_01_F",
    "Opf_U_B_P_Uniform_01_Shortsleeve_F"
];

private _dlcUniforms = [];

if (_hasContact) then {
    _dlcUniforms append [
        "U_I_L_Uniform_01_camo_F",
        "U_I_L_Uniform_01_tshirt_black_F",
        "U_I_L_Uniform_01_tshirt_olive_F",
        "U_I_L_Uniform_01_tshirt_skull_F",
        "U_I_L_Uniform_01_tshirt_sport_F"
    ];
};


["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;

["headgear", [
    "H_Booniehat_khk_hs",
    "H_Booniehat_tan",
    "H_Cap_tan",
    "H_Cap_oli_hs",
    "H_Cap_blk",
    "H_Cap_headphones",
    "H_ShemagOpen_tan",
    "H_Shemag_olive_hs",
    "H_Bandanna_khk_hs",
    "H_Bandanna_sand",
    "H_Bandanna_cbr"
]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["voices", ["Male01POL", "Male02POL", "Male03POL"]] call _fnc_saveToTemplate;
["faces", [
    "LivonianHead_1", "LivonianHead_2", "LivonianHead_3", "LivonianHead_4",
    "LivonianHead_5", "LivonianHead_6", "LivonianHead_7", "LivonianHead_8",
    "LivonianHead_9", "LivonianHead_10",
    "WhiteHead_01", "WhiteHead_02", "WhiteHead_03", "WhiteHead_04",
    "WhiteHead_06", "WhiteHead_07", "WhiteHead_08", "WhiteHead_10", "WhiteHead_11",
    "WhiteHead_13", "WhiteHead_15", "WhiteHead_16", "WhiteHead_17", "WhiteHead_18",
    "WhiteHead_19", "WhiteHead_20", "WhiteHead_21"
]] call _fnc_saveToTemplate;
//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms + _dlcUniforms];

_loadoutData set ["glasses", ["G_Cigarette","G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", ["G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_khk", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_aviator"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1]] call _fnc_setFacewear;
    
    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
