function Gambit_Part_1_Cutscene_MidGame_5_Tower_Skip(owner)
  repeat
    EndFrame()
  until cutsceneMidGameTowerBegin == 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", cutsceneMidGameTower)
      Kill(cutsceneMidGameTower)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      SetObjectiveData(Objective_Marker.Battlestation01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Drain01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Drain01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      Kill(Building.Entity550031396)
      Teleport(Ground_Vehicle.ILbattlestation01, 44.5, 556, 260, 0)
      SetUnitInvulnerable(Ground_Vehicle.ILbattlestation01, false)
      Kill(Ground_Vehicle.ILbattlestation01)
      Kill(Building.Entity550031397)
      Kill(Destroyable_Object.WallExplosion01)
      Kill(Destroyable_Object.WallExplosion02)
      Kill(Destroyable_Object.WallExplosion03)
      Kill(Building.DrainGate01)
      Kill(Building.DrainGate02)
      if 2 >= GetHealthPercent(GetPlayerUnit()) then
        HealthOfPlayer = 2
      else
        HealthOfPlayer = GetHealthPercent(GetPlayerUnit())
      end
      Spawn(Troop.Sstaffbearer04)
      ForceUnitTransfer(constant.PLAYER_ONE, Troop.Sstaffbearer04)
      Despawn(Troop.Sstaffbearer01)
      Teleport(GetPlayerUnit(), 42.5, 551.9, 0, 0)
      SetHealthPercent(GetPlayerUnit(), HealthOfPlayer)
      Despawn(Troop.SgruntCutscene01)
      Despawn(Troop.SgruntCutscene02)
      Despawn(Troop.SgruntCutscene03)
      Kill(Destroyable_Object.ILtent01)
      Spawn(Troop.Sgrunt02)
      Spawn(Troop.Sgrunt03)
      Spawn(Troop.Sgrunt04)
      StoreSummaryMessage(constant.PLAYER_ONE, 47, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
      StoreSummaryMessage(constant.PLAYER_ONE, 133, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Sad)
      StoreSummaryMessage(constant.PLAYER_ONE, 134, constant.ARMY_SOLAR, SpriteID.CO_SE_Leiqo_Helmet_Happy)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      CameraSetTarget(Camera.Player0001, Troop.Sstaffbearer04)
      EndIntro()
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      FollowWaypoint(Troop.Sgrunt02, Waypoint.Drain, 1, 1, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
      JumpOverLedgeDone = 1
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      SetUnitInvulnerable(GetPlayerUnit(), false)
      cutsceneMidGameTowerBegin = 2
      FollowWaypoint(Troop.Sgrunt03, Waypoint.Drain03, 1, 1, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
      WaitFor(0.5)
      FollowWaypoint(Troop.Sgrunt04, Waypoint.Drain02, 1, 1, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
    end
    EndFrame()
  until cutsceneMidGameTowerBegin == 2
end
