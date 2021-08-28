function C4M5_Capture_Point_3(owner)
  Despawn(Air_Vehicle.XBomber2)
  local Time = 0
  local TimeReset = 0
  while true do
    if GetState(Capture_Point.Wall_3) == 1 then
      DebugOut("Capture point - 3rd wall has been captured!")
      Vanish(Destroyable_Object.OtherGate3)
      Vanish(Destroyable_Object.Gate3)
      Kill(Destroyable_Object.GateSfx3)
      SetObjectiveData(Objective_Marker.Objective_Wall_3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Objective_Wall_3, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Objective_Stronghold, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Objective_Stronghold, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Objective_Stronghold_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      Spawn(Air_Vehicle.XBomber2)
      FollowUnit(Air_Vehicle.XBomber2, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      PhoneMessage(12, 0, 0, 5, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(35, 0, 1, 5, SpriteID.CO_X_Vlad_Happy)
      CapturePoint3Captured = 1
      LastCapturePointTaken = 3
      NumberOfCapturePointsHeld = NumberOfCapturePointsHeld + 1
      DebugOut("Number of Capture Points held = ", NumberOfCapturePointsHeld)
      WaitFor(10)
      break
    end
    if 1 <= NumPassengersInUnit(Capture_Point.Wall_3) then
      if TimeReset == 0 then
        Time = GetTime() + 30
        TimeReset = 1
        DebugOut("Sending Men to Capture point - 3rd wall ")
        GoToArea(Troop.Xgrunt0005, 15, 230, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0006, 10, 235, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0013, 20, 225, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0014, 15, 230, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0001, 10, 225, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.Xgrunt0002, 20, 235, 20, 0, constant.ORDER_NORMAL)
      end
      if Time < GetTime() then
        TimeReset = 0
      end
    end
    EndFrame()
  end
  return
end
