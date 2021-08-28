function Pause_Tutorial_01_MG_Nests(owner)
  local mgwest = 0
  local mgeast = 0
  local totalfull = 0
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    SetActive(Building.MG_Nest_West, constant.INACTIVE)
    SetActive(Building.MG_Nest_East, constant.INACTIVE)
  end
  repeat
    EndFrame()
  until PauseTutorial01 == 1
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    PhoneMessage(68, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
    repeat
      EndFrame()
    until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
    SetFunctionIndicatorState(false)
    PauseTutorialShow()
    ClearMessageQueue(constant.PLAYER_ONE)
    PhoneMessage(69, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, true)
    SetupPauseTutorialStack(true, constant.HUD_FUNC_INDICATOR_LOAD, false, Troop.SE_Palace_Grunt_1)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, true)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 99999)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 99999)
    WaitForPTText(2)
    repeat
      EndFrame()
    until ReadControllerState(constant.GCONTROL_PAUSE_SELECT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)
    SetupPauseTutorialStack(false, constant.HUD_FUNC_INDICATOR_GUARD, false, Troop.SE_Palace_Grunt_1)
    SetTutorialItemSolid(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, false)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF)
    SetHudState(constant.PLAYER_ONE, constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_OFF)
    ClearMessageQueue(constant.PLAYER_ONE)
    PauseTutorialExit()
    SetFunctionIndicatorState(true)
    PhoneMessageWithObjective(70, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
    SetActive(Building.MG_Nest_West, constant.ACTIVE)
    SetActive(Building.MG_Nest_East, constant.ACTIVE)
  else
    PhoneMessageWithObjective(71, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
  end
  PauseTutorial01 = 2
  SetObjectiveData(Objective.SO_MG_Nests_02, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.MG_Nest_West_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.MG_Nest_East_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    if 0 < NumPassengersInUnit(Building.MG_Nest_East) and mgeast == 0 then
      DebugOut("MG Nest East is full")
      SetObjectiveData(Objective_Marker.MG_Nest_East_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      mgeast = 1
    end
    if NumPassengersInUnit(Building.MG_Nest_East) == 0 and mgeast == 1 then
      DebugOut("MG Nest East is Empty")
      SetObjectiveData(Objective_Marker.MG_Nest_East_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      mgeast = 0
    end
    if 0 < NumPassengersInUnit(Building.MG_Nest_West) and mgwest == 0 then
      DebugOut("MG Nest West is full")
      SetObjectiveData(Objective_Marker.MG_Nest_West_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      mgwest = 1
    end
    if NumPassengersInUnit(Building.MG_Nest_West) == 0 and mgwest == 1 then
      DebugOut("MG Nest West is Empty")
      SetObjectiveData(Objective_Marker.MG_Nest_West_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      mgwest = 0
    end
    if mgwest == 0 and mgeast == 0 and totalfull ~= 0 then
      DebugOut("Both MG Nests now empty, updating Objective Screen")
      totalfull = 0
      SetObjectiveData(Objective.SO_MG_Nests_02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.SO_MG_Nests_12, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_MG_Nests_22, constant.OBJECTIVE_DATA_VISIBLE, 0)
    end
    if (mgwest == 1 and mgeast == 0 or mgwest == 0 and mgeast == 1) and totalfull ~= 1 then
      DebugOut("One MG Nests now full, updating Objective Screen")
      totalfull = 1
      SetObjectiveData(Objective.SO_MG_Nests_02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_MG_Nests_12, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.SO_MG_Nests_22, constant.OBJECTIVE_DATA_VISIBLE, 0)
    end
    if mgwest == 1 and mgeast == 1 and totalfull ~= 2 then
      DebugOut("Both MG Nests now full, updating Objective Screen")
      totalfull = 2
      SetObjectiveData(Objective.SO_MG_Nests_02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_MG_Nests_12, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.SO_MG_Nests_22, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    EndFrame()
  until totalfull == 2
  DebugOut("Both MG Nests full, Secondary Objective Complete")
  TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
  PhoneMessageWithObjective(73, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE, 0, constant.SECONDARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.SO_MG_Nests_02, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.SO_MG_Nests_12, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.SO_MG_Nests_22, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.SO_MG_Nests_22, constant.OBJECTIVE_DATA_STATE, 1)
end
