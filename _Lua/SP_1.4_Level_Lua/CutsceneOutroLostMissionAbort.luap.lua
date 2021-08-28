function CutsceneOutroLostMissionAbort(owner)
  repeat
    EndFrame()
  until CutsceneOutroLostMissionCanNowBeSkipped == 1
  PrepareSkipCutscene()
  repeat
    if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
      KillScripts()
      CutsceneOutroLostMissionFinished = 1
      DebugOut("Killed recon cutscene")
    end
    EndFrame()
  until CutsceneOutroLostMissionFinished == 1
  KillScripts()
  Kill(scriptCutsceneOutroLostMissionStart)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if rocketsobjectivefailed == 1 then
    LoseMission(154)
    return
  end
  if IsDead(Ground_Vehicle.SolarRecon) and dontneedrecon == 0 and battleshipcutscenestart == 1 then
    LoseMission(153)
    return
  end
  if IsDead(Ground_Vehicle.SolarRecon) and dontneedrecon == 0 then
    LoseMission(153)
    return
  end
  if IsDead(Troop.Admiral) and gotrecon == 1 then
    LoseMission(152)
    return
  end
  if AllPlayerUnitsDead(constant.PLAYER_ONE) and battleshipcutscenestart == 0 then
    LoseMission(156)
    return
  end
  if CountRemainingPlayerTroops() == 0 and gotrecon == 0 then
    LoseMission(157)
    return
  else
    DeclareVictory(constant.ARMY_XYLVANIAN)
    LoseMission(157)
    return
  end
end
