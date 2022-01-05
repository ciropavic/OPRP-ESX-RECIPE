interiors = {
	{
		exterior = {x = 846.65, y = 2999.57, z = 45.49, h = 356.71},
		interior = {x = 894.08, y = -3245.85, z = -98.26, h = 86.73}
	}
}

Citizen.CreateThread(function()
  LoadMpDlcMaps()
  EnableMpDlcMaps(true)
  RequestIpl("DT1_03_Gr_Closed")
  RequestIpl("v_tunnel_hole")
  RequestIpl("TrevorsMP")
  RequestIpl("TrevorsTrailer")
  RequestIpl("farm")
  RequestIpl("farmint")
  RequestIpl("farmint_cap")
  RequestIpl("farm_props")
  RequestIpl("CS1_02_cf_offmission")
  --[[ Aircraft Carrier ]]--
  RequestIpl("hei_carrier")
  RequestIpl("hei_carrier_DistantLights")
  RequestIpl("hei_Carrier_int1")
  RequestIpl("hei_Carrier_int2")
  RequestIpl("hei_Carrier_int3")
  RequestIpl("hei_Carrier_int4")
  RequestIpl("hei_Carrier_int5")
  RequestIpl("hei_Carrier_int6")
  RequestIpl("hei_carrier_LODLights")
  --[[ Yacht ]]--
  RequestIpl("hei_yacht_heist")
  RequestIpl("hei_yacht_heist_Bar")
  RequestIpl("hei_yacht_heist_Bedrm")
  RequestIpl("hei_yacht_heist_Bridge")
  RequestIpl("hei_yacht_heist_DistantLights")
  RequestIpl("hei_yacht_heist_enginrm")
  RequestIpl("hei_yacht_heist_LODLights")
  RequestIpl("hei_yacht_heist_Lounge")
  --[[ Cargo Ship ]]--
  RemoveIpl("cargoship")
  RequestIpl("sunkcargoship")
  --[[ Simeon ]]--
  RequestIpl("v_carshowroom")
  RequestIpl("shutter_open")
  RequestIpl("shr_int")
  RequestIpl("csr_inMission")
  --[[ FIB ]]--
  RemoveIpl("FIBlobbyfake")
  RequestIpl("FIBlobby")
  --[[ Jewelry Story ]]-- 
  RemoveIpl("jewel2fake")
  RemoveIpl("bh1_16_refurb")
  RequestIpl("post_hiest_unload")
  --[[ Cluckin Bell ]]--
  RemoveIpl("CS1_02_cf_offmission")
  RequestIpl("CS1_02_cf_onmission1")
  RequestIpl("CS1_02_cf_onmission2")
  RequestIpl("CS1_02_cf_onmission3")
  RequestIpl("CS1_02_cf_onmission4")
  --[[ Maze Bank Arena (Fame or Shame) ]]--
  RemoveIpl("sp1_10_fake_interior")
  RemoveIpl("sp1_10_fake_interior_lod")
  RequestIpl("sp1_10_real_interior")
  RequestIpl("sp1_10_real_interior_lod")
  --[[ Tequi-La-La ]]--
  RequestIpl("v_rockclub")
  --[[ Bahama Mama's ]]--
  RequestIpl("v_bahama")
  --[[ Lester's Factory ]]--
  RequestIpl("id2_14_during_door")
  RequestIpl("id2_14_during1")
  RequestIpl("id2_14_during2")
  --[[ Bank Offices ]]--
  -- Arcadius Bussiness Center
  RequestIpl("ex_dt1_02_office_03a")
  -- Maze Bank Building
  RequestIpl("ex_dt1_11_office_03a")
  -- Maze Bank West
  RequestIpl("ex_sm_15_office_03a")
  -- Lom Bank
  RequestIpl("ex_sm_13_office_03a")
  --[[ Small Ones ]]--
  RequestIpl("facelobby") -- Life Invader
  RequestIpl("grdlc_int_01_milo_")
  RequestIpl("grdlc_int_02_milo_")
  RequestIpl("gr_heist_yacht2")
  RequestIpl("gr_heist_yacht2_lounge")
  RequestIpl("gr_heist_yacht2_enginrm")
  RequestIpl("gr_heist_yacht2_bridge")
  RequestIpl("gr_heist_yacht2_bedrm")
  RequestIpl("gr_heist_yacht2_bar")
  RequestIpl("grdlc_int_01")
  RequestIpl("grdlc_int_02")
  for i=0,11 do
    RequestIpl("gr_case"..tonumber(i).."_bunkerclosed")
  end
  RequestIpl("imp_dt1_02_impexpgarage_01")
  RequestIpl("imp_impexp_interior_placement_interior_0_impexp_int_01_milo_")
  RequestIpl("imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_")
  RequestIpl("imp_impexp_interior_placement_interior_2_imptexp_mod_int_01_milo_")
  RequestIpl("imp_impexp_interior_placement_interior_3_impexp_int_02_milo_")
  RequestIpl("CanyonRvrShallow")
  RequestIpl("cs3_05_water_grp1")
  RequestIpl("cs3_05_water_grp1_lod")
  RequestIpl("cs3_05_water_grp2")
  RequestIpl("cs3_05_water_grp2_lod")
  RequestIpl("canyonriver01")
  RequestIpl("canyonriver01_lod")
  RequestIpl("railing_start")
  RemoveIpl("railing_end")
  RemoveIpl("canyonriver01_traincrash")
  RemoveIpl("des_methtrailer")
  RemoveIpl("occl_meth_grp1")
  RequestIpl("methtrailer_grp1")
  RequestIpl("methtrailer_grp1_lod")
  RemoveIpl("methtrailer_grp2")
  RemoveIpl("methtrailer_grp2_lod")
  RemoveIpl("methtrailer_grp3")
  RemoveIpl("methtrailer_grp3_lod")

  --[[ Apartments ]]--
  RequestIpl("apa_v_mp_h_04_c")

  --[[ ETC ]]--
  RequestIpl("vtrevors")

  --[[ Bunker Props ]]--
  EnableInteriorProp(258561,"Bunker_Style_A")
  EnableInteriorProp(258561,"upgrade_bunker_set")
  EnableInteriorProp(258561,"Office_Upgrade_set")
  EnableInteriorProp(258561,"Gun_schematic_set")
  DisableInteriorProp(258561,"gun_range_blocker_set")
  EnableInteriorProp(258561,"gun_range_lights")
  EnableInteriorProp(258561,"gun_locker_upgrade")
  EnableInteriorProp(258561,"security_upgrade")

  DisableInteriorProp(258561,"gun_wall_blocker")
  DisableInteriorProp(258561,"Bunker_Style_B")
  DisableInteriorProp(258561,"Bunker_Style_C")
  DisableInteriorProp(258561,"standard_bunker_set")
  DisableInteriorProp(258561,"Office_blocker_set")
  RefreshInterior(258561)

  --[[ Import Export Shop ]]--


  --[[ Simeon's Showroom ]]--
  EnableInteriorProp(7170,"csr_beforeMission")

  DisableInteriorProp(7170,"csr_afterMissionA")
  DisableInteriorProp(7170,"csr_afterMissionB")
  DisableInteriorProp(7170,"csr_inMission")
  RefreshInterior(7170)

  --[[ Floyd's House ]]--
  EnableInteriorProp(171777,"swap_clean_apt")
  EnableInteriorProp(171777,"swap_sofa_B")

  DisableInteriorProp(171777,"swap_sofa_A")
  DisableInteriorProp(171777,"swap_wade_sofa_A")
  RefreshInterior(171777)

  --[[ Clubs ]]--
  RequestIpl("	bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo")
  RequestIpl("imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_")
  RequestIpl("bkr_bi_hw1_13_int")

  while true do
  	Citizen.Wait(10)
  	local ped = GetPlayerPed(-1)
  	local pos = GetEntityCoords(ped)
  	for i = 1, #interiors do
  		if (Vdist(pos, interiors[i].interior.x,interiors[i].interior.y,interiors[i].interior.z) < 20) then
  			--DrawMarker(1, interiors[i].interior.x,interiors[i].interior.y,interiors[i].interior.z-1.001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 255, 0, 50, 0, 0, 2, 0, 0, 0, 0)
  			if (Vdist(pos, interiors[i].interior.x,interiors[i].interior.y,interiors[i].interior.z) < 1.001) then
  				--drawHelp("Exit Bunker ~INPUT_CONTEXT~")
  				if (IsControlJustReleased(1,51)) then
  					DoScreenFadeOut(2000)
  					Citizen.Wait(2000)
  					SetEntityCoords(ped, interiors[i].exterior.x,interiors[i].exterior.y,interiors[i].exterior.z)
  					SetEntityHeading(ped, interiors[i].exterior.h)
  					Citizen.Wait(1000)
  					DoScreenFadeIn(2000)
  					Citizen.Wait(2000)
  					Citizen.Wait(5000)
  				end
  			end
  		end
  		if (Vdist(pos, interiors[i].exterior.x,interiors[i].exterior.y,interiors[i].exterior.z) < 20) then
  			--DrawMarker(1, interiors[i].exterior.x,interiors[i].exterior.y,interiors[i].exterior.z-1.001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 255, 0, 50, 0, 0, 2, 0, 0, 0, 0)
  			if (Vdist(pos, interiors[i].exterior.x,interiors[i].exterior.y,interiors[i].exterior.z) < 1.001) then
  				--drawHelp("Enter Bunker ~INPUT_CONTEXT~")
  				if (IsControlJustReleased(1,51)) then
  					DoScreenFadeOut(2000)
  					Citizen.Wait(2000)
  					SetEntityCoords(ped, interiors[i].interior.x,interiors[i].interior.y,interiors[i].interior.z)
  					SetEntityHeading(ped, interiors[i].interior.h)
  					Citizen.Wait(1000)
  					DoScreenFadeIn(2000)
  					Citizen.Wait(2000)
  					Citizen.Wait(5000)
  				end
  			end
  		end
  	end
  end
end)

function drawHelp(message)
	Citizen.InvokeNative(0x8509B634FBE7DA11, "STRING")
	AddTextComponentString(message)
	Citizen.InvokeNative(0x238FFE5C7B0498A6, 0, false, true, -1)
end