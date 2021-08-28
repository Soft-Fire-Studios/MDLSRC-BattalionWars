function CutsceneAbort(owner)
  cutsceneabort = owner
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        Kill(cutscene)
        cutscenefinished = 1
        DebugOut(" In split screen - killed cutscene")
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if CheckSkipCutscene() then
        netvariable.player1.skip = 1
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if CheckSkipCutscene() then
        netvariable.player2.skip = 1
        DebugOut("Killed cutscene")
      end
      EndFrame()
    end
    EndFrame()
  until netvariable.player1.skip == 1 and netvariable.player2.skip == 1 or cutscenefinished == 1
  Kill(cutscene)
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  Despawn(Capture_Point.THQ)
  Despawn(Troop.IntroXGrunt01)
  Despawn(Troop.IntroXGrunt02)
  Despawn(Troop.IntroXGrunt03)
  Despawn(Troop.IntroXGrunt04)
  Despawn(Troop.IntroXGrunt05)
  Despawn(Troop.IntroXAssault01)
  Despawn(Troop.IntroXAssault02)
  Despawn(Troop.IntroXAssault03)
  Despawn(Troop.IntroXAssault04)
  Despawn(Troop.IntroXBazooka01)
  Despawn(Troop.IntroXBazooka02)
  Despawn(Troop.IntroXBazooka03)
  Despawn(Ground_Vehicle.IntroXAAVehicle01)
  Despawn(Ground_Vehicle.IntroXArtillery01)
  Despawn(Ground_Vehicle.IntroXArtillery02)
  Despawn(Troop.IntroTTGrunt01)
  Despawn(Troop.IntroTTGrunt02)
  Despawn(Troop.IntroTTGrunt03)
  Despawn(Troop.IntroTTGrunt04)
  Despawn(Troop.IntroTTGrunt05)
  Despawn(Troop.IntroTTFlamer01)
  Despawn(Troop.IntroTTFlamer02)
  Despawn(Ground_Vehicle.TLightTank1)
  Despawn(Ground_Vehicle.TLightTank2)
  Despawn(Air_Vehicle.TGunship1)
  EndFrame()
  Spawn(Troop.XGrunt1)
  Spawn(Troop.XGrunt2)
  Spawn(Troop.XGrunt3)
  Spawn(Troop.XGrunt4)
  Spawn(Troop.XGrunt5)
  Spawn(Troop.XAssault1)
  Spawn(Troop.XAssault2)
  Spawn(Troop.XAssault3)
  Spawn(Troop.XAssault4)
  Spawn(Troop.XBazooka1)
  Spawn(Troop.XBazooka2)
  Spawn(Troop.XBazooka3)
  Spawn(Ground_Vehicle.AntiAir)
  Spawn(Ground_Vehicle.XArtillery1)
  Spawn(Ground_Vehicle.XArtillery2)
  Spawn(Troop.TGrunt1)
  Spawn(Troop.TGrunt2)
  Spawn(Troop.TGrunt3)
  Spawn(Troop.TGrunt4)
  Spawn(Troop.TGrunt5)
  Spawn(Troop.TFlamer1)
  Spawn(Troop.TFlamer2)
  Spawn(Ground_Vehicle.TLightTank1)
  Spawn(Ground_Vehicle.TLightTank2)
  Spawn(Air_Vehicle.TGunship1)
  EndFrame()
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.XBazooka3, true, true)
  ForceUnitTransfer(constant.PLAYER_TWO, Troop.TGrunt4, true, true)
  EndFrame()
  Despawn(Troop.XDummy)
  Despawn(Troop.TTDummy)
  SetObjectiveData(Objective_Marker.Bomber1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Bomber2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Bomber3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Bomber4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Powerstation1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.Powerstation4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.THQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetCamera(Camera.Player1, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.Player2, constant.PLAYER_TWO)
  end
  EndIntro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(0, 15, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Happy)
    StoreSummaryMessage(0, 30, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Happy)
    StoreSummaryMessage(0, 32, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Happy)
    StoreSummaryMessage(0, 34, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Ubel_Happy)
    PhoneMessage(36, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
    PhoneMessage(37, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(1, 16, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 31, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 33, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    StoreSummaryMessage(1, 35, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Sad)
    PhoneMessage(36, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
    PhoneMessage(37, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_TWO)
  end
  SetCamera(Camera.Player1, constant.PLAYER_ONE)
  SetCamera(Camera.Player2, constant.PLAYER_TWO)
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetObjectivesResult(false, false, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetObjectivesResult(true, true, true)
  end
  CutsceneHasEnded = 1
  WaitFor(0.5)
  SetTimer(600)
  ShowTimer(1)
  UnfreezePlayer(0)
  UnfreezePlayer(1)
end
