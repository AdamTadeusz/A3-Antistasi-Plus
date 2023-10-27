private _hasLawsOfWar = "orange" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "NAPA"] call _fnc_saveToTemplate; 						

["flag", "Flag_NAP"] call _fnc_saveToTemplate; 						
["flagTexture", "\UK3CB_Factions\addons\UK3CB_Factions_NAP\Flag\nap_flag_co.paa"] call _fnc_saveToTemplate; 				
["flagMarkerType", "UK3CB_Marker_NAP"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["UK3CB_NAP_I_TT650"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["UK3CB_NAP_B_Hilux_Pkm"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["UK3CB_NAP_B_Hilux_M2"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["UK3CB_I_G_Ural_Open"]] call _fnc_saveToTemplate;
["vehiclesAT", ["rhsgref_cdf_b_reg_uaz_spg9"]] call _fnc_saveToTemplate;
["vehiclesAA", ["rhsgref_nat_ural_Zu23"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["UK3CB_CHD_I_Fishing_Boat"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["UK3CB_CHC_I_Antonov_AN2", "UK3CB_NAP_I_C400"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_IDAP_Offroad_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["UK3CB_CHC_C_Ural_Open"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["UK3CB_CHC_C_Mi8AMT"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", ["UK3CB_CHC_C_Fishing_Boat"]] call _fnc_saveToTemplate;

["staticMGs", ["UK3CB_LDF_I_M2_TriPod"]] call _fnc_saveToTemplate;
["staticAT", ["rhsgref_nat_SPG9"]] call _fnc_saveToTemplate;
["staticAA", ["rhsgref_nat_ZU23"]] call _fnc_saveToTemplate;
["staticMortars", ["rhsgref_nat_2b14"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "rhs_mag_3vo18_10"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "rhs_mag_d832du_10"] call _fnc_saveToTemplate;

["minesAT", [
	"ATMine_Range_Mag",
	"rhs_mine_tm62m_mag",
	"rhs_mine_M19_mag",
	"rhs_mag_mine_ptm1",
	"SLAMDirectionalMine_Wire_Mag",
	"rhssaf_mine_tma4_mag",
	"rhs_mine_TM43_mag"
]] call _fnc_saveToTemplate;
["minesAPERS", [
	"rhs_mine_M7A2_mag",
	"APERSMine_Range_Mag",
	"rhs_mine_pmn2_mag",
	"APERSBoundingMine_Range_Mag",
	"rhs_mag_mine_pfm1",
	"rhsusf_mine_m14_mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSTripMine_Wire_Mag",
	"rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
	"rhs_mine_smine35_press_mag",
	"rhs_mine_smine44_press_mag",
	"rhs_mine_stockmine43_2m_mag",
	"rhs_mine_stockmine43_4m_mag",
	"rhs_mine_M3_tripwire_mag",
	"rhs_mine_Mk2_tripwire_mag",
	"rhs_mine_mk2_pressure_mag",
	"rhs_mine_m3_pressure_mag",
	"rhs_mine_glasmine43_hz_mag",
	"rhs_mine_glasmine43_bz_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_a200_bz_mag",
	"rhs_mine_a200_dz35_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_smine35_trip_mag",
	"rhs_mine_smine44_trip_mag"
]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["rhs_ec75_mag", 2], ["rhs_ec75_sand_mag", 2], ["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1], ["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["rhs_ec75_mag", 4], ["rhs_ec75_sand_mag", 4], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1],["DemoCharge_Remote_Mag", 2], ["rhsusf_m112_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1], ["SatchelCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

["blackMarketStock", [
    //Anti-Air Vehicles
    ["rhsgref_cdf_b_Igla_AA_pod", 3500, "STATICAA", {true}],
    ["rhsgref_cdf_b_zsu234", 9500, "AA", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_CW_SOV_O_LATE_2S6_Tunguska", 17000, "AA", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["O_Radar_System_02_F", 125000, "STATICAA", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],
    ["O_SAM_System_04_F", 60000, "STATICAA", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],

    //Static AA, AT, GMG's and HMG's
    ["rhs_Kornet_9M133_2_msv", 3000, "STATICAT", {tierWar > 3}],
    ["rhsgref_nat_AGS30_TriPod", 2500, "STATICMG", {tierWar > 2}],
    ["ace_dragon_staticAssembled", 4000, "STATICAT", {tierWar > 2}],
    ["O_Static_Designator_02_F", 5000, "STATICAT", {tierWar > 5}],
    
    //Artillery / MLRS systems 
    ["rhsgref_cdf_b_reg_d30", 15000, "ARTILLERY", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhsgref_cdf_b_2s1", 25000, "ARTILLERY", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["UK3CB_ARD_I_Hilux_Rocket_Arty", 45000, "ARTILLERY", {tierWar > 4&& {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["rhsgref_cdf_b_reg_BM21", 90000, "ARTILLERY", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["rhsusf_M142_usmc_WD", 130000, "ARTILLERY", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],

    //APC's
    ["rhsgref_cdf_b_btr80", 7000, "APC", {tierWar > 4}],
    ["rhsgref_cdf_b_btr70", 6000, "APC", {tierWar > 3}],
    ["rhs_btr80a_vmf", 12000, "APC", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhsusf_m966_w", 7000, "APC", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],

    //Light Cars
    ["rhsgref_BRDM2_b", 2000, "CAR", {tierWar > 2}],
    ["UK3CB_ADE_O_Hilux_Vulcan_Front", 12000, "CAR", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 1}}],
    ["UK3CB_AAF_I_SUV_Armed", 15000, "CAR", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 2}}],

    //IFV's
    ["rhsgref_cdf_b_bmd1p", 9000, "APC", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhsgref_cdf_b_bmp2d", 15000, "APC", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["UK3CB_MDF_I_Warrior_Cage_Camo", 10000, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_bmd4ma_vdv", 30000, "APC", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["rhs_t15_tv", 60000, "APC", {tierWar > 9 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],

    //Tanks
    ["UK3CB_O_G_T55", 15000, "TANK", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 1}],
    ["rhsgref_cdf_b_t80b_tv", 20000, "TANK", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["rhs_t72bc_tv", 35000, "TANK", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["rhs_t80ue1", 50000, "TANK", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["rhs_t14_tv", 125000, "TANK", {tierWar > 9 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 4}}],
    
    //CAS / Multirole 
    ["RHSGREF_A29B_HIDF", 20000, "PLANE", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["rhs_l159_cdf_b_CDF", 35000, "PLANE", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["UK3CB_AAF_I_L39_PYLON", 32000, "PLANE", {tierWar > 4 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 1}}],
    ["I_Plane_Fighter_04_F", 55000, "PLANE", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["rhsgref_cdf_b_su25", 45000, "PLANE", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["B_T_VTOL_01_armed_F", 65000, "PLANE", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["B_Plane_CAS_01_dynamicLoadout_F", 85000, "PLANE", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],

    //Fighters
    ["rhs_mig29sm_vvs", 45000, "PLANE", {tierWar > 6 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 1}}],
    ["RHS_T50_vvs_generic_ext", 95000, "PLANE", {tierWar > 8 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],

    //Transport helis
    ["RHS_Mi8mt_vvsc", 8000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["rhs_ka60_c", 8000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count milbases > 0}}],

    //Light armed helis
    ["RHS_MELB_MH6M", 8000, "HELI", {tierWar > 4 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],
    ["UK3CB_B_G_UH1H_GUNSHIP_FIA", 12000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count milbases > 0}}],
    ["rhs_uh1h_un", 15000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count milbases > 1}}],
    ["RHS_MELB_AH6M", 15000, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 1}}],

    //Heavy Transports
    ["RHS_Mi8AMTSh_vvsc", 25000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["RHS_UH60M_ESSS_d", 20000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    
    //Gunships
    ["RHS_Mi24P_vvsc", 25000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 1}}],
    ["rhsgref_un_Mi24V", 25000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["RHS_AH1Z_wd", 32000, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 2}}],
    ["rhs_mi28n_vvsc", 45000, "HELI", {tierWar > 6 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],
    ["RHS_Ka52_vvsc", 60000, "HELI", {tierWar > 7 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}],
    ["RHS_AH64D_wd", 80000, "HELI", {tierWar > 8 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 3}}]
]] call _fnc_saveToTemplate;

["variants", [
    ["RHSGREF_A29B_HIDF", ["Brazil",1]],
    ["RHSGREF_A29B_HIDF", ["MIG",1]]
]] call _fnc_saveToTemplate;

#include "3CBF_Reb_Vehicle_Attributes.sqf"

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "rhsusf_weap_m1911a1", "rhsusf_mag_7x45acp_MHP",
//  "rhs_weap_m1garand_sa43", "rhsgref_8Rnd_762x63_M2B_M1rifle", "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle",
    ["rhs_weap_rpg18", 5],
    ["IEDUrbanSmall_Remote_Mag", 3], ["IEDLandSmall_Remote_Mag", 3], ["IEDUrbanBig_Remote_Mag", 1], ["IEDLandBig_Remote_Mag", 2],
    "rhs_sidor",
    "rhsgref_chicom"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
    "UK3CB_NAP_I_U_Tshirt_FLK",
    "UK3CB_NAP_I_U_Tshirt_BLK",
    "UK3CB_NAP_I_U_Tshirt_FLR",
    "UK3CB_NAP_I_U_Tshirt_FLK",
    "UK3CB_NAP_I_U_Pilot_FLORA",
    "UK3CB_NAP_I_U_Pilot_BLK",
    "UK3CB_NAP_I_U_Pilot_FLK",
    "UK3CB_NAP_I_U_Officer_Uniform_FLK_BLK",
    "UK3CB_NAP_I_U_Officer_Uniform_FLK_GRN",
    "UK3CB_NAP_I_U_Officer_Uniform_GRN_BLK",
    "UK3CB_NAP_I_U_Officer_Uniform_GRN",
    "UK3CB_NAP_I_U_Officer_Uniform_WDL_BLK",
    "UK3CB_NAP_I_U_Officer_Uniform_WDL_GRN",
    "UK3CB_NAP_I_U_CombatUniform_FLK",
    "UK3CB_NAP_I_U_CombatUniform_WDL",
    "UK3CB_NAP_I_U_CombatUniform_01_FLK",
    "UK3CB_NAP_I_U_CombatUniform_01_WDL",
    "UK3CB_LNM_I_U_CombatUniform_01",
    "UK3CB_LNM_I_U_CombatUniform_02",
    "UK3CB_LNM_I_U_CombatUniform_03",
    "UK3CB_LNM_I_U_CombatUniform_04",
    "UK3CB_LNM_I_U_CombatUniform_09",
    "UK3CB_LNM_I_U_CombatUniform_10",
    "UK3CB_LNM_I_U_CombatUniform_11",
    "UK3CB_LNM_I_U_CombatSmock_04",
    "UK3CB_LNM_I_U_CombatSmock_05",
    "UK3CB_LNM_I_U_CombatSmock_06",
    "UK3CB_LNM_I_U_CombatSmock_09",
    "UK3CB_LNM_I_U_CombatSmock_32",
    "UK3CB_LNM_I_U_Shirt_Pants_13",
    "UK3CB_LNM_I_U_Shirt_Pants_14",
    "UK3CB_LNM_I_U_Shirt_Pants_01",
    "UK3CB_LNM_I_U_Shirt_Pants_02",
    "rhsgref_uniform_alpenflage",
    "rhsgref_uniform_gorka_1_f",
    "rhsgref_uniform_dpm",
    "rhsgref_uniform_dpm_olive",
    "rhsgref_uniform_flecktarn",
    "rhsgref_uniform_flecktarn_full",
    "rhsgref_uniform_og107",
    "rhsgref_uniform_og107_erdl",
    "rhsgref_uniform_woodland",
    "rhsgref_uniform_woodland_olive"
];

["uniforms", _rebUniforms] call _fnc_saveToTemplate;

["headgear", [
    "rhs_beanie_green",
    "H_Bandanna_khk",
    "H_Cap_blk",
    "H_Cap_oli",
    "H_Cap_headphones",
    "rhs_headband",
    "UK3CB_LNM_B_H_BoonieHat_FLK_01",
    "UK3CB_LNM_B_H_BoonieHat_FLK_02",
    "UK3CB_LNM_B_H_BoonieHat_FLK_03"

]] call _fnc_saveToTemplate;

/////////////////////
///  Identities   ///
/////////////////////

["faces", [
    "LivonianHead_1", "LivonianHead_2", "LivonianHead_3", "LivonianHead_4",
    "LivonianHead_5", "LivonianHead_6", "LivonianHead_7", "LivonianHead_8",
    "LivonianHead_9", "LivonianHead_10","Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03",
    "WhiteHead_05","WhiteHead_07","WhiteHead_08","WhiteHead_09","WhiteHead_10",
    "WhiteHead_12","WhiteHead_13","WhiteHead_14","WhiteHead_15","WhiteHead_16",
    "WhiteHead_17","WhiteHead_19","WhiteHead_20","WhiteHead_21","Miller"
]] call _fnc_saveToTemplate;
["voices", ["rhs_male01cz","rhs_male02cz","rhs_male03cz","rhs_male04cz","rhs_male05cz"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["glasses", ["G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", ["rhssaf_veil_Green", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_khk", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_aviator"]];

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
