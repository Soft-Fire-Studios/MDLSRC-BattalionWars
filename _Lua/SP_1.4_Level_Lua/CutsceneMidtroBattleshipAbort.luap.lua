function CutsceneMidtroBattleshipAbort(owner)
  repeat
    EndFrame()
  until CutsceneBattleshipCanNowBeSkipped == 1
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      Kill(scriptCutsceneMidtroBattleship)
      CutsceneBattleshipFinished = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  until CutsceneBattleshipFinished == 1
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetFunctionIndicatorState(true)
  Spawn(Troop.MainBasePatroller1)
  Spawn(Troop.MainBasePatroller2)
  Spawn(Troop.AngryAnglo1)
  Spawn(Troop.AngryAnglo2)
  Spawn(Troop.AngryAnglo3)
  Spawn(Troop.AngryAnglo4)
  Spawn(Troop.AngryAnglo5)
  Spawn(Troop.BridgeGoon1)
  Spawn(Troop.BridgeGoon2)
  Spawn(Troop.RPGTower1)
  Spawn(Troop.RPGTower2)
  Spawn(Troop.RPGTower4)
  PutUnitInVehicle(Troop.RPGTower1, Building.RPGTower1, 0)
  PutUnitInVehicle(Troop.RPGTower2, Building.RPGTower2, 0)
  PutUnitInVehicle(Troop.RPGTower4, Building.RPGTower4, 0)
  SetActive(Capture_Point.HQ, constant.ACTIVE)
  SetActive(Morphing_Building.HQ, constant.ACTIVE)
  Despawn(Air_Vehicle.ExtractionChopper)
  Despawn(Water_Vehicle.SolarBattleshipCutscene)
  Spawn(Water_Vehicle.SolarBattleship)
  EndIntro()
  Teleport(Ground_Vehicle.SolarLightTank, 179, 204, 270, 5)
  StoreSummaryMessage(58, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(59, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(60, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  SetUnitInvulnerable(Building.Portcullis1, false)
  SetUnitInvulnerable(Building.Portcullis2, false)
  SetUnitInvulnerable(Building.DropOffPortcullis, false)
  SetUnitInvulnerable(Building.RPGTower3, false)
  Kill(Building.Portcullis1)
  Kill(Building.Portcullis2)
  Kill(Destroyable_Object.Portcullis1)
  Kill(Destroyable_Object.Portcullis2)
  Kill(Destroyable_Object.DropOffPortcullis)
  Kill(Building.RPGTower3)
  Kill(Building.RPGTower4)
  AttackTarget(Water_Vehicle.SolarBattleship, Building.RPGTower1, constant.ORDER_FORCED)
  CameraSetFOV(Camera.CutsceneCam, 45, constant.IMMEDIATE, 2, constant.NO_WAIT)
  SetCamera(Camera.Player, constant.PLAYER_ONE)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.Grunt1, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt2, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt3, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt4, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt5, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt6, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt7, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt8, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt9, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.Grunt10, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault1, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault2, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault3, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault4, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Troop.SolarAssault5, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
    FollowUnit(Ground_Vehicle.SolarLightTank, GetPlayerUnit(constant.PLAYER_ONE), -1, constant.ORDER_NORMAL)
  end
  gotrecon = 0
  WaitFor(1)
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarLightTank, true, true)
  SetHealthPercent(Ground_Vehicle.SolarLightTank, 100)
  Despawn(Troop.TransferMonkey)
  Despawn(Ground_Vehicle.SolarRecon)
  EndFrame()
  ResetCommandBar()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  UnfreezePlayer(constant.PLAYER_ONE)
  PauseTimerActive = 0
  battleshipcutscenefinish = 1
  if perishedunits == 1 then
    PhoneMessage(90, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  end
  PhoneMessage(89, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
end
