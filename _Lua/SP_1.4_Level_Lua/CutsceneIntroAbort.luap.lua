function CutsceneIntroAbort(owner)
  scriptCutsceneIntroAbort = owner
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      Kill(scriptCutsceneIntro)
      CutsceneIntroFinished = 1
      DebugOut("Killed cutscene")
    end
    EndFrame()
  until CutsceneIntroFinished == 1
  StoreSummaryMessage(4, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Sad)
  StoreSummaryMessage(1, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  StoreSummaryMessage(2, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
  ClearMessageQueue()
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Troop.ReconRunGrunt1)
  Despawn(Troop.ReconRunGrunt2)
  Despawn(Troop.ReconRunGrunt3)
  Despawn(Troop.ReconRunGrunt4)
  Despawn(Troop.ReconRunGrunt5)
  Despawn(Troop.ReconRunGrunt6)
  Despawn(Troop.ReconRunGrunt7)
  Despawn(Troop.ReconRunGrunt8)
  Despawn(Troop.ReconRunGrunt9)
  Despawn(Troop.ReconRunGrunt10)
  Despawn(Troop.ReconRunGrunt11)
  Despawn(Troop.ReconRunGrunt12)
  Despawn(Troop.ReconRunGrunt13)
  Despawn(Troop.ReconRunGrunt14)
  Despawn(Troop.ReconRunGrunt15)
  ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarLightTank, true, true)
  EndIntro()
  Teleport(Troop.AdvancingFlamer1, 241, 701, 45, 5)
  Teleport(Troop.AdvancingFlamer2, 236, 707, 45, 5)
  StopAndGuard(Troop.AdvancingFlamer1)
  StopAndGuard(Troop.AdvancingFlamer2)
  SetCamera(Camera.Player, constant.PLAYER_ONE)
  EndFrame()
  ResetCommandBar()
  WaitFor(0.5)
  SetFunctionIndicatorState(true)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(0.5)
  UnfreezePlayer(constant.PLAYER_ONE)
  StartScoringTimer()
  CutsceneIntroFinished = 2
  WaitFor(12)
  ClearMessageQueue()
  PhoneMessage(34, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  WaitFor(6)
  if IsDead(Ground_Vehicle.SolarLightTank) == false and (IsDead(Troop.AdvancingFlamer1) == false or IsDead(Troop.AdvancingFlamer1) == false) then
    PhoneMessage(54, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  end
  if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone1) then
    GoToArea(Troop.AdvancingFlamer1, 293, 776, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingFlamer2, 293, 776, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone2) then
    GoToArea(Troop.AdvancingFlamer1, 280, 765, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingFlamer2, 280, 765, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone3) then
    GoToArea(Troop.AdvancingFlamer1, 267, 746, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingFlamer2, 267, 746, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone4) then
    GoToArea(Troop.AdvancingFlamer1, 252, 728, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingFlamer2, 252, 728, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone5) then
    GoToArea(Troop.AdvancingFlamer1, 235, 700, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingFlamer2, 235, 700, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone6) then
    GoToArea(Troop.AdvancingFlamer1, 218, 637, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingFlamer2, 218, 637, 5, 0, constant.ORDER_NORMAL)
  else
    GoToArea(Troop.AdvancingFlamer1, 314, 815, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingFlamer2, 314, 815, 5, 0, constant.ORDER_NORMAL)
    while true do
      if 0 < NumItemsInArea(Map_Zone.RetreatingTroops, flag.TYPE_SOLAR) then
        GoToArea(Troop.RetreatingTroop1, 180, 616, 5, 0, constant.ORDER_FORCED)
        GoToArea(Troop.RetreatingTroop2, 188, 613, 5, 0, constant.ORDER_FORCED)
        GoToArea(Troop.RetreatingTroop3, 199, 607, 5, 0, constant.ORDER_FORCED)
        break
      end
      EndFrame()
    end
  end
  if IsDead(Ground_Vehicle.SolarLightTank) == false then
    PhoneMessage(56, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  end
  WaitFor(12)
  repeat
    EndFrame()
  until 1 > GetNumItemsInMessageQueue(constant.PLAYER_ONE)
  if IsDead(Troop.AdvancingBazooka1) and IsDead(Troop.AdvancingBazooka2) then
    DebugOut("Bazookas are dead, no need to tell player about them")
    return
  end
  if IsAttacking(Troop.AdvancingBazooka1) or IsAttacking(Troop.AdvancingBazooka2) then
    DebugOut("Bazookas are attacking, no need to tell player about them advancing")
  else
    PhoneMessage(49, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  end
  if IsDead(Troop.AdvancingBazooka1) and IsDead(Troop.AdvancingBazooka2) then
    DebugOut("Bazookas are dead, no need to tell player about them")
    return
  else
    if IsDead(Ground_Vehicle.SolarLightTank) then
      return
    else
    end
  end
  if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone1) then
    GoToArea(Troop.AdvancingBazooka1, 293, 776, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingBazooka2, 293, 778, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone2) then
    GoToArea(Troop.AdvancingBazooka1, 280, 765, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingBazooka2, 280, 767, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone3) then
    GoToArea(Troop.AdvancingBazooka1, 267, 746, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingBazooka2, 267, 748, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone4) then
    GoToArea(Troop.AdvancingBazooka1, 252, 728, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingBazooka2, 252, 730, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone5) then
    GoToArea(Troop.AdvancingBazooka1, 235, 700, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingBazooka2, 235, 702, 5, 0, constant.ORDER_NORMAL)
  elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Zone6) then
    GoToArea(Troop.AdvancingBazooka1, 218, 637, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingBazooka2, 218, 639, 5, 0, constant.ORDER_NORMAL)
  else
    GoToArea(Troop.AdvancingBazooka1, 294, 755, 5, 0, constant.ORDER_NORMAL)
    GoToArea(Troop.AdvancingBazooka2, 294, 757, 5, 0, constant.ORDER_NORMAL)
  end
end
