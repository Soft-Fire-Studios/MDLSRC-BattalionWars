function Cutscene_Mid_Reinforcements_Skip(owner)
  local TankandBomberDead = 0
  repeat
    EndFrame()
  until BeginReinforcementCutscene == 1
  WaitFor(1)
  repeat
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      Kill(midcutscene2)
      DebugOut("Reinforcements Cutscene skipped")
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      MidCutsceneEnded2 = true
      EndFrame()
    else
    end
    EndFrame()
  until MidCutsceneEnded2 == true
  Kill(midcutscene2)
  ClearMessageQueue()
  StoreSummaryMessage(27, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(43, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StopCapturePointSounds(Capture_Point.flamevets)
  SETeleportHack = 0
  ExitVehicle(Ground_Vehicle.SEaatank2, Air_Vehicle.SEairtransport1)
  Teleport(Ground_Vehicle.SEaatank2, 75, 92, 100, 10)
  Despawn(Air_Vehicle.SEairtransport1)
  EndFrame()
  Spawn(Air_Vehicle.SEairtransport1)
  Teleport(Air_Vehicle.SEairtransport1, 49, 109, 100, 10)
  GoToArea(Air_Vehicle.SEairtransport1, 682, -770, 0)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Ground_Vehicle.SEaatank2, GetPlayerUnit(), 8, 0, constant.ORDER_FORCED)
  end
  if AAVehicleFollowing == 3 then
    FollowUnit(Ground_Vehicle.SEaatank1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt01Following == 3 then
    FollowUnit(Troop.SEgrunt1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt02Following == 3 then
    FollowUnit(Troop.SEgrunt2, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt03Following == 3 then
    FollowUnit(Troop.SEgrunt3, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt04Following == 3 then
    FollowUnit(Troop.SEgrunt4, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEGrunt05Following == 3 then
    FollowUnit(Troop.SEgrunt5, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame01Following == 3 then
    FollowUnit(Troop.SEflame1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame02Following == 3 then
    FollowUnit(Troop.SEflame2, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame07Following == 3 then
    FollowUnit(Troop.SEflame7, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame08Following == 3 then
    FollowUnit(Troop.SEflame8, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEFlame09Following == 3 then
    FollowUnit(Troop.SEflame9, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEBazooka02Following == 3 then
    FollowUnit(Troop.SEbazooka2, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEBazooka03Following == 3 then
    FollowUnit(Troop.SEbazooka3, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEBazooka04Following == 3 then
    FollowUnit(Troop.SEbazooka4, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  if SEBazooka05Following == 3 then
    FollowUnit(Troop.SEbazooka5, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
  end
  SetCamera(Camera.player1cam)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(UnfreezeDelay)
  UnfreezePlayer(constant.PLAYER_ONE)
  SetInvulnerable(flag.TYPE_SOLAR, 0)
  SetInvulnerable(flag.TYPE_ANGLO, 0)
  PauseTimerActive = 0
  ReinforcementsCutscenePlaying = 0
  WaitFor(0.5)
  helpisontheway = 1
  if MissionWin == 0 then
    Spawn(Air_Vehicle.AIbomber2)
    GoToArea(Ground_Vehicle.AIlighttank8, 87, 131, 5, 0, constant.ORDER_FORCED)
    if IsDead(Ground_Vehicle.AIlighttank8) == false then
      ClearMessageQueue()
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_ONE)
      repeat
        if IsDead(Ground_Vehicle.AIlighttank8) and IsDead(Air_Vehicle.AIbomber2) and TankandBomberDead == 0 then
          TankandBomberDead = 1
          PhoneMessage(29, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
      until TankandBomberDead == 1
    end
  end
end
