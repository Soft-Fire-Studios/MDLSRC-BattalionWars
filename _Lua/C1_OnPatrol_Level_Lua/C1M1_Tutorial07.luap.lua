function C1M1_Tutorial07(owner)
  Despawn(Troop.WFgrunt0001)
  Despawn(Troop.WFgrunt0002)
  Despawn(Troop.WFgrunt0003)
  Despawn(Troop.WFgrunt0004)
  Despawn(Building.AmmoTent0001)
  Despawn(Troop.TammoDumpGuard0001)
  Despawn(Troop.TammoDumpGuard0002)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.AlphaCompany) then
      DebugOut("Spawning Alpha Company - failsafe if they haven't already spawned")
      Spawn(Troop.WFgrunt0001)
      Spawn(Troop.WFgrunt0002)
      Spawn(Troop.WFgrunt0003)
      Spawn(Troop.WFgrunt0004)
      SetActive(Troop.WFgrunt0001, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFgrunt0002, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFgrunt0003, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFgrunt0004, constant.ACTIVE, constant.ADJUST_WEAPON)
      ClearMessageQueue()
      PhoneMessage(122, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(86, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      ControllerImageOn = 1
      DebugOut("Controller Image turned on!")
      DebugOut("Show Small Controller")
      SetHudState(constant.HUD_CONTROLIMAGE_ALL, constant.HUD_ITEM_ON, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 15, 540, 380, 0.6)
      WaitFor(0.5)
      break
    end
    EndFrame()
  end
  local Timer = GetTime()
  while true do
    if (IsUnderPlayerCommand(Troop.WFgruntStart) or IsDead(Troop.WFgruntStart) or GetPlayerUnit() == Troop.WFgruntStart) and (IsUnderPlayerCommand(Troop.WFgrunt0001) or IsDead(Troop.WFgrunt0001) or GetPlayerUnit() == Troop.WFgrunt0001) and (IsUnderPlayerCommand(Troop.WFgrunt0002) or IsDead(Troop.WFgrunt0002) or GetPlayerUnit() == Troop.WFgrunt0002) and (IsUnderPlayerCommand(Troop.WFgrunt0003) or IsDead(Troop.WFgrunt0003) or GetPlayerUnit() == Troop.WFgrunt0003) and (IsUnderPlayerCommand(Troop.WFgrunt0004) or IsDead(Troop.WFgrunt0004) or GetPlayerUnit() == Troop.WFgrunt0004) then
      SetObjectiveData(Objective_Marker.ObjectiveSix, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.AlphaCompany, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.AlphaCompanySentry, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.AlphaCompany, constant.OBJECTIVE_DATA_VISIBLE, 0)
      ClearMessageQueue()
      PhoneMessage(50, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(88, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      DebugOut("Show Small Controller")
      SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 15, 540, 380, 0.6)
      break
    end
    if GetTime() > Timer + 15 then
      PhoneMessage(86, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      DebugOut("Show Small Controller")
      SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 15, 540, 380, 0.6)
      Timer = GetTime()
      DebugOut("Tutorial 07a Timer = ", Timer, " seconds")
    end
    EndFrame()
  end
  local Timer = GetTime()
  while true do
    if GetPlayerUnit() == Troop.WFgruntStart and (not IsUnderPlayerCommand(Troop.WFgrunt0001) or not (0 < GetHealthPercent(Troop.WFgrunt0001))) and (not IsUnderPlayerCommand(Troop.WFgrunt0002) or not (0 < GetHealthPercent(Troop.WFgrunt0002))) and (not IsUnderPlayerCommand(Troop.WFgrunt0003) or not (0 < GetHealthPercent(Troop.WFgrunt0003))) and (not IsUnderPlayerCommand(Troop.WFgrunt0004) or not (0 < GetHealthPercent(Troop.WFgrunt0004))) then
      break
    end
    if GetPlayerUnit() == Troop.WFgrunt0001 and (not IsUnderPlayerCommand(Troop.WFgruntStart) or not (0 < GetHealthPercent(Troop.WFgruntStart))) and (not IsUnderPlayerCommand(Troop.WFgrunt0002) or not (0 < GetHealthPercent(Troop.WFgrunt0002))) and (not IsUnderPlayerCommand(Troop.WFgrunt0003) or not (0 < GetHealthPercent(Troop.WFgrunt0003))) and (not IsUnderPlayerCommand(Troop.WFgrunt0004) or not (0 < GetHealthPercent(Troop.WFgrunt0004))) then
      break
    end
    if GetPlayerUnit() == Troop.WFgrunt0002 and (not IsUnderPlayerCommand(Troop.WFgruntStart) or not (0 < GetHealthPercent(Troop.WFgruntStart))) and (not IsUnderPlayerCommand(Troop.WFgrunt0001) or not (0 < GetHealthPercent(Troop.WFgrunt0001))) and (not IsUnderPlayerCommand(Troop.WFgrunt0003) or not (0 < GetHealthPercent(Troop.WFgrunt0003))) and (not IsUnderPlayerCommand(Troop.WFgrunt0004) or not (0 < GetHealthPercent(Troop.WFgrunt0004))) then
      break
    end
    if GetPlayerUnit() == Troop.WFgrunt0003 and (not IsUnderPlayerCommand(Troop.WFgruntStart) or not (0 < GetHealthPercent(Troop.WFgruntStart))) and (not IsUnderPlayerCommand(Troop.WFgrunt0001) or not (0 < GetHealthPercent(Troop.WFgrunt0001))) and (not IsUnderPlayerCommand(Troop.WFgrunt0002) or not (0 < GetHealthPercent(Troop.WFgrunt0002))) and (not IsUnderPlayerCommand(Troop.WFgrunt0004) or not (0 < GetHealthPercent(Troop.WFgrunt0004))) then
      break
    end
    if GetPlayerUnit() == Troop.WFgrunt0004 and (not IsUnderPlayerCommand(Troop.WFgruntStart) or not (0 < GetHealthPercent(Troop.WFgruntStart))) and (not IsUnderPlayerCommand(Troop.WFgrunt0001) or not (0 < GetHealthPercent(Troop.WFgrunt0001))) and (not IsUnderPlayerCommand(Troop.WFgrunt0002) or not (0 < GetHealthPercent(Troop.WFgrunt0002))) and (not IsUnderPlayerCommand(Troop.WFgrunt0003) or not (0 < GetHealthPercent(Troop.WFgrunt0003))) then
      break
    end
    if GetTime() > Timer + 15 then
      PhoneMessage(88, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      DebugOut("Show Small Controller")
      SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 15, 540, 380, 0.6)
      Timer = GetTime()
      DebugOut("Tutorial 07b Timer = ", Timer, " seconds")
    end
    EndFrame()
  end
  SetObjectiveData(Objective.AlphaCompanySentry, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.AlphaCompanyFollow, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.AlphaCompanySentry, constant.OBJECTIVE_DATA_VISIBLE, 0)
  ClearMessageQueue()
  PhoneMessage(51, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(89, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  DebugOut("Show Small Controller")
  SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 15, 540, 380, 0.6)
  local Timer = GetTime()
  while true do
    if (IsUnderPlayerCommand(Troop.WFgruntStart) or IsDead(Troop.WFgruntStart) or GetPlayerUnit() == Troop.WFgruntStart) and (IsUnderPlayerCommand(Troop.WFgrunt0001) or IsDead(Troop.WFgrunt0001) or GetPlayerUnit() == Troop.WFgrunt0001) and (IsUnderPlayerCommand(Troop.WFgrunt0002) or IsDead(Troop.WFgrunt0002) or GetPlayerUnit() == Troop.WFgrunt0002) and (IsUnderPlayerCommand(Troop.WFgrunt0003) or IsDead(Troop.WFgrunt0003) or GetPlayerUnit() == Troop.WFgrunt0003) and (IsUnderPlayerCommand(Troop.WFgrunt0004) or IsDead(Troop.WFgrunt0004) or GetPlayerUnit() == Troop.WFgrunt0004) then
      SetObjectiveData(Objective.AlphaCompanyFollow, constant.OBJECTIVE_DATA_STATE, 1)
      break
    end
    if GetTime() > Timer + 15 then
      PhoneMessage(87, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      DebugOut("Show Small Controller")
      SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_FLASH, 15, 540, 380, 0.6)
      Timer = GetTime()
      DebugOut("Tutorial 07c Timer = ", Timer, " seconds")
    end
    EndFrame()
  end
  SetHudState(constant.HUD_CONTROLIMAGE_X, constant.HUD_ITEM_OFF, 540, 380, 0.6)
  Vanish(Destroyable_Object.Gate0003)
  Vanish(Destroyable_Object.Gate0006)
  Kill(Destroyable_Object.Gateopen0001)
  C1M1_Global_Variable = 9
  DebugOut("C1M1 Global Variable = ", C1M1_Global_Variable)
  Spawn(Building.AmmoTent0001)
  Spawn(Troop.TammoDumpGuard0001)
  Spawn(Troop.TammoDumpGuard0002)
  return
end
