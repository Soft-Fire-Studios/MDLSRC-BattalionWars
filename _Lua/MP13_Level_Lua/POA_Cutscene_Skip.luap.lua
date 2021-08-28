function POA_Cutscene_Skip(owner)
  StartIntro()
  PrepareSkipCutscene()
  WaitFor(1)
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutsceneskipped = 1
      DebugOut("Killed cutscene player1")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutsceneskipped = 1
      DebugOut("Killed cutscene player2")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      netvariable.player1.cutsceneskipped = 1
      netvariable.player2.cutsceneskipped = 1
      DebugOut(" In split screen - killed cutscene")
    end
    EndFrame()
  until netvariable.player1.cutsceneskipped == 1 and netvariable.player2.cutsceneskipped == 1
  CleanupSkipCutscene()
  Kill(cutkiller)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  EndIntro()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    StoreSummaryMessage(constant.PLAYER_ONE, 86, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 87, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
    StoreSummaryMessage(constant.PLAYER_ONE, 91, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
    StoreSummaryMessage(constant.PLAYER_ONE, 90, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
    SetCamera(Camera.player, constant.PLAYER_ONE)
    ClearMessageQueue(constant.PLAYER_ONE)
    Spawn(Ground_Vehicle.Entity0001)
    Despawn(Ground_Vehicle.Entity0001, true)
    Spawn(Ground_Vehicle.Entity0003)
    Despawn(Ground_Vehicle.Entity0003, true)
    Spawn(Troop.Entity0162)
    Despawn(Troop.Entity0162, true)
    Spawn(Troop.Entity0163)
    Despawn(Troop.Entity0163, true)
    Spawn(Ground_Vehicle.X_Heavy_Tank_1)
    Teleport(Ground_Vehicle.X_Heavy_Tank_1, 410, 245, 180, 5)
    Despawn(Ground_Vehicle.X_Heavy_Tank_1, true)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(constant.PLAYER_TWO, 88, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
    StoreSummaryMessage(constant.PLAYER_TWO, 89, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
    StoreSummaryMessage(constant.PLAYER_TWO, 91, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
    StoreSummaryMessage(constant.PLAYER_TWO, 90, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
    SetCamera(Camera.Entity0000, constant.PLAYER_TWO)
    ClearMessageQueue(constant.PLAYER_TWO)
  end
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  StartScoringTimer()
  PhoneMessageWithObjective(25, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  PhoneMessageWithObjective(26, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  UnfreezePlayer(constant.PLAYER_TWO)
  local COSprite = SpriteID.CO_T_Nelly_Happy
  UnfreezePlayer()
end
