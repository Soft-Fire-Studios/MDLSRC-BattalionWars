function C1M1_Target_Dummy(owner)
  local CombatRollDone = 0
  local CombatRollTimer = 0
  local DestroyedDummy01 = 0
  local DestroyedDummy02 = 0
  local DestroyedDummy03 = 0
  local DestroyedDummy04 = 0
  local DestroyedDummy05 = 0
  local DestroyedDummyObjective01 = 0
  local DestroyedDummyObjective02 = 0
  local DestroyedDummyObjective03 = 0
  local DestroyedDummyObjective04 = 0
  local DestroyedDummyObjective05 = 0
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.Roll) or IsInArea(GetPlayerUnit(), Map_Zone.Jump) then
      SetObjectiveData(Objective_Marker.Objective_One_B, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      PhoneMessage(55, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
      SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 9999, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 9999, 540, 380, 0.6)
      PhoneMessage(91, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
      break
    end
    EndFrame()
  end
  local Timer = GetTime()
  while true do
    if IsDead(Building.TargetDummy0001) and DestroyedDummy01 == 0 then
      DestroyedDummy01 = 1
      DummiesDestroyed = DummiesDestroyed + 1
      DebugOut("Number of Dummies Destroyed = ", DummiesDestroyed)
    end
    if IsDead(Building.TargetDummy0002) and DestroyedDummy02 == 0 then
      DestroyedDummy02 = 1
      DummiesDestroyed = DummiesDestroyed + 1
      DebugOut("Number of Dummies Destroyed = ", DummiesDestroyed)
    end
    if IsDead(Building.TargetDummy0003) and DestroyedDummy03 == 0 then
      DestroyedDummy03 = 1
      DummiesDestroyed = DummiesDestroyed + 1
      DebugOut("Number of Dummies Destroyed = ", DummiesDestroyed)
    end
    if IsDead(Building.TargetDummy0004) and DestroyedDummy04 == 0 then
      DestroyedDummy04 = 1
      DummiesDestroyed = DummiesDestroyed + 1
      DebugOut("Number of Dummies Destroyed = ", DummiesDestroyed)
    end
    if IsDead(Building.TargetDummy0005) and DestroyedDummy05 == 0 then
      DestroyedDummy05 = 1
      DummiesDestroyed = DummiesDestroyed + 1
      DebugOut("Number of Dummies Destroyed = ", DummiesDestroyed)
    end
    if DummiesDestroyed == 1 and DestroyedDummyObjective01 == 0 then
      DestroyedDummyObjective01 = 1
      SetObjectiveData(Objective.TargetDummy0, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TargetDummy0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy1, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if DummiesDestroyed == 2 and DestroyedDummyObjective02 == 0 then
      DestroyedDummyObjective02 = 1
      SetObjectiveData(Objective.TargetDummy1, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TargetDummy0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy2, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if DummiesDestroyed == 3 and DestroyedDummyObjective03 == 0 then
      DestroyedDummyObjective03 = 1
      SetObjectiveData(Objective.TargetDummy2, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TargetDummy0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy3, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if DummiesDestroyed == 4 and DestroyedDummyObjective04 == 0 then
      DestroyedDummyObjective04 = 1
      SetObjectiveData(Objective.TargetDummy3, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TargetDummy0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy4, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if DummiesDestroyed == 5 and DestroyedDummyObjective05 == 0 then
      DestroyedDummyObjective05 = 1
      SetObjectiveData(Objective.TargetDummy4, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.TargetDummy0, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy1, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy2, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy3, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy4, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.TargetDummy5, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if DummiesDestroyed >= 3 and CombatRollDone == 0 then
      CombatRollDone = 1
      SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF, 540, 380, 0.6)
      ClearMessageQueue()
      PhoneMessage(17, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      CombatRollTimer = GetTime()
      SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 4, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_STICK, constant.HUD_ITEM_FLASH, 4, 540, 380, 0.6)
      SetHudState(constant.HUD_CONTROLIMAGE_B, constant.HUD_ITEM_FLASH, 4, 540, 380, 0.6)
      WaitFor(3)
      CombatRollDone = 3
    end
    if CombatRollDone ~= 1 and CombatRollDone ~= 2 then
      if 5 <= DummiesDestroyed then
        DebugOut("Dummies Destroyed")
        PhoneMessage(24, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Happy)
        SetObjectiveData(Objective.TargetDummy5, constant.OBJECTIVE_DATA_VISIBLE, 0)
        Kill(Destroyable_Object.Gateopen0004)
        Vanish(Destroyable_Object.Gate0007)
        Vanish(Destroyable_Object.Gate0008)
        break
      end
      if GetTargetedObject() == Building.TargetDummy0001 and 0 < PlayerAngleToTarget(Building.TargetDummy0001) then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0001))
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0002 and 0 < PlayerAngleToTarget(Building.TargetDummy0002) then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0002))
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0003 and 0 < PlayerAngleToTarget(Building.TargetDummy0003) then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0003))
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0004 and 0 < PlayerAngleToTarget(Building.TargetDummy0004) then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0004))
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0005 and 0 < PlayerAngleToTarget(Building.TargetDummy0005) then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0005))
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0001 and PlayerAngleToTarget(Building.TargetDummy0001) == 0 then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0001))
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0002 and PlayerAngleToTarget(Building.TargetDummy0002) == 0 then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0002))
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0003 and PlayerAngleToTarget(Building.TargetDummy0003) == 0 then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0003))
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0004 and PlayerAngleToTarget(Building.TargetDummy0004) == 0 then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0004))
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTargetedObject() == Building.TargetDummy0005 and PlayerAngleToTarget(Building.TargetDummy0005) == 0 then
        DebugOut("Angle to Target = ", PlayerAngleToTarget(Building.TargetDummy0005))
        SetHudState(constant.HUD_CONTROLIMAGE_SHOULDERL, constant.HUD_ITEM_OFF, 540, 380, 0.6)
        SetHudState(constant.HUD_CONTROLIMAGE_A, constant.HUD_ITEM_FLASH, 1, 540, 380, 0.6)
        WaitFor(1)
      end
      if GetTime() > Timer + 30 then
        PhoneMessage(45, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        Timer = GetTime()
        DebugOut("Target Dummy Timer = ", Timer, " seconds")
      end
    end
    EndFrame()
  end
  EndFrame()
  return
end
