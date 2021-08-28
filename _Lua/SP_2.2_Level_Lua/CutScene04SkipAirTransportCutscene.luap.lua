function CutScene04SkipAirTransportCutscene(owner)
  repeat
    EndFrame()
  until StartedCutscene04 == 1
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("Mid Cutscene Skipped")
      EndCutscene04 = 1
    end
    EndFrame()
  until EndCutscene04 == 1
  ClearMessageQueue()
  Kill(AbortCutscene04)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  StoreSummaryMessage(50, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
  StoreSummaryMessage(51, constant.ARMY_WF, SpriteID.CO_WF_Young_Herman_Happy)
  SetObjectiveData(Objective_Marker.TundranAirTransport01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.TundranAirBaseWaypoint, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetCamera(Camera.PlayerCamera)
  CleanupSkipCutscene()
  Spawn(Troop.TundranCounterFlameVet01)
  Spawn(Troop.TundranCounterFlameVet02)
  Spawn(Troop.TundranCounterFlameVet03)
  Spawn(Troop.TundranCounterAAVet01)
  Spawn(Troop.TundranCounterAAVet02)
  Spawn(Troop.TundranCounterAAVet03)
  Spawn(Troop.TundranCounterAAVet04)
  Spawn(Troop.TundranAACounterTroop01)
  Spawn(Troop.TundranAACounterTroop02)
  Spawn(Troop.TundranChainVet05)
  Spawn(Troop.TundranChainVet06)
  Spawn(Troop.TundranChainVet07)
  Spawn(Troop.TundranChainVet08)
  Spawn(Troop.TundranChainVet09)
  Spawn(Ground_Vehicle.TundranHeavyTank03)
  Spawn(Ground_Vehicle.TundranHeavyTank04)
  Spawn(Air_Vehicle.TundranGunship04)
  Spawn(Air_Vehicle.TundranGunship05)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  playerincutscene = false
  SetUnitInvulnerable(Air_Vehicle.TundranAirTransport01, false)
  SetUnitInvulnerable(Air_Vehicle.TundranAirTransport02, false)
  SetUnitInvulnerable(Air_Vehicle.TundranAirTransport03, false)
  SetUnitInvulnerable(Air_Vehicle.TundranAirTransport04, false)
  UnfreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 0
  SetInvulnerable(flag.TYPE_WFRONTIER, 0)
  PhoneMessage(75, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
  PhoneMessage(77, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
  repeat
    random = GetRandom(10)
    WaitFor(0.2)
  until missionend == 1
end
