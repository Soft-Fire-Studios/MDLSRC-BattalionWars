function CutsceneSolarAssaultReinforcementsAbort(owner)
  scriptCutsceneSolarAssaultReinforcementsAbort = owner
  repeat
    EndFrame()
  until CutsceneSolarAssaultReinforcementsCanNowBeSkipped == 1
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      Kill(scriptCutsceneSolarAssaultReinforcements)
      CutsceneSolarAssaultReinforcementsFinished = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  until CutsceneSolarAssaultReinforcementsFinished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StoreSummaryMessage(11, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  ExitVehicle(Troop.SolarAssault1, Air_Vehicle.SolarAssaultChopper)
  ExitVehicle(Troop.SolarAssault2, Air_Vehicle.SolarAssaultChopper)
  ExitVehicle(Troop.SolarAssault3, Air_Vehicle.SolarAssaultChopper)
  ExitVehicle(Troop.SolarAssault4, Air_Vehicle.SolarAssaultChopper)
  ExitVehicle(Troop.SolarAssault5, Air_Vehicle.SolarAssaultChopper)
  StopCapturePointSounds(Capture_Point.SolarAssault)
  Teleport(Troop.SolarAssault1, 215, 630, 190, 5)
  Teleport(Troop.SolarAssault2, 220, 630, 190, 5)
  Teleport(Troop.SolarAssault3, 225, 630, 190, 5)
  Teleport(Troop.SolarAssault4, 215, 625, 190, 5)
  Teleport(Troop.SolarAssault5, 220, 625, 190, 5)
  AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault1)
  AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault2)
  AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault3)
  AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault4)
  AddToGroup(Unit_Group.PlayerControlledUnits, Troop.SolarAssault5)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault1)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault2)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault3)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault4)
  AddToGroup(Unit_Group.Player_Army, Troop.SolarAssault5)
  SetCamera(Camera.Player, constant.PLAYER_ONE)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.SolarAssault1, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault2, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault3, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault4, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault5, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  if tankfollowing == 1 then
    FollowUnit(Ground_Vehicle.SolarLightTank, 5, GetPlayerUnit(), -1, 0, constant.ORDER_NORMAL)
  end
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 0
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  GoToArea(Air_Vehicle.SolarAssaultChopper, -721, 980, 30, 0, constant.ORDER_FORCED)
  DebugOut("Assault Chopper has landed")
  SetActive(Troop.SolarAssault1, constant.ACTIVE)
  SetActive(Troop.SolarAssault2, constant.ACTIVE)
  SetActive(Troop.SolarAssault3, constant.ACTIVE)
  SetActive(Troop.SolarAssault4, constant.ACTIVE)
  SetActive(Troop.SolarAssault5, constant.ACTIVE)
  assaultvets = 1
  PhoneMessage(38, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  while true do
    if IsInArea(Air_Vehicle.SolarAssaultChopper, -721, 980, 30) then
      Despawn(Air_Vehicle.SolarAssaultChopper)
      break
    end
    EndFrame()
  end
end
