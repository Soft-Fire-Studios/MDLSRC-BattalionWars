function C4M5_Capture_Stronghold(owner)
  local Capture1 = 0
  local Capture2 = 0
  local Time = 0
  local TimeReset = 0
  local StrongObj = 0
  local loop = 0
  while loop == 0 do
    if GetState(Capture_Point.Stronghold) == 1 and GetState(Capture_Point.Stronghold_2) == 1 then
      while levelend == 1 do
        EndFrame()
      end
      levelend = 1
      DebugOut("Capture point - Stronghold has been captured!")
      DeclareVictory(constant.ARMY_WF)
      FreezePlayer()
      PhoneMessage(25, constant.ID_NONE, 0, 7, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(26, 0, 1, 5, SpriteID.CO_X_Vlad_Sad)
      PhoneMessage(27, constant.ID_NONE, 0, 7, SpriteID.CO_WF_Betty_Happy)
      SetObjectiveData(Objective.Objective_Stronghold_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Objective_Stronghold_3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Objective_Stronghold_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Objective_Stronghold, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      WaitFor(23.8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
      Kill(owner)
      loop = 1
      WaitFor(15)
      EndFrame()
    end
    if GetState(Capture_Point.Stronghold) == 1 and Capture1 == 0 then
      DebugOut("Capture point 1 has been captured by the player! ")
      DebugOut(StrongObj)
      Capture1 = 1
      StrongObj = StrongObj + 1
      SetObjectiveData(Objective_Marker.Objective_Stronghold, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
      EndFrame()
    end
    if GetState(Capture_Point.Stronghold_2) == 1 and Capture2 == 0 then
      DebugOut("Capture point 2 has been captured by the player!")
      DebugOut(StrongObj)
      StrongObj = StrongObj + 1
      Capture2 = 1
      SetObjectiveData(Objective_Marker.Objective_Stronghold_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      EndFrame()
    end
    if GetState(Capture_Point.Stronghold) == 1 == false and Capture1 == 1 then
      DebugOut("Capture point  1 -  has been captured by the X boys!")
      DebugOut(StrongObj)
      Capture1 = 0
      StrongObj = StrongObj - 1
      SetObjectiveData(Objective_Marker.Objective_Stronghold, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      EndFrame()
    end
    if GetState(Capture_Point.Stronghold_2) == 1 == false and Capture2 == 1 then
      WaitFor(2)
      DebugOut("Capture point 2 - has been captured by the X boys!")
      DebugOut(StrongObj)
      Capture2 = 0
      StrongObj = StrongObj - 1
      SetObjectiveData(Objective_Marker.Objective_Stronghold_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      EndFrame()
    end
    if StrongObj == 1 then
      WaitFor(1)
      SetObjectiveData(Objective.Objective_Stronghold, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Objective_Stronghold_2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      EndFrame()
    end
    if StrongObj == 0 and GetState(Capture_Point.Wall_3) == 1 then
      WaitFor(1)
      SetObjectiveData(Objective.Objective_Stronghold, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Objective_Stronghold_2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      EndFrame()
    end
    if StrongObj == 2 then
      WaitFor(1)
      EndFrame()
    end
    if 1 <= NumPassengersInUnit(Capture_Point.Stronghold) then
      if TimeReset == 0 then
        Time = GetTime() + 30
        TimeReset = 1
        DebugOut("Sending Men to Capture point - Stronghold")
      end
      if Time < GetTime() then
        TimeReset = 0
      end
    end
    EndFrame()
  end
  return
end
