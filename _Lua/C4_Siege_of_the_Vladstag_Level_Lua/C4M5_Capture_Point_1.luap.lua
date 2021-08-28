function C4M5_Capture_Point_1(owner)
  local Time = 0
  local TimeReset = 0
  while true do
    if GetState(Capture_Point.Wall_1) == 1 then
      DebugOut("Capture point - 1st wall has been captured!")
      Vanish(Destroyable_Object.OtherGate1)
      Vanish(Destroyable_Object.Gate1)
      Kill(Destroyable_Object.GateSFX1)
      RemoveRadarEdgeObject(Capture_Point.Wall_1)
      SetObjectiveData(Objective_Marker.Objective_Wall_1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Objective_Wall_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Objective_Wall_1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Objective_Wall_2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(10, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(20, 0, 1, 5, SpriteID.CO_X_Vlad_Happy)
      PhoneMessage(47, 0, 2, 5, SpriteID.CO_T_Nova_Happy)
      FollowUnit(Air_Vehicle.TGunship1, GetPlayerUnit(), -1, constant.ORDER_FORCED)
      FollowUnit(Air_Vehicle.TGunship2, GetPlayerUnit(), -1, constant.ORDER_FORCED)
      CapturePoint1Captured = 1
      LastCapturePointTaken = 1
      NumberOfCapturePointsHeld = NumberOfCapturePointsHeld + 1
      DebugOut("Number of Capture Points held = ", NumberOfCapturePointsHeld)
      break
    end
    if 1 <= NumPassengersInUnit(Capture_Point.Wall_1) then
      if TimeReset == 0 then
        Time = GetTime() + 30
        TimeReset = 1
        Spawn(Air_Vehicle.TGunship3)
        Spawn(Air_Vehicle.TGunship4)
        DebugOut("Spawned second Gunships")
        GoToArea(Troop.Xgrunt0012, 0, -160, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0029, -10, -150, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0030, -5, -150, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0031, 0, -155, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0032, -10, -155, 20, 0, constant.ORDER_NORMAL)
      end
      if Time < GetTime() then
        TimeReset = 0
      end
    end
    EndFrame()
  end
  return
end
