function Gambit_Part_1_Cutscene_MidGame_1_Tank_Skip(owner)
  repeat
    EndFrame()
  until cutsceneMidGameTankBegin == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", cutsceneMidGameTank)
      Kill(cutsceneMidGameTank)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      Spawn(Ground_Vehicle.ILheavytank01)
      Teleport(GetPlayerUnit(), 15.2, 92.9, 300, 0)
      StoreSummaryMessage(constant.PLAYER_ONE, 25, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      EndIntro()
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
      SetObjectiveData(Objective.Trench01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Trench01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Trench10, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Trench10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      cutsceneMidGameTankBegin = 2
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
  until cutsceneMidGameTankBegin == 2
end
