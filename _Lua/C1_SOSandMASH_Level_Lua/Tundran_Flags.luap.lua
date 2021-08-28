function Tundran_Flags(owner)
  WaitFor(1)
  local FlagStatus1 = 0
  local FlagStatus2 = 0
  local FlagStatus3 = 0
  local FlagHint = 0
  local PlayMessage = 0
  FlagsScript = owner
  repeat
    if GetState(Capture_Point.Flag1) == 1 and FlagStatus1 == 0 then
      SetObjectiveData(Objective_Marker.Flag1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumFlagsCaptured = NumFlagsCaptured + 1
      DebugOut("Flags Captured == ", NumFlagsCaptured)
      FlagStatus1 = 1
      PlayMessage = 1
    end
    if GetState(Capture_Point.Flag2) == 1 and FlagStatus2 == 0 then
      SetObjectiveData(Objective_Marker.Flag2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumFlagsCaptured = NumFlagsCaptured + 1
      DebugOut("Flags Captured == ", NumFlagsCaptured)
      FlagStatus2 = 1
      PlayMessage = 1
    end
    if GetState(Capture_Point.Flag3) == 1 and FlagStatus3 == 0 then
      SetObjectiveData(Objective_Marker.Flag3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      NumFlagsCaptured = NumFlagsCaptured + 1
      DebugOut("Flags Captured == ", NumFlagsCaptured)
      FlagStatus3 = 1
      PlayMessage = 1
    end
    if PlayMessage == 1 then
      if NumFlagsCaptured == 1 then
        PhoneMessage(24, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
        PlayMessage = 0
        SetObjectiveData(Objective.Capture_Flags_0of3, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Capture_Flags_1of3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if NumFlagsCaptured == 2 then
        PhoneMessage(26, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
        PhoneMessage(28, 0, 2, 5, SpriteID.CO_T_Gorgi_Sad)
        PhoneMessage(29, 0, 2, 3, SpriteID.CO_T_Nova_Sad)
        PhoneMessage(30, 0, 2, 4, SpriteID.CO_T_Gorgi_Sad)
        PlayMessage = 0
        SetObjectiveData(Objective.Capture_Flags_1of3, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Capture_Flags_2of3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if (0 < NumPassengersInUnit(Capture_Point.Flag1) or 0 < NumPassengersInUnit(Capture_Point.Flag2) or 0 < NumPassengersInUnit(Capture_Point.Flag3)) and FlagHint == 0 then
      FlagHint = 1
    end
    if (IsInRange(GetPlayerUnit(), Capture_Point.Flag1, 60) or IsInRange(GetPlayerUnit(), Capture_Point.Flag2, 60) or IsInRange(GetPlayerUnit(), Capture_Point.Flag3, 60)) and FlagHint == 0 then
      PhoneMessage(51, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(52, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
      FlagHint = 1
    end
    EndFrame()
  until NumFlagsCaptured == 3
  Kill(Lose1)
  Kill(Lose2)
  SetObjectiveData(Objective.Capture_Flags_2of3, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Capture_Flags_3of3, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Capture_Flags_3of3, constant.OBJECTIVE_DATA_STATE, 1)
  while GetPlayerUnit() == nil do
    EndFrame()
  end
  FreezePlayer()
  ClearMessageQueue()
  PhoneMessage(34, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(35, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
  WaitFor(15)
  LevelState = 2
  repeat
    EndFrame()
  until LevelState == 3
  StopScoringTimer()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  WinMission()
end
