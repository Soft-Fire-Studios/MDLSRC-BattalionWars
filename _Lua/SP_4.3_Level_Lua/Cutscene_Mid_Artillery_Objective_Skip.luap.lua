function Cutscene_Mid_Artillery_Objective_Skip(owner)
  repeat
    EndFrame()
  until MidCutsceneArtilleryObjectiveStart == 1
  WaitFor(3)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(MidCutsceneArtilleryObjective)
      DebugOut("Artillery Objective Cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      MidCutsceneArtilleryObjectiveEnd = 1
      EndFrame()
    else
    end
    EndFrame()
  until MidCutsceneArtilleryObjectiveEnd == 1
  Kill(MidCutsceneArtilleryObjective)
  ClearMessageQueue()
  StoreSummaryMessage(9, constant.ARMY_UNDERWORLD, SpriteID.CO_L_Ferrok_Happy)
  SetObjectiveData(Objective_Marker.RescueArtillery01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.RescueArtillery02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  if IsDead(Air_Vehicle.SEGunship01) then
    ReviveDeadUnit(Air_Vehicle.SEGunship01, -95.252, 27.418, 50, 0)
    repeat
      EndFrame()
    until IsDead(Air_Vehicle.SEGunship01) == false
    ReviveDeadUnit(Troop.SEGunship01Pilot, 425, 1250, 0, 10)
    EndFrame()
    PutUnitInVehicle(Troop.SEGunship01Pilot, Air_Vehicle.SEGunship01, 0)
  end
  if IsDead(Air_Vehicle.SEGunship02) then
    ReviveDeadUnit(Air_Vehicle.SEGunship02, -95.252, 27.418, 50, 0)
    repeat
      EndFrame()
    until IsDead(Air_Vehicle.SEGunship02) == false
    ReviveDeadUnit(Troop.SEGunship02Pilot, 425, 1250, 0, 10)
    EndFrame()
    PutUnitInVehicle(Troop.SEGunship02Pilot, Air_Vehicle.SEGunship02, 0)
  end
  EndFrame()
  Teleport(Air_Vehicle.SEGunship01, GetObjectXPosition(Waypoint.SEGunship05Teleport), GetObjectZPosition(Waypoint.SEGunship05Teleport), 45)
  Teleport(Air_Vehicle.SEGunship02, GetObjectXPosition(Waypoint.SEGunship08Teleport), GetObjectZPosition(Waypoint.SEGunship08Teleport), 45)
  SetHealthPercent(Air_Vehicle.SEGunship01, 100)
  SetHealthPercent(Air_Vehicle.SEGunship02, 100)
  AttackTarget(Air_Vehicle.SEGunship01, Ground_Vehicle.ILArtillery01, constant.ORDER_FORCED)
  AttackTarget(Air_Vehicle.SEGunship02, Ground_Vehicle.ILArtillery02, constant.ORDER_FORCED)
  AddToGroup(Unit_Group.ArtilleryAttackers, Air_Vehicle.SEGunship01)
  AddToGroup(Unit_Group.ArtilleryAttackers, Air_Vehicle.SEGunship02)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.ILArtillery01, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
    FollowUnit(Ground_Vehicle.ILArtillery02, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  HideHUD = 0
  EndFrame()
  SetHudState(constant.PLAYER_ONE, constant.HUD_COMMANDBAR, constant.HUD_ITEM_ON)
  SetHudState(constant.PLAYER_ONE, constant.HUD_PLAYERICON, constant.HUD_ITEM_ON)
  SetCamera(Camera.PlayerCam, constant.PLAYER_ONE)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  EndIntro()
  WaitFor(UnfreezeDelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 0
  ClearMessageQueue()
  PhoneMessageWithObjective(10, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
  WaitFor(1)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_UNDERWORLD, 0)
  CutsceneIsPlaying = 0
  SetUnitInvulnerable(Ground_Vehicle.ILArtillery01, false)
  SetUnitInvulnerable(Ground_Vehicle.ILArtillery02, false)
  repeat
    WaitFor(1)
    AttackTarget(Air_Vehicle.SEGunship01, Ground_Vehicle.ILArtillery01, constant.ORDER_FORCED)
    AttackTarget(Air_Vehicle.SEGunship02, Ground_Vehicle.ILArtillery02, constant.ORDER_FORCED)
    EndFrame()
  until ArtilleryBothDead == 1 or GetGroupHealthPercent(Unit_Group.ArtilleryAttackers) == 0
  if ArtilleryBothDead == 1 then
    repeat
      WaitFor(5)
      GoToArea(Air_Vehicle.SEGunship01, GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 25)
      GoToArea(Air_Vehicle.SEGunship02, GetObjectXPosition(GetPlayerUnit()), GetObjectZPosition(GetPlayerUnit()), 25)
      SetUnitAI(Air_Vehicle.SEGunship01, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Air_Vehicle.SEGunship02, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      EndFrame()
    until GetGroupHealthPercent(Unit_Group.ArtilleryAttackers) == 0
  end
end
