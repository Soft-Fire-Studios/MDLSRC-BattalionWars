function Gambit_Part_1_Cutscene_MidGame_3_Gunship(owner)
  cutsceneMidGameGunship = owner
  DebugOut("Cutscene Mid Game Infantry = ", cutsceneMidGameGunship)
  Despawn(Troop.ILgrunt20, true)
  Despawn(Troop.ILgrunt21, true)
  Despawn(Troop.ILgrunt22, true)
  Despawn(Troop.ILgrunt09, false)
  Despawn(Troop.ILgrunt10, false)
  Despawn(Troop.ILgrunt11, false)
  Despawn(Troop.ILgrunt12, false)
  Despawn(Troop.ILgrunt13, false)
  Despawn(Troop.Sgrunt08)
  Despawn(Troop.Sgrunt09)
  Despawn(Troop.SEchain06)
  Despawn(Troop.SEchain07)
  repeat
    EndFrame()
  until cutsceneStart == 1
  while true do
    if cutsceneMidGameGunshipBegin == 1 then
      FreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 1
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartIntro()
      SetObjectiveData(Objective.Trench03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Trench03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
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
      Spawn(Air_Vehicle.ILgunship01)
      SetUnitInvulnerable(Air_Vehicle.ILgunship01, true)
      Spawn(Air_Vehicle.ILgunship02)
      SetCamera(Camera.CutsceneMidGame0001, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameGunship0001)
      CameraSetTarget(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameGunship0001Target)
      CameraSetFOV(Camera.CutsceneMidGame0001, 45, constant.IMMEDIATE, 5, constant.NO_WAIT)
      GoToArea(Ground_Vehicle.SEtankbattle01, -30, 485, 10, 0, constant.ORDER_FORCED, constant.FORMATION_DISALLOWED)
      WaitFor(1)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutsceneMidGame0001, 75, constant.SMOOTH, 10, constant.NO_WAIT)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(35, constant.ID_NONE, constant.ARMY_UNDERWORLD, 8, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      WaitFor(5)
      SetUnitInvulnerable(Air_Vehicle.ILgunship01, false)
      FollowWaypoint(Air_Vehicle.ILgunship01, Waypoint.ILgunship01, 5, 5, constant.ORDER_FORCED)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      EndIntro()
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
      cutsceneMidGameGunshipBegin = 2
      SetObjectiveData(Objective.Trench11, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Trench11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(36, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
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
  end
end
