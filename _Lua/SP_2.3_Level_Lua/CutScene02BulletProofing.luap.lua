function CutScene02BulletProofing(owner)
  local wfcphealth = 0
  while missionend == 0 do
    if cutscene02triggered == true and wfhqcomplete == 0 then
      repeat
        if GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 0) ~= 0 then
          ExitVehicle(GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 0))
        end
        if GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 1) ~= 0 then
          ExitVehicle(GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 1))
        end
        if GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 2) ~= 0 then
          ExitVehicle(GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 2))
        end
        if GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 3) ~= 0 then
          ExitVehicle(GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 3))
        end
        if GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 4) ~= 0 then
          ExitVehicle(GetUnitInSeat(Capture_Point.WF_HQ_Capture_Point, 4))
        end
        EndFrame()
      until cutscene02triggered == false
      EnterVehicle(Troop.CutSceneTundranGrunt05, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_FORCED)
      EnterVehicle(Troop.CutSceneTundranGrunt08, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_FORCED)
      EnterVehicle(Troop.TT_Grunt_Barracks_1_1, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_FORCED)
      EnterVehicle(Troop.TT_Grunt_Barracks_1_2, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_FORCED)
      EnterVehicle(Troop.TT_Grunt_Barracks_1_3, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_FORCED)
      if TCopterAUnload == 1 then
        EnterVehicle(Troop.TT_T_Copter_Grunt_A2, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_T_Copter_Grunt_A3, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_NORMAL)
        EnterVehicle(Troop.TT_T_Copter_Grunt_A4, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_NORMAL)
      end
      if TCopterBUnload == 1 then
        EnterVehicle(Troop.TT_T_Copter_Grunt_B2, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_FORCED)
        EnterVehicle(Troop.TT_T_Copter_Grunt_B3, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_NORMAL)
        EnterVehicle(Troop.TT_T_Copter_Grunt_B4, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_NORMAL)
        do break end
        if wfhqcomplete == 1 then
          break
        end
        EndFrame()
      end
    end
  end
end
