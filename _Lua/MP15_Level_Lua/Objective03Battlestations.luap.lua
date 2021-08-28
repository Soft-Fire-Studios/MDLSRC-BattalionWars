function Objective03Battlestations(owner)
  local Battlestation01 = 0
  local Battlestation02 = 0
  local Battlestation03 = 0
  local Battlestation04 = 0
  local BattlestationObjective01 = 0
  local BattlestationObjective02 = 0
  local BattlestationObjective03 = 0
  local BattlestationObjective04 = 0
  local Battlestation = 0
  repeat
    EndFrame()
  until cutscenefinished03 == 1
  while true do
    if Battlestation01 == 0 and IsDead(Ground_Vehicle.XylvanianBattlestation01) then
      SetObjectiveData(Objective_Marker.BattlestationMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Battlestation01 = 1
      Battlestation = Battlestation + 1
      DebugOut("*Objective03Battlestations* - Battlestation01 is dead")
    end
    EndFrame()
    if Battlestation02 == 0 and IsDead(Ground_Vehicle.XylvanianBattlestation02) then
      SetObjectiveData(Objective_Marker.BattlestationMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Battlestation02 = 1
      Battlestation = Battlestation + 1
      DebugOut("*Objective03Battlestations* - Battlestation02 is dead")
    end
    EndFrame()
    if Battlestation03 == 0 and IsDead(Ground_Vehicle.XylvanianBattlestation03) then
      SetObjectiveData(Objective_Marker.BattlestationMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Battlestation03 = 1
      Battlestation = Battlestation + 1
      DebugOut("*Objective03Battlestations* - Battlestation03 is dead")
    end
    EndFrame()
    if Battlestation04 == 0 and IsDead(Ground_Vehicle.XylvanianBattlestation04) then
      SetObjectiveData(Objective_Marker.BattlestationMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Battlestation04 = 1
      Battlestation = Battlestation + 1
      DebugOut("*Objective03Battlestations* - Battlestation04 is dead")
    end
    EndFrame()
    if Battlestation == 1 and BattlestationObjective01 == 0 then
      if missionend == 0 then
        ClearMessageQueue(constant.PLAYER_ONE)
        ClearMessageQueue(constant.PLAYER_TWO)
        PhoneMessage(52, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy)
      end
      SetObjectiveData(Objective.Battlestation00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      BattlestationObjective01 = 1
    end
    EndFrame()
    if Battlestation == 2 and BattlestationObjective02 == 0 then
      if missionend == 0 then
        ClearMessageQueue(constant.PLAYER_ONE)
        ClearMessageQueue(constant.PLAYER_TWO)
        PhoneMessage(53, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy)
      end
      SetObjectiveData(Objective.Battlestation00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      BattlestationObjective02 = 1
    end
    EndFrame()
    if Battlestation == 3 and BattlestationObjective03 == 0 then
      if missionend == 0 then
        ClearMessageQueue(constant.PLAYER_ONE)
        ClearMessageQueue(constant.PLAYER_TWO)
        PhoneMessage(54, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy)
      end
      SetObjectiveData(Objective.Battlestation00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      BattlestationObjective03 = 1
    end
    EndFrame()
    if Battlestation == 4 and BattlestationObjective04 == 0 then
      SetObjectiveData(Objective.Battlestation00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      BattlestationObjective04 = 1
      break
    end
    EndFrame()
  end
end
