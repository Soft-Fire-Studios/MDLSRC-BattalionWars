function C1M1_Tutorial09(owner)
  Despawn(Building.Entity0007)
  Despawn(Building.Entity0008)
  while true do
    if C1M1_Global_Variable == 9 then
      DebugOut("Show Small Controller")
      SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      ClearMessageQueue()
      PhoneMessage(85, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      SetObjectiveData(Objective_Marker.ObjectiveEight, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      break
    end
    EndFrame()
  end
  local Timer = GetTime()
  while true do
    if IsInArea(GetPlayerUnit(), 624, 215, 20) then
      SetObjectiveData(Objective_Marker.ObjectiveEight, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.ObjectiveNine, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      break
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.Eight) then
      SetObjectiveData(Objective_Marker.ObjectiveEight, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.ObjectiveNine, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      break
    end
    if IsInArea(GetPlayerUnit(), 738, 340, 40) then
      break
    end
    if GetTime() > Timer + 30 then
      PhoneMessage(85, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Happy)
      Timer = GetTime()
      DebugOut("Tutorial 09a Timer = ", Timer, " seconds")
    end
    EndFrame()
  end
  local Timer = GetTime()
  while true do
    if IsInArea(GetPlayerUnit(), 738, 340, 40) then
      SetObjectiveData(Objective_Marker.ObjectiveEight, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.ObjectiveNine, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.AmmoDump, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.AmmoDump, constant.OBJECTIVE_DATA_VISIBLE, 1)
      break
    end
    if GetTime() > Timer + 45 then
      PhoneMessage(180, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Happy)
      Timer = GetTime()
      DebugOut("Tutorial 09b Timer = ", Timer, " seconds")
    end
    EndFrame()
  end
  local Timer = GetTime()
  while true do
    if IsDead(Building.AmmoTent0001) then
      break
    end
    if IsDead(Destroyable_Object.WireA0001) or IsDead(Destroyable_Object.WireA0002) or IsDead(Destroyable_Object.WireA0003) or IsDead(Destroyable_Object.WireA0004) or IsDead(Destroyable_Object.WireA0005) or IsDead(Destroyable_Object.WireA0006) or IsDead(Destroyable_Object.WireA0007) or IsDead(Destroyable_Object.WireA0008) then
      break
    end
    EndFrame()
  end
  DebugOut("CALL & SEND NOW DISABLED!")
  EnableControllerItem(constant.CONTROL_SEND, 0)
  EnableControllerItem(constant.CONTROL_CALL, 0)
  SetObjectiveData(Objective.AmmoDump, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Recon, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetHudState(constant.HUD_CONTROLIMAGE_Y, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetObjectiveData(Objective_Marker.WFRecon, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.AmmoDump, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  DebugOut("Show Small Controller")
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 12, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 12, 540, 380, 0.6)
  ClearMessageQueue()
  PhoneMessage(127, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(128, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
  local Timer = GetTime()
  while true do
    if GetPlayerUnit() == Ground_Vehicle.WFrecon0001 then
      SetActive(Troop.WFgrunt0001, constant.INACTIVE)
      SetActive(Troop.WFgrunt0002, constant.INACTIVE)
      SetActive(Troop.WFgrunt0003, constant.INACTIVE)
      SetActive(Troop.WFgrunt0004, constant.INACTIVE)
      SetActive(Troop.WFgruntStart, constant.INACTIVE)
      break
    end
    if GetTime() > Timer + 15 and C1M1_Global_Variable < 12 then
      DebugOut("Show Small Controller")
      SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 15, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_FLASH, 15, 540, 380, 0.6)
      PhoneMessage(128, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      Timer = GetTime()
      DebugOut("Tutorial 9d Timer = ", Timer, " seconds")
    end
    EndFrame()
  end
  ClearMessageQueue()
  PhoneMessage(183, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
  ControllerImageOn = 0
  DebugOut("Controller Image turned off!")
  SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_Z, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  SetObjectiveData(Objective_Marker.WFRecon, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.ObjectiveEleven, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Recon, constant.OBJECTIVE_DATA_STATE, 1)
  C1M1_Global_Variable = 10
  DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
  EndFrame()
  return
end
