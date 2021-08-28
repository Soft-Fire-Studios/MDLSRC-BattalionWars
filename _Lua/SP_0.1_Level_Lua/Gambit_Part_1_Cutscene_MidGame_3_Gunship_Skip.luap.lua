function Gambit_Part_1_Cutscene_MidGame_3_Gunship_Skip(owner)
  repeat
    EndFrame()
  until cutsceneMidGameGunshipBegin == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", cutsceneMidGameGunship)
      Kill(cutsceneMidGameGunship)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      Spawn(Air_Vehicle.ILgunship01)
      SetUnitInvulnerable(Air_Vehicle.ILgunship01, false)
      FollowWaypoint(Air_Vehicle.ILgunship01, Waypoint.ILgunship01, 5, 5, constant.ORDER_FORCED)
      Spawn(Air_Vehicle.ILgunship02)
      Spawn(Troop.ILgrunt20)
      Spawn(Troop.ILgrunt21)
      Spawn(Troop.ILgrunt22)
      Teleport(GetPlayerUnit(), GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 315, 0)
      if not IsDead(Troop.ILbazooka01) then
        Spawn(Troop.ILbazooka01)
      end
      if not IsDead(Troop.ILbazooka02) then
        Spawn(Troop.ILbazooka02)
      end
      if not IsDead(Troop.ILgrunt07) then
        Spawn(Troop.ILgrunt07)
      end
      if not IsDead(Troop.ILgrunt08) then
        Spawn(Troop.ILgrunt08)
      end
      if not IsDead(Troop.ILgrunt23) then
        Spawn(Troop.ILgrunt23)
      end
      if not IsDead(Troop.ILgrunt24) then
        Spawn(Troop.ILgrunt24)
      end
      if not IsDead(Troop.ILgrunt25) then
        Spawn(Troop.ILgrunt25)
      end
      if not IsDead(Ground_Vehicle.ILheavytank01) then
        Spawn(Ground_Vehicle.ILheavytank01)
      end
      if not IsDead(Ground_Vehicle.ILtank04) then
        Spawn(Ground_Vehicle.ILtank04)
      end
      if not IsDead(Ground_Vehicle.ILtank05) then
        Spawn(Ground_Vehicle.ILtank05)
      end
      if not IsDead(Ground_Vehicle.ILtank06) then
        Spawn(Ground_Vehicle.ILtank06)
      end
      StoreSummaryMessage(constant.PLAYER_ONE, 35, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      CameraSetTarget(Camera.Player0001, Troop.Sstaffbearer01)
      EndIntro()
      SetObjectiveData(Objective.Trench03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Trench03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Trench11, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Trench11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(36, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      cutsceneMidGameGunshipBegin = 2
      WaitFor(0.5)
      if not IsDead(Troop.ILbazooka01) then
        SetActive(Troop.ILbazooka01, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILbazooka02) then
        SetActive(Troop.ILbazooka02, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt07) then
        SetActive(Troop.ILgrunt07, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt08) then
        SetActive(Troop.ILgrunt08, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt23) then
        SetActive(Troop.ILgrunt23, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt24) then
        SetActive(Troop.ILgrunt24, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt25) then
        SetActive(Troop.ILgrunt25, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Ground_Vehicle.ILheavytank01) then
        SetActive(Ground_Vehicle.ILheavytank01, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Ground_Vehicle.ILtank04) then
        SetActive(Ground_Vehicle.ILtank04, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Ground_Vehicle.ILtank05) then
        SetActive(Ground_Vehicle.ILtank05, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Ground_Vehicle.ILtank06) then
        SetActive(Ground_Vehicle.ILtank06, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
    end
    EndFrame()
  until cutsceneMidGameGunshipBegin == 2
end
