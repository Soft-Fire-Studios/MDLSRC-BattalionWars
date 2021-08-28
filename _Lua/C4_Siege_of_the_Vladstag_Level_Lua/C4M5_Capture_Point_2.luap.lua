function C4M5_Capture_Point_2(owner)
  Despawn(Air_Vehicle.TGunship3)
  Despawn(Air_Vehicle.TGunship4)
  Despawn(Air_Vehicle.WFAirTransport1)
  local Time = 0
  local TimeReset = 0
  while true do
    if GetState(Capture_Point.Wall_2) == 1 then
      DebugOut("Capture point - 2nd wall has been captured!")
      RemoveRadarEdgeObject(Capture_Point.Wall_2)
      Spawn(Air_Vehicle.WFAirTransport1)
      LandAirUnit(Air_Vehicle.WFAirTransport1, 182, -50, constant.ORDER_FORCED)
      Vanish(Destroyable_Object.OtherGate2)
      Vanish(Destroyable_Object.Gate2)
      Kill(Destroyable_Object.GateSfx2)
      SetObjectiveData(Objective_Marker.Objective_Wall_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Objective_Wall_3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Objective_Wall_2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Objective_Wall_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessage(11, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(21, 0, 1, 5, SpriteID.CO_X_Vlad_Happy)
      CapturePoint2Captured = 1
      LastCapturePointTaken = 2
      NumberOfCapturePointsHeld = NumberOfCapturePointsHeld + 1
      DebugOut("Number of Capture Points held = ", NumberOfCapturePointsHeld)
      FollowUnit(Air_Vehicle.TGunship1, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.TGunship2, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      Spawn(Air_Vehicle.TGunship3)
      Spawn(Air_Vehicle.TGunship4)
      Teleport(Air_Vehicle.TGunship3, 794, -119, 0, 20)
      Teleport(Air_Vehicle.TGunship4, 794, -119, 0, 20)
      FollowUnit(Air_Vehicle.TGunship3, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      FollowUnit(Air_Vehicle.TGunship4, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      DebugOut("clear1")
      break
    end
    if 1 <= NumPassengersInUnit(Capture_Point.Wall_2) then
      if TimeReset == 0 then
        Time = GetTime() + 30
        TimeReset = 1
        DebugOut("Sending Men to Capture point - 2nd wall ")
        GoToArea(Troop.Xgrunt0007, 40, 5, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0008, 35, 10, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0021, 45, 0, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0025, 35, 0, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0028, 45, 5, 20, 0, constant.ORDER_NORMAL)
      end
      if Time < GetTime() then
        TimeReset = 0
      end
    end
    EndFrame()
  end
  return
end
