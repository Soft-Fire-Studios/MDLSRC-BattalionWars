function Gambit_Part_1_Gameflow_2(owner)
  local BlockageDone = 0
  local GateWinchRightDead = 0
  local GateWinchLeftDead = 0
  Despawn(Capture_Point.IronTower01)
  Despawn(Air_Vehicle.ILbomber02)
  Despawn(Troop.ILguard03, true)
  Despawn(Troop.ILguard05, true)
  Despawn(Troop.Entity550041183)
  Despawn(Troop.Entity550041178)
  Despawn(Troop.Entity550041184)
  Despawn(Troop.Entity550041177)
  Despawn(Air_Vehicle.ILbomberEnd01)
  Despawn(Air_Vehicle.ILbomberEnd02)
  Despawn(Air_Vehicle.ILbomberEnd03)
  Despawn(Ground_Vehicle.ILtankEnd01)
  Despawn(Ground_Vehicle.ILtankEnd02)
  Despawn(Ground_Vehicle.ILtankEnd03)
  Despawn(Ground_Vehicle.ILtankEnd04)
  Despawn(Ground_Vehicle.ILtankEnd05)
  Despawn(Troop.ILgruntEnd01)
  Despawn(Troop.ILgruntEnd02)
  Despawn(Troop.ILgruntEnd03)
  Despawn(Troop.ILgruntEnd04)
  Despawn(Troop.ILgruntEnd05)
  Despawn(Troop.ILgruntEnd06)
  Despawn(Troop.SgruntEnd01)
  Despawn(Troop.SgruntEnd02)
  Despawn(Troop.SgruntEnd03)
  Despawn(Troop.SbearerEnd01)
  SetActive(Troop.ILguard01, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.ILguard02, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.ILguard04, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.ILguard06, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.ILguard07, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetActive(Troop.ILguard08, constant.INACTIVE, constant.DONT_ADJUST_WEAPON)
  SetUnitInvulnerable(Building.Gate_Winch_Left, true)
  SetUnitInvulnerable(Building.Gate_Winch_Right, true)
  SetActive(Building.Gate_Winch_Left, constant.INACTIVE)
  SetActive(Building.Gate_Winch_Right, constant.INACTIVE)
  SetUnitInvulnerable(Building.Blockage, true)
  SetActive(Building.Blockage, constant.INACTIVE)
  SetUnitInvulnerable(Building.AmmoDump12, true)
  SetUnitInvulnerable(Building.AmmoDump13, true)
  SetUnitInvulnerable(Building.AmmoDump14, true)
  SetUnitInvulnerable(Building.AmmoDump20, true)
  SetActive(Building.AmmoDump12, constant.INACTIVE)
  SetActive(Building.AmmoDump13, constant.INACTIVE)
  SetActive(Building.AmmoDump14, constant.INACTIVE)
  SetActive(Building.AmmoDump20, constant.INACTIVE)
  SetActive(Building.Entity550035020, constant.INACTIVE)
  SetActive(Building.Entity550035024, constant.INACTIVE)
  SetActive(Building.Entity550041180, constant.INACTIVE)
  SetActive(Building.Entity550035034, constant.INACTIVE)
  SetActive(Building.Entity550035036, constant.INACTIVE)
  SetActive(Building.Entity550035032, constant.INACTIVE)
  SetActive(Building.Entity550035026, constant.INACTIVE)
  SetActive(Building.Entity550035025, constant.INACTIVE)
  SetActive(Building.Entity550035031, constant.INACTIVE)
  SetActive(Building.Entity550035035, constant.INACTIVE)
  SetActive(Building.Entity550035033, constant.INACTIVE)
  SetActive(Building.Entity550035037, constant.INACTIVE)
  SetActive(Building.Entity550035038, constant.INACTIVE)
  while true do
    if PlayerEnteredDrain == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Drain01) or IsInArea(GetPlayerUnit(), Map_Zone.Drain02) then
        GoToArea(Troop.Sgrunt02, 68, 625, 5, 0, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
        GoToArea(Troop.Sgrunt03, 72, 632, 5, 0, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
        GoToArea(Troop.Sgrunt04, 71, 628, 5, 0, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
        WaitFor(1)
        PlayerEnteredDrain = 1
        WaitFor(1.5)
        SetActive(Troop.Sgrunt02, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetActive(Troop.Sgrunt03, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetActive(Troop.Sgrunt04, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetHudState(constant.PLAYER_ONE, constant.HUD_COMMANDBAR, constant.HUD_ITEM_ON)
        SetHudState(constant.PLAYER_ONE, constant.HUD_COMMANDSTACK, constant.HUD_ITEM_ON)
        SetFunctionIndicatorState(true)
        SetObjectiveData(Objective_Marker.Drain01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        CommandingTimer = GetTime() + 2
      end
      EndFrame()
    end
    if (IsUnderPlayerCommand(Troop.Sgrunt02, constant.PLAYER_ONE) or IsDead(Troop.Sgrunt02)) and (IsUnderPlayerCommand(Troop.Sgrunt03, constant.PLAYER_ONE) or IsDead(Troop.Sgrunt03)) and (IsUnderPlayerCommand(Troop.Sgrunt04, constant.PLAYER_ONE) or IsDead(Troop.Sgrunt04)) and StaffBearerUnderPlayerCommand == 0 then
      StaffBearerUnderPlayerCommand = 1
      CommandingTimer = 0
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessageWithObjective(50, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
      SetObjectiveData(Objective.Drain01, constant.OBJECTIVE_DATA_STATE, 1)
      DestroyablePlayAnim(Destroyable_Object.Gates05, 1, 2)
      DebugOut("Gate Open")
      WaitFor(3)
    end
    if PlayerAtHazard == 0 and (IsInArea(Troop.Sstaffbearer01, Map_Zone.Hazard01) or IsInArea(Troop.Sgrunt01, Map_Zone.Hazard01) or IsInArea(GetPlayerUnit(), Map_Zone.Hazard01)) then
      PlayerAtHazard = 1
      CommandingTimer = 0
      Kill(Destroyable_Object.DestroyableWall01)
      Kill(Destroyable_Object.DestroyableWall02)
      Kill(Destroyable_Object.DestroyableWall03)
      Kill(Destroyable_Object.DestroyableWall04)
    end
    if 1 <= PauseTutorial_SquadAttackDone and DrainGateBlownUp == 0 and PauseTutorial_GateAttackDone == 0 then
      ShootingTimer = GetTime() + 15
      PauseTutorial_GateAttackDone = 1
      WaitFor(1.5)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessageWithObjective(124, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      SetObjectiveData(Objective.GateControls01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.GateControls02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.GateControls01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.GateControls02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetUnitInvulnerable(Building.Gate_Winch_Left, false)
      SetUnitInvulnerable(Building.Gate_Winch_Right, false)
      SetActive(Building.Gate_Winch_Left, constant.ACTIVE)
      SetActive(Building.Gate_Winch_Right, constant.ACTIVE)
    end
    if IsDead(Building.Gate_Winch_Right) and GateWinchRightDead == 0 then
      GateWinchRightDead = 1
      SetObjectiveData(Objective_Marker.GateControls01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Building.Gate_Winch_Left) and GateWinchLeftDead == 0 then
      GateWinchLeftDead = 1
      SetObjectiveData(Objective_Marker.GateControls02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Building.Gate_Winch_Left) and IsDead(Building.Gate_Winch_Right) and DrainGateBlownUp == 0 then
      DrainGateBlownUp = 1
      CommandingTimer = 0
      Kill(Building.Gate_Winch_Left)
      Kill(Building.Gate_Winch_Right)
      DestroyablePlayAnim(Destroyable_Object.Gates02, 1, 2)
      DebugOut("Gate Open")
      WaitFor(1)
      SetObjectiveData(Objective.GateControls01, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if DrainGateBlownUp == 1 and TroopsUnderPlayersCommands == 0 then
      TroopsUnderPlayersCommands = 1
      CommandingTimer = 0
      DialogCallDone = 1
      DestroyablePlayAnim(Destroyable_Object.Gates03, 1, 2)
      DebugOut("Gate Open")
      WaitFor(1)
      SetObjectiveData(Objective_Marker.Send01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessageWithObjective(74, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
    end
    if TroopsUnderPlayersCommands == 1 then
      if (IsInArea(GetPlayerUnit(), Map_Zone.Send01) or IsInArea(Troop.Sgrunt01, Map_Zone.Send01) or IsInArea(Troop.Sgrunt02, Map_Zone.Send01) or IsInArea(Troop.Sgrunt03, Map_Zone.Send01) or IsInArea(Troop.Sgrunt04, Map_Zone.Send01) or IsInArea(Troop.Sstaffbearer01, Map_Zone.Send01)) and TroopsSendDone == 0 and MissionOver == 0 then
        TroopsSendDone = 1
        DialogSendDone = 1
        SetObjectiveData(Objective.Send01, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Send01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Wreckage02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Wreckage02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetUnitInvulnerable(Building.Blockage, false)
        SetActive(Building.Blockage, constant.ACTIVE)
        SetUnitInvulnerable(Building.AmmoDump12, false)
        SetUnitInvulnerable(Building.AmmoDump13, false)
        SetUnitInvulnerable(Building.AmmoDump14, false)
        SetUnitInvulnerable(Building.AmmoDump20, false)
        SetActive(Building.AmmoDump12, constant.ACTIVE)
        SetActive(Building.AmmoDump13, constant.ACTIVE)
        SetActive(Building.AmmoDump14, constant.ACTIVE)
        SetActive(Building.AmmoDump20, constant.ACTIVE)
        CommandingTimer = 0
      end
      EndFrame()
    end
    if (IsDead(Building.AmmoDump12) or IsDead(Building.AmmoDump13) or IsDead(Building.AmmoDump14) or IsDead(Building.AmmoDump20) or IsDead(Building.Blockage)) and BlockageDone == 0 then
      BlockageDone = 1
      BlockageCleared = 1
      FollowReminderDone = 1
      Kill(Building.Blockage)
      Kill(Building.AmmoDump12)
      Kill(Building.AmmoDump13)
      Kill(Building.AmmoDump14)
      Kill(Building.AmmoDump20)
      SetActive(Troop.ILguard01, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      SetActive(Troop.ILguard02, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      SetActive(Troop.ILguard04, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      SetActive(Troop.ILguard06, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      SetActive(Troop.ILguard07, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      SetActive(Troop.ILguard08, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      SetActive(Building.Entity550035020, constant.ACTIVE)
      SetActive(Building.Entity550035024, constant.ACTIVE)
      SetActive(Building.Entity550041180, constant.ACTIVE)
      SetActive(Building.Entity550035034, constant.ACTIVE)
      SetActive(Building.Entity550035036, constant.ACTIVE)
      SetActive(Building.Entity550035032, constant.ACTIVE)
      SetActive(Building.Entity550035026, constant.ACTIVE)
      SetActive(Building.Entity550035025, constant.ACTIVE)
      SetActive(Building.Entity550035031, constant.ACTIVE)
      SetActive(Building.Entity550035035, constant.ACTIVE)
      SetActive(Building.Entity550035033, constant.ACTIVE)
      SetActive(Building.Entity550035037, constant.ACTIVE)
      SetActive(Building.Entity550035038, constant.ACTIVE)
      SetObjectiveData(Objective.Wreckage02, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Wreckage02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Hill01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      WaitFor(1.5)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
    end
    if Hill01Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Hill01) or IsInArea(Troop.Sgrunt01, Map_Zone.Hill01) or IsInArea(Troop.Sgrunt02, Map_Zone.Hill01) or IsInArea(Troop.Sgrunt03, Map_Zone.Hill01) or IsInArea(Troop.Sgrunt04, Map_Zone.Hill01) or IsInArea(Troop.Sstaffbearer02, Map_Zone.Hill01) then
        Hill01Done = 1
        repeat
          EndFrame()
        until IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_01) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_02) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_03) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_04) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_05) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_06) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_07) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_08) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_09) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_10)
        PauseTutorial_CombatRollRepeatStart = 1
        if not IsDead(Building.Blockage) then
          Kill(Building.Blockage)
        end
        SetObjectiveData(Objective.Hill01, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Hill01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Hill02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    end
    if IsUnderPlayerCommand(Troop.Sgrunt02, constant.PLAYER_ONE) and IsUnderPlayerCommand(Troop.Sgrunt03, constant.PLAYER_ONE) and IsUnderPlayerCommand(Troop.Sgrunt04, constant.PLAYER_ONE) and Hill01Done == 1 and DialogCallAgainDone == 0 then
      DialogCallAgainDone = 1
    end
    if Hill02Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Hill02) or IsInArea(Troop.Sgrunt01, Map_Zone.Hill02) or IsInArea(Troop.Sgrunt02, Map_Zone.Hill02) or IsInArea(Troop.Sgrunt03, Map_Zone.Hill02) or IsInArea(Troop.Sgrunt04, Map_Zone.Hill02) or IsInArea(Troop.Sstaffbearer02, Map_Zone.Hill02) then
        Hill02Done = 1
        SetObjectiveData(Objective.Hill02, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Hill02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Hill03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(66, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      end
      EndFrame()
    end
    if Hill03Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Hill03) or IsInArea(Troop.Sgrunt01, Map_Zone.Hill03) or IsInArea(Troop.Sgrunt02, Map_Zone.Hill03) or IsInArea(Troop.Sgrunt03, Map_Zone.Hill03) or IsInArea(Troop.Sgrunt04, Map_Zone.Hill03) or IsInArea(Troop.Sstaffbearer02, Map_Zone.Hill03) then
        TowerTimer = GetTime() + 15
        Hill03Done = 1
        SetObjectiveData(Objective.Hill03, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Hill03, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench04, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective.Tower01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Tower01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessageWithObjective(75, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        PhoneMessageWithObjective(76, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      end
      EndFrame()
    end
    if GetPlayerUnit() == Troop.Sstaffbearer01 and IsInArea(GetPlayerUnit(), Map_Zone.Tower01) and Tower01PlayerDone == 0 and MissionOver == 0 then
      Tower01PlayerDone = 1
    end
    if GetPlayerUnit() ~= Troop.Sstaffbearer01 and IsInArea(Troop.Sstaffbearer01, Map_Zone.Tower01) and Tower01UnitDone == 0 and MissionOver == 0 then
      Tower01UnitDone = 1
    end
    EndFrame()
  end
end
