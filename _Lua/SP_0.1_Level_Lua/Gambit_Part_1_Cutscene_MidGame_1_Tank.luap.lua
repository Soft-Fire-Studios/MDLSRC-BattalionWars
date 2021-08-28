function Gambit_Part_1_Cutscene_MidGame_1_Tank(owner)
  cutsceneMidGameTank = owner
  DebugOut("Cutscene Mid Game Tank = ", cutsceneMidGameTank)
  local MoveMessageDone = 0
  Despawn(Ground_Vehicle.ILtank04, true)
  Despawn(Ground_Vehicle.ILtank05, true)
  Despawn(Ground_Vehicle.ILtank06, true)
  while true do
    if cutsceneMidGameTankBegin == 1 then
      FreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 1
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      StartIntro()
      SetObjectiveData(Objective.Trench01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Trench01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
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
      Spawn(Ground_Vehicle.ILheavytank01)
      SetUnitInvulnerable(Ground_Vehicle.ILheavytank01, true)
      SetActive(Ground_Vehicle.ILheavytank01, constant.INACTIVE, constant.ADJUST_WEAPON)
      Teleport(GetPlayerUnit(), 15.2, 92.9, 300, 0)
      SetCamera(Camera.CutsceneMidGame0001, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameTank0001)
      CameraSetTarget(Camera.CutsceneMidGame0001, Waypoint.cutsceneMidGameTank0001Target)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 2)
      PhoneMessage(25, constant.ID_NONE, constant.ARMY_UNDERWORLD, 8, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      FollowWaypoint(Ground_Vehicle.ILheavytank01, Waypoint.ILheavytank01, 5, 5, constant.ORDER_NORMAL)
      WaitFor(6)
      cutsceneMidGameTankBegin = 2
      EndIntro()
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 2)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      SetUnitInvulnerable(Ground_Vehicle.ILheavytank01, false)
      Kill(Destroyable_Object.Entity550031117)
      Kill(Destroyable_Object.Entity550034314)
      Spawn(Troop.ILbazooka01)
      Spawn(Troop.ILbazooka02)
      Spawn(Troop.ILgrunt07)
      Spawn(Troop.ILgrunt08)
      Spawn(Troop.ILgrunt23)
      Spawn(Troop.ILgrunt24)
      Spawn(Troop.ILgrunt25)
      Spawn(Ground_Vehicle.ILtank04)
      Spawn(Ground_Vehicle.ILtank05)
      Spawn(Ground_Vehicle.ILtank06)
      if not IsDead(Troop.ILgrunt04) then
        Spawn(Troop.ILgrunt04)
      end
      if not IsDead(Troop.ILgrunt05) then
        Spawn(Troop.ILgrunt05)
      end
      if not IsDead(Troop.ILgrunt06) then
        Spawn(Troop.ILgrunt06)
      end
      if not IsDead(Troop.ILgrunt19) then
        Spawn(Troop.ILgrunt19)
      end
      if not IsDead(Troop.ILbazooka05) then
        Spawn(Troop.ILbazooka05)
      end
      if not IsDead(Troop.ILbazooka06) then
        Spawn(Troop.ILbazooka06)
      end
      if not IsDead(Troop.ILgrunt28) then
        Spawn(Troop.ILgrunt28)
      end
      if not IsDead(Troop.ILgrunt29) then
        Spawn(Troop.ILgrunt29)
      end
      if not IsDead(Troop.ILgrunt30) then
        Spawn(Troop.ILgrunt30)
      end
      if not IsDead(Troop.ILgrunt31) then
        Spawn(Troop.ILgrunt31)
      end
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      SetObjectiveData(Objective.Trench10, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Trench10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      WaitFor(0.5)
      SetActive(Ground_Vehicle.ILheavytank01, constant.ACTIVE, constant.ADJUST_WEAPON)
      if not IsDead(Troop.ILgrunt04) then
        SetActive(Troop.ILgrunt04, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt05) then
        SetActive(Troop.ILgrunt05, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt06) then
        SetActive(Troop.ILgrunt06, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt19) then
        SetActive(Troop.ILgrunt19, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILbazooka05) then
        SetActive(Troop.ILbazooka05, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILbazooka06) then
        SetActive(Troop.ILbazooka06, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt28) then
        SetActive(Troop.ILgrunt28, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt29) then
        SetActive(Troop.ILgrunt29, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt30) then
        SetActive(Troop.ILgrunt30, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt31) then
        SetActive(Troop.ILgrunt31, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
    end
    EndFrame()
  end
end
