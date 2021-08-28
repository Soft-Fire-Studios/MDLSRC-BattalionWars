function Gambit_Part_1_Gameflow(owner)
  Despawn(Building.DrainGate01)
  Despawn(Building.DrainGate02)
  local StrikeForce01Timer = 0
  local ILheavytank01Timer = 0
  local ILbazooka01Timer = 0
  local ILgunship01Timer = 0
  local ILgates01Timer = 0
  local BlowUpWall = 0
  local BlowUpWallTimer = 0
  local BlowUpWallStarted = 0
  local BazookaMoveDone = 0
  local Trench06Done = 0
  local Trench07Done = 0
  local Trench08Done = 0
  local Trench09Done = 0
  local Trench10Done = 0
  local Trench11Done = 0
  local MessageDone = 0
  local TanksDieDone = 0
  DebugOut("IS MISSION ALREADY COMPLETED: ", GetCurrentMissionCompleted())
  DebugOut("REPLAY TUTORIAL IS SET TO: ", GetTutorialMode())
  Despawn(Building.StaffOfPower)
  Despawn(Troop.Sstaffbearer01)
  Despawn(Troop.Sstaffbearer04)
  Despawn(Troop.Sgrunt02)
  Despawn(Troop.Sgrunt03)
  Despawn(Troop.Sgrunt04)
  Despawn(Troop.SgruntEnd)
  SetHealthPercent(Ground_Vehicle.Sheavytank01, 35)
  SetHealthPercent(Ground_Vehicle.ILbattlestation01, 100)
  SetHealthPercent(Ground_Vehicle.ILheavytankBS01, 50)
  SetHealthPercent(Ground_Vehicle.ILheavytankBS02, 50)
  Despawn(Ground_Vehicle.ILheavytank01, true)
  Despawn(Air_Vehicle.ILgunship01)
  Despawn(Air_Vehicle.ILgunship02)
  Despawn(Air_Vehicle.ILgunship03)
  Despawn(Air_Vehicle.Sgunship01)
  Despawn(Air_Vehicle.Sgunship02)
  Despawn(Ground_Vehicle.ILbattlestation01, true)
  SetUnitInvulnerable(Ground_Vehicle.ILbattlestation01STATIC, true)
  Despawn(Ground_Vehicle.Sheavytank01)
  Despawn(Ground_Vehicle.ILheavytankBS01)
  Despawn(Ground_Vehicle.ILheavytankBS02)
  Despawn(Troop.Sstrikebazooka04)
  Despawn(Troop.Sstrikebazooka05)
  Despawn(Troop.Sgrunt05)
  Despawn(Troop.Sgrunt06)
  Despawn(Troop.Sgrunt07)
  DebugOut("Player Unit = ", GetPlayerUnit())
  Despawn(Troop.Entity550035091, false)
  Despawn(Troop.Entity550035092, false)
  Despawn(Troop.Entity550035095, false)
  Despawn(Troop.Entity550035096, false)
  WaitFor(5)
  DebugOut("Teleporting Drainage Tunnel Walls")
  Spawn(Building.DrainGate01)
  Spawn(Building.DrainGate02)
  while true do
    if DialogSquadDone >= 1 and StrikeForce01Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.StrikeForce01) then
        StrikeForce01Done = 1
        DebugOut("Strike Force 1")
        SetObjectiveData(Objective.Trench00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Trench00, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench09, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Trench09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    end
    if ILheavytank01Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.ILheavytank01) then
        ILheavytank01Done = 1
        DebugOut("IL Heavy Hank 1")
        cutsceneMidGameTankBegin = 1
        ILheavytank01Timer = GetTime() + 5
        ILheavytank01Done = 2
      end
      EndFrame()
    end
    if ILbazooka01Done == 0 and ILheavytank01Done == 2 then
      if IsInArea(GetPlayerUnit(), Map_Zone.ILbazooka01) then
        ILbazooka01Done = 1
        DebugOut("IL bazooka 1")
        ClearMessageQueue(constant.PLAYER_ONE)
        PhoneMessage(30, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        PhoneMessage(39, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        SetObjectiveData(Objective.Trench02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Trench02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench07, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Trench07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        ILbazooka01Timer = GetTime() + 5
      end
      EndFrame()
    end
    if 1 <= ILbazooka01Done and 1 >= ILgunship01Done then
      ILbazooka01Done = 2
    end
    if ILgunship01Done == 0 and ILbazooka01Done == 2 then
      if IsInArea(GetPlayerUnit(), Map_Zone.ILgunship01) then
        ILgunship01Done = 1
        DebugOut("IL Gunship 1")
        cutsceneMidGameGunshipBegin = 1
        ILgunship01Timer = GetTime() + 5
      end
      EndFrame()
    end
    if 1 <= ILgunship01Done and not IsDead(Air_Vehicle.ILgunship01) and ILgunship01Timer < GetTime() then
      AttackTarget(Troop.Sstrikemissile01, Air_Vehicle.ILgunship01, constant.ORDER_FORCED)
      AttackTarget(Troop.Sstrikemissile02, Air_Vehicle.ILgunship01, constant.ORDER_FORCED)
      ILgunship01Timer = GetTime() + 3
    end
    if 1 <= ILgunship01Done and IsDead(Air_Vehicle.ILgunship01) and ILgates01Done == 0 then
      ILgunship01Done = 2
    end
    if ILgates01Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.ILgates01) then
        SetObjectiveData(Objective_Marker.Trench04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        cutsceneMidGameBattlestationBegin = 1
        FollowWaypoint(Ground_Vehicle.ILheavytankBS01, Waypoint.ILheavytankBS01, 5, 5, constant.ORDER_FORCED)
        WaitFor(1)
        ILgates01Done = 1
      end
      EndFrame()
    end
    if 1 <= ILgates01Done and BlowUpWall == 0 and not IsDead(Troop.Sstaffbearer01) and ILgates01Timer < GetTime() then
      RemoveStaffBearerInvulnerability = 1
      ILgates01Timer = GetTime() + 10
      if BlowUpWallStarted == 0 then
        BlowUpWallTimer = GetTime() + 35
        BlowUpWallStarted = 1
      end
    end
    if BlowUpWallStarted == 2 and 1 <= ILgates01Done and BlowUpWall == 0 then
      BlowUpWall = 1
      BlowUpWallStarted = 2
      cutsceneMidGameTowerBegin = 1
    end
    if (IsDead(Ground_Vehicle.ILbattlestation01) or 5 >= GetHealthPercent(Ground_Vehicle.ILbattlestation01)) and BlowUpWallStarted <= 1 then
      BlowUpWallStarted = 2
      DebugOut("Blowing up wall - Fail Safe - Battlestation is already dead")
      SetUnitInvulnerable(Ground_Vehicle.ILbattlestation01, true)
    end
    if Trench06Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Trench06) then
        Trench06Done = 1
        SetObjectiveData(Objective.Trench06, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Trench06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Trench02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    end
    if TanksDieDone == 0 and IsInArea(GetPlayerUnit(), Map_Zone.TanksDie) then
      TanksDieDone = 1
    end
    if Trench07Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Trench07) then
        Trench07Done = 1
        SetObjectiveData(Objective.Trench07, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Trench07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench03, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Trench03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    end
    if Trench08Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Trench08) then
        Trench08Done = 1
        SetObjectiveData(Objective.Trench08, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Trench08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench04, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Trench04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    end
    if Trench09Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Trench09) then
        Trench09Done = 1
        SetObjectiveData(Objective.Trench09, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Trench09, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Trench01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    end
    if Trench10Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Trench10) then
        Trench10Done = 1
        SetObjectiveData(Objective.Trench10, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Trench10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench06, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Trench06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    end
    if Trench11Done == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.Trench11) then
        Trench11Done = 1
        SetObjectiveData(Objective.Trench11, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Trench11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Trench08, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Trench08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      EndFrame()
    end
    EndFrame()
  end
end
