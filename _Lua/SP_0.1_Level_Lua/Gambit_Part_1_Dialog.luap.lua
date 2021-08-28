function Gambit_Part_1_Dialog(owner)
  local SwimmingTimer = 0
  local OutsideRiverBedTimer = 0
  local PauseDialogStarted = 0
  local DialogMoveTimer = 0
  local DialogJumpTimer = 0
  local DialogBomberTimer = 0
  local DialogBomberDone = 0
  local DialogShootTimer = 0
  local DialogShootDoneTutorial = 0
  local DialogSquadTimer = 0
  local SpawnBomber = 0
  local ILHeavyTankDead = 0
  local ILBazookaDead = 0
  local ILGunshipDead = 0
  local LedgeDone = 0
  local ShootWreckageDone = 0
  Despawn(Air_Vehicle.ILbomber01)
  Despawn(Air_Vehicle.ILbomberSTART01)
  Despawn(Air_Vehicle.ILbomberSTART02)
  Despawn(Air_Vehicle.ILbomberSTART03)
  Despawn(Air_Vehicle.ILbomberSTART04)
  SetUnitInvulnerable(Building.Barrel05, true)
  SetUnitInvulnerable(Building.Barrel06, true)
  SetUnitInvulnerable(Building.Barrel07, true)
  SetUnitInvulnerable(Destroyable_Object.Rubble01, true)
  SetActive(Building.Barrel05, constant.INACTIVE)
  SetActive(Building.Barrel06, constant.INACTIVE)
  SetActive(Building.Barrel07, constant.INACTIVE)
  repeat
    EndFrame()
  until cutsceneStart == 1
  WaitFor(0.5)
  PhoneMessage(12, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
  while MissionOver == 0 do
    if DialogJumpDone == 0 and DialogMoveTimer < GetTime() then
      PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      DialogMoveTimer = GetTime() + 30
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.DialogJump) then
      if DialogJumpDone == 0 then
        DialogJumpDone = 1
      end
      EndFrame()
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.DialogLook) then
      if DialogLookDone == 0 then
        DialogLookDone = 1
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(10, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        SetObjectiveData(Objective_Marker.Tutorial01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Tutorial02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        DialogBomberTimer = GetTime() + 7
      end
      EndFrame()
    end
    if 1 <= DialogLookDone and DialogBomberDone == 0 and LookDone == 0 and DialogBomberTimer < GetTime() then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(7, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      WaitFor(2)
      DialogBomberDone = 1
    end
    if 0 < PlayerAngleToTarget(Air_Vehicle.ILbomberSTART01) and PlayerAngleToTarget(Air_Vehicle.ILbomberSTART01) < 6.5 and LookDone == 0 and DialogBomberDone >= 1 then
      LookDone = 1
    end
    if 0 < PlayerAngleToTarget(Air_Vehicle.ILbomberSTART02) and PlayerAngleToTarget(Air_Vehicle.ILbomberSTART02) < 6.5 and LookDone == 0 and DialogBomberDone >= 1 then
      LookDone = 1
    end
    if 0 < PlayerAngleToTarget(Air_Vehicle.ILbomberSTART03) and PlayerAngleToTarget(Air_Vehicle.ILbomberSTART03) < 6.5 and LookDone == 0 and DialogBomberDone >= 1 then
      LookDone = 1
    end
    if 0 < PlayerAngleToTarget(Air_Vehicle.ILbomberSTART04) and PlayerAngleToTarget(Air_Vehicle.ILbomberSTART04) < 6.5 and LookDone == 0 and DialogBomberDone >= 1 then
      LookDone = 1
    end
    if LookDone == 1 then
      LookDone = 2
      DebugOut("Look tutorial done")
      GoToArea(Air_Vehicle.ILbomberSTART01, 5, 1250, 25, 0, constant.ORDER_FORCED)
      GoToArea(Air_Vehicle.ILbomberSTART02, 10, 1250, 25, 0, constant.ORDER_FORCED)
      GoToArea(Air_Vehicle.ILbomberSTART03, 15, 1250, 25, 0, constant.ORDER_FORCED)
      GoToArea(Air_Vehicle.ILbomberSTART04, 20, 1250, 25, 0, constant.ORDER_FORCED)
      DialogMoveTimer = 10
    end
    if 1 <= LookDone and PauseDialogStarted == 0 and DialogMoveTimer < GetTime() then
      PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      DialogMoveTimer = GetTime() + 30
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.DialogShoot) then
      if DialogShootDone == 0 then
        if LookDone == 0 then
          LookDone = 1
        end
        PauseDialogStarted = 1
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(138, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        WaitFor(8)
        DialogShootDone = 1
        WaitFor(1)
      end
      EndFrame()
    end
    if 1 <= PauseTutorial_LockOnDone and DialogFenceDone == 0 and DialogShootDoneTutorial == 0 then
      DialogShootDoneTutorial = 1
      WaitFor(1.5)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessageWithObjective(16, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      SetObjectiveData(Objective.Tutorial02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetActive(Building.Barrel05, constant.ACTIVE)
      SetActive(Building.Barrel06, constant.ACTIVE)
      SetActive(Building.Barrel07, constant.ACTIVE)
      SetUnitInvulnerable(Building.Barrel05, false)
      SetUnitInvulnerable(Building.Barrel06, false)
      SetUnitInvulnerable(Building.Barrel07, false)
      SetUnitInvulnerable(Destroyable_Object.Rubble01, false)
      DialogShootTimer = GetTime() + 25
    end
    if DialogShootDoneTutorial >= 1 and DialogFenceDone == 0 and DialogShootTimer < GetTime() then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(16, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      DialogShootTimer = GetTime() + 25
    end
    if (IsDead(Building.Barrel05) or IsDead(Building.Barrel06) or IsDead(Building.Barrel07) or IsDead(Destroyable_Object.Rubble01)) and DialogFenceDone == 0 then
      LookDone = 2
      DialogFenceDone = 1
      DialogShootDone = 1
      Kill(Destroyable_Object.Rubble01)
      Kill(Building.Barrel05)
      Kill(Building.Barrel06)
      Kill(Building.Barrel07)
      Spawn(Ground_Vehicle.SEtankbattle02)
      GoToArea(Air_Vehicle.ILbomberSTART01, -500, 5, 25, 0, constant.ORDER_FORCED)
      GoToArea(Air_Vehicle.ILbomberSTART02, -500, 10, 25, 0, constant.ORDER_FORCED)
      GoToArea(Air_Vehicle.ILbomberSTART03, -500, 15, 25, 0, constant.ORDER_FORCED)
      GoToArea(Air_Vehicle.ILbomberSTART04, -500, 20, 25, 0, constant.ORDER_FORCED)
      SetObjectiveData(Objective.Tutorial01, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Tutorial02, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.SquadJoin01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SquadJoin01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessageWithObjective(23, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
      PhoneMessageWithObjective(18, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      DialogSquadTimer = GetTime() + 25
    end
    if 1 <= DialogFenceDone and DialogSquadDone == 0 and DialogSquadTimer < GetTime() then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(18, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      DialogSquadTimer = GetTime() + 25
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.Bomber) then
      if SpawnBomber == 0 then
        SpawnBomber = 1
        cutsceneBombedBegin = 1
        DialogSquadDone = 1
        DebugOut("Bomber sent in to destroy Strike Team")
      end
      EndFrame()
    end
    if 1 <= StrikeForce01Done and ILheavytank01Done == 0 and GetTime() > DialogStrikeTeamTimer then
      PhoneMessage(73, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      DialogStrikeTeamTimer = GetTime() + 45
    end
    if IsDead(Ground_Vehicle.ILheavytank01) and ILHeavyTankDead == 0 then
      ILHeavyTankDead = 1
    end
    if ILHeavyTankDead >= 1 and ILbazooka01Done == 0 and GetTime() > DialogStrikeTeamTimer then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(71, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      DialogStrikeTeamTimer = GetTime() + 45
    end
    if IsDead(Troop.ILbazooka01) and IsDead(Troop.ILbazooka02) and IsDead(Troop.ILgrunt07) and IsDead(Troop.ILgrunt08) and ILBazookaDead == 0 then
      ILBazookaDead = 1
    end
    if IsDead(Air_Vehicle.ILgunship01) and ILGunshipDead == 0 then
      ILGunshipDead = 1
    end
    if ILGunshipDead >= 1 and ILgates01Done == 0 and GetTime() > DialogStrikeTeamTimer then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(34, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      DialogStrikeTeamTimer = GetTime() + 45
    end
    if JumpOverLedgeDone == 1 and PlayerEnteredDrain == 0 and GetTime() > CommandingTimer then
      if LedgeDone == 0 then
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessageWithObjective(48, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
        LedgeDone = 1
      else
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(48, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      end
      CommandingTimer = GetTime() + 15
    end
    if 1 <= PauseTutorial_SquadWaitDone and StaffBearerUnderPlayerCommand == 0 and GetTime() > CommandingTimer then
      PhoneMessage(116, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      CommandingTimer = GetTime() + 12
    end
    if 1 <= PauseTutorial_GateAttackDone and DrainGateBlownUp == 0 and GetTime() > ShootingTimer then
      PhoneMessage(124, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      ShootingTimer = GetTime() + 15
    end
    if TroopsSendDone == 1 and BlockageCleared == 0 and GetTime() > CommandingTimer then
      if ShootWreckageDone == 0 then
        PhoneMessageWithObjective(62, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
        ShootWreckageDone = 1
      else
        PhoneMessage(62, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      end
      CommandingTimer = GetTime() + 25
    end
    if GetPlayerUnit() == Troop.Sstaffbearer01 and 1 <= Hill03Done and GetTime() > TowerTimer and MissionOver == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(76, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      TowerTimer = GetTime() + 15
    end
    if GetPlayerUnit() ~= Troop.Sstaffbearer01 and 1 <= Hill03Done and GetTime() > TowerTimer and MissionOver == 0 then
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      TowerTimer = GetTime() + 15
    end
    EndFrame()
  end
end
