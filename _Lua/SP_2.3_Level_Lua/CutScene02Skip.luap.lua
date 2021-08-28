function CutScene02Skip(owner)
  cutsceneskip02 = owner
  local timer01 = 0
  local timer02 = 0
  local timer03 = 0
  repeat
    EndFrame()
  until cutscene02 == 1
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      cutscenefinished02 = 1
      DebugOut("*CutScene02Skip* - Player 1 Killed CutScene02")
    end
    EndFrame()
  until cutscenefinished02 == 1
  ClearMessageQueue()
  Kill(cutscene02kill)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Player_Camera)
  CleanupSkipCutscene()
  EndIntro()
  if IsReadyToRevive(Air_Vehicle.TT_Gunship_2) then
    ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TT_Gunship_2, 432, 1018, 180, 20)
  else
    Teleport(Air_Vehicle.TT_Gunship_2, 432, 1018, 180, 20)
  end
  if IsReadyToRevive(Air_Vehicle.TT_Gunship_3) then
    ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TT_Gunship_3, 459, 1018, 180, 20)
  else
    Teleport(Air_Vehicle.TT_Gunship_3, 459, 1018, 180, 20)
  end
  Spawn(Water_Vehicle.TT_Bship1)
  Spawn(Troop.Entity340001656)
  Spawn(Troop.Entity340001657)
  Spawn(Troop.Entity340001659)
  StoreSummaryMessage(constant.PLAYER_ONE, 68, constant.ARMY_TUNDRAN, SpriteID.CO_T_Young_Gorgi_Sad)
  StoreSummaryMessage(constant.PLAYER_ONE, 98, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Sad)
  SetObjectiveData(Objective_Marker.Tundran_HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Tundran_HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
  Spawn(Water_Vehicle.TT_Bship1)
  GoToArea(Water_Vehicle.TT_Bship1, 579, 900, 10)
  Despawn(Troop.Cannonfodder)
  Teleport(Air_Vehicle.TT_Gunship_4, 448, 729, 180, 10)
  Teleport(Air_Vehicle.TT_Gunship_5, 452, 729, 180, 10)
  Teleport(Air_Vehicle.TT_Gunship_6, 456, 729, 180, 10)
  ClearMessageQueue()
  cutscene02 = 2
  cutscene02triggered = false
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  PauseTimerActive = 0
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  SetInvulnerable(flag.TYPE_TUNDRAN, 0)
  SetTimer(300)
  ShowTimer(1)
  WaitFor(0.2)
  timer = 1
  while missionend == 0 do
    if GetTimeLeft() < 181 and timer01 == 0 then
      PhoneMessage(38, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      timer01 = 1
    end
    EndFrame()
    if GetTimeLeft() < 121 and timer02 == 0 then
      PhoneMessage(39, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      timer02 = 1
    end
    if GetTimeLeft() < 61 and timer03 == 0 then
      PhoneMessage(44, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      timer03 = 1
      break
    end
    EndFrame()
  end
end
