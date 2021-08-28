function Gambit_Part_1_Cutscene_MidGame_5_Tower(owner)
  cutsceneMidGameTower = owner
  DebugOut("Cutscene Mid Game Infantry = ", cutsceneMidGameTower)
  Despawn(Troop.SgruntCutscene01)
  Despawn(Troop.SgruntCutscene02)
  Despawn(Troop.SgruntCutscene03)
  while true do
    if cutsceneMidGameTowerBegin == 1 then
      SetUnitInvulnerable(GetPlayerUnit(), true)
      SetUnitInvulnerable(Ground_Vehicle.ILbattlestation01, true)
      repeat
        EndFrame()
      until IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_01) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_02) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_03) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_04) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_05) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_06) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_07) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_08) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_09) or IsInArea(GetPlayerUnit(), Map_Zone.Mission_Boundary_10)
      FreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 1
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartIntro()
      SetObjectiveData(Objective_Marker.Battlestation01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Drain01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Drain01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      Kill(Building.Entity550031396)
      if not IsDead(Troop.ILgrunt04) then
        SetActive(Troop.ILgrunt04, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt04)
      end
      if not IsDead(Troop.ILgrunt05) then
        SetActive(Troop.ILgrunt05, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt05)
      end
      if not IsDead(Troop.ILgrunt06) then
        SetActive(Troop.ILgrunt06, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt06)
      end
      if not IsDead(Troop.ILgrunt19) then
        SetActive(Troop.ILgrunt19, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt19)
      end
      if not IsDead(Troop.ILbazooka05) then
        SetActive(Troop.ILbazooka05, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILbazooka05)
      end
      if not IsDead(Troop.ILbazooka06) then
        SetActive(Troop.ILbazooka06, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILbazooka06)
      end
      if not IsDead(Troop.ILgrunt28) then
        SetActive(Troop.ILgrunt28, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt28)
      end
      if not IsDead(Troop.ILgrunt29) then
        SetActive(Troop.ILgrunt29, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt29)
      end
      if not IsDead(Troop.ILgrunt30) then
        SetActive(Troop.ILgrunt30, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt30)
      end
      if not IsDead(Troop.ILgrunt31) then
        SetActive(Troop.ILgrunt31, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt31)
      end
      if not IsDead(Troop.ILbazooka01) then
        SetActive(Troop.ILbazooka01, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILbazooka01)
      end
      if not IsDead(Troop.ILbazooka02) then
        SetActive(Troop.ILbazooka02, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILbazooka02)
      end
      if not IsDead(Troop.ILgrunt07) then
        SetActive(Troop.ILgrunt07, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt07)
      end
      if not IsDead(Troop.ILgrunt08) then
        SetActive(Troop.ILgrunt08, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt08)
      end
      if not IsDead(Troop.ILgrunt23) then
        SetActive(Troop.ILgrunt23, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt23)
      end
      if not IsDead(Troop.ILgrunt24) then
        SetActive(Troop.ILgrunt24, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt24)
      end
      if not IsDead(Troop.ILgrunt25) then
        SetActive(Troop.ILgrunt25, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt25)
      end
      if not IsDead(Ground_Vehicle.ILheavytank01) then
        SetActive(Ground_Vehicle.ILheavytank01, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Ground_Vehicle.ILheavytank01)
      end
      if not IsDead(Ground_Vehicle.ILtank04) then
        SetActive(Ground_Vehicle.ILtank04, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Ground_Vehicle.ILtank04)
      end
      if not IsDead(Ground_Vehicle.ILtank05) then
        SetActive(Ground_Vehicle.ILtank05, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Ground_Vehicle.ILtank05)
      end
      if not IsDead(Ground_Vehicle.ILtank06) then
        SetActive(Ground_Vehicle.ILtank06, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Ground_Vehicle.ILtank06)
      end
      if not IsDead(Air_Vehicle.ILgunship01) then
        SetActive(Air_Vehicle.ILgunship01, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Air_Vehicle.ILgunship01)
      end
      if not IsDead(Air_Vehicle.ILgunship02) then
        SetActive(Air_Vehicle.ILgunship02, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Air_Vehicle.ILgunship02)
      end
      if not IsDead(Troop.ILgrunt20) then
        SetActive(Troop.ILgrunt20, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt20)
      end
      if not IsDead(Troop.ILgrunt21) then
        SetActive(Troop.ILgrunt21, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt21)
      end
      if not IsDead(Troop.ILgrunt22) then
        SetActive(Troop.ILgrunt22, constant.INACTIVE, constant.ADJUST_WEAPON)
        Despawn(Troop.ILgrunt22)
      end
      Teleport(GetPlayerUnit(), 55, 540, 325, 0)
      Teleport(Ground_Vehicle.ILbattlestation01, 44.5, 556, 190, 0)
      SetUnitInvulnerable(Ground_Vehicle.ILbattlestation01, false)
      SetCamera(Camera.CutsceneMidGame0001, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameTower0001)
      CameraSetTarget(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameTower0001Target)
      CameraSetFOV(Camera.CutsceneMidGame0001, 45, constant.IMMEDIATE, 10, constant.NO_WAIT)
      ClearMessageQueue(constant.PLAYER_ONE)
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessageWithObjective(47, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
      Kill(Ground_Vehicle.ILbattlestation01)
      Kill(Building.Entity550031397)
      Kill(Destroyable_Object.WallExplosion01)
      Kill(Destroyable_Object.WallExplosion02)
      Kill(Destroyable_Object.WallExplosion03)
      Kill(Building.DrainGate01)
      Kill(Building.DrainGate02)
      repeat
        EndFrame()
      until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if GetHealthPercent(GetPlayerUnit()) <= 2 then
        HealthOfPlayer = 2
      else
        HealthOfPlayer = GetHealthPercent(GetPlayerUnit())
      end
      Spawn(Troop.Sstaffbearer04)
      WaitFor(0.1)
      ForceUnitTransfer(constant.PLAYER_ONE, Troop.Sstaffbearer04, true)
      Despawn(Troop.Sstaffbearer01)
      Teleport(GetPlayerUnit(), 42.5, 551.9, 0, 0)
      SetHealthPercent(GetPlayerUnit(), HealthOfPlayer)
      SetCamera(Camera.CutsceneMidGame0001, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameTower0005)
      CameraSetTarget(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameTower0005Target)
      CameraSetFOV(Camera.CutsceneMidGame0001, 45, constant.IMMEDIATE, 10, constant.NO_WAIT)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneMidGame0001, 35, constant.SMOOTH, 2, constant.NO_WAIT)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(133, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Despawn(Ground_Vehicle.ILbattlestation01)
      SetCamera(Camera.CutsceneMidGame0001, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameTower0004)
      CameraSetTarget(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameTower0004Target)
      CameraSetFOV(Camera.CutsceneMidGame0001, 60, constant.IMMEDIATE, 10, constant.NO_WAIT)
      Spawn(Troop.SgruntCutscene01)
      Spawn(Troop.SgruntCutscene02)
      Spawn(Troop.SgruntCutscene03)
      GoToArea(Troop.SgruntCutscene01, 40.8, 553.1, 5, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
      GoToArea(Troop.SgruntCutscene02, 43.2, 548.9, 5, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
      GoToArea(Troop.SgruntCutscene03, 47.7, 550.2, 5, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneMidGame0001, 45, constant.SMOOTH, 3, constant.NO_WAIT)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(134, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      EndIntro()
      Despawn(Troop.SgruntCutscene01)
      Despawn(Troop.SgruntCutscene02)
      Despawn(Troop.SgruntCutscene03)
      Spawn(Troop.Sgrunt02)
      Spawn(Troop.Sgrunt03)
      Spawn(Troop.Sgrunt04)
      cutsceneMidGameTowerBegin = 2
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      FollowWaypoint(Troop.Sgrunt02, Waypoint.Drain, 1, 1, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
      JumpOverLedgeDone = 1
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      SetUnitInvulnerable(GetPlayerUnit(), false)
      FollowWaypoint(Troop.Sgrunt03, Waypoint.Drain03, 1, 1, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
      WaitFor(0.5)
      FollowWaypoint(Troop.Sgrunt04, Waypoint.Drain02, 1, 1, constant.ORDER_NORMAL, constant.FORMATION_DISALLOWED)
      break
    end
    EndFrame()
  end
end
