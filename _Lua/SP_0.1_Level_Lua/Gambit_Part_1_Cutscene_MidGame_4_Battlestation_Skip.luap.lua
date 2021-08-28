function Gambit_Part_1_Cutscene_MidGame_4_Battlestation_Skip(owner)
  repeat
    EndFrame()
  until cutsceneMidGameBattlestationBegin == 1
  WaitFor(2)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_TWO)) then
      DebugOut("Killed cutscene", cutsceneMidGameBattlestation)
      Kill(cutsceneMidGameBattlestation)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndIntro()
      StoreSummaryMessage(constant.PLAYER_ONE, 40, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
      Despawn(Ground_Vehicle.ILbattlestation01STATIC)
      Spawn(Ground_Vehicle.ILbattlestation01)
      SetActive(Ground_Vehicle.ILbattlestation01, constant.INACTIVE, constant.ADJUST_WEAPON)
      Teleport(GetPlayerUnit(), GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 25, 0)
      if not IsDead(Troop.ILgrunt20) then
        Spawn(Troop.ILgrunt20)
      end
      if not IsDead(Troop.ILgrunt21) then
        Spawn(Troop.ILgrunt21)
      end
      if not IsDead(Troop.ILgrunt22) then
        Spawn(Troop.ILgrunt22)
      end
      WaitFor(0.5)
      SetCamera(Camera.Player0001, constant.PLAYER_ONE)
      EndIntro()
      SetObjectiveData(Objective.Trench08, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Trench08, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Battlestation01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Battlestation01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessageWithObjective(41, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      WaitFor(0.5)
      UnfreezePlayer(constant.PLAYER_ONE)
      PauseTimerActive = 0
      WaitFor(0.5)
      SetActive(Ground_Vehicle.ILbattlestation01, constant.ACTIVE, constant.ADJUST_WEAPON)
      cutsceneMidGameBattlestationBegin = 2
      if not IsDead(Troop.ILgrunt20) then
        SetActive(Troop.ILgrunt20, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt21) then
        SetActive(Troop.ILgrunt21, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
      if not IsDead(Troop.ILgrunt22) then
        SetActive(Troop.ILgrunt22, constant.ACTIVE, constant.ADJUST_WEAPON)
      end
    end
    EndFrame()
  until cutsceneMidGameBattlestationBegin == 2
end
