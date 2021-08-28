function Win_Lose_Conditions(owner)
  local timeremaining = 0
  Despawn(Building.OuterIslandRocketsAnim)
  Despawn(Building.EvilRocket)
  Despawn(Building.EvilRocket2)
  Despawn(Building.EvilRocket3)
  Despawn(Building.EvilRocket4)
  Despawn(Building.EvilRocket5)
  Despawn(Troop.CutsceneBazooka1)
  Despawn(Troop.CutsceneBazooka2)
  repeat
    EndFrame()
  until CutsceneIntroFinished == 2
  while true do
    WaitFor(0.5)
    if rocketsobjectivefailed == 1 then
      DebugOut("Player failed rocket objective - losing mission...")
      KillScripts()
      CutsceneOutroLostMissionStart = 1
      return
    end
    if IsDead(Ground_Vehicle.SolarRecon) and dontneedrecon == 0 and battleshipcutscenestart == 1 then
      DebugOut("Player lost recon - losing mission...")
      KillScripts()
      FreezePlayer(constant.PLAYER_ONE)
      ClearMessageQueue()
      PhoneMessage(47, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      PhoneMessage(31, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
      WaitFor(15)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(153)
      return
    end
    if IsDead(Ground_Vehicle.SolarRecon) and dontneedrecon == 0 then
      DebugOut("Player lost recon - losing mission...")
      KillScripts()
      CutsceneOutroLostMissionStart = 1
      return
    end
    if IsDead(Troop.Admiral) and gotrecon == 1 then
      DebugOut("Munitions Expert died - losing mission...")
      KillScripts()
      CutsceneOutroLostMissionStart = 1
      return
    end
    if AllPlayerUnitsDead(constant.PLAYER_ONE) then
      KillScripts()
      if battleshipcutscenestart == 0 then
        DebugOut("Player lost all units - losing mission...")
        KillScripts()
        CutsceneOutroLostMissionStart = 1
        return
      else
        PhoneMessage(31, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
        FreezePlayer(constant.PLAYER_ONE)
        KillScripts()
        DeclareVictory(constant.ARMY_XYLVANIAN)
        WaitFor(11)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(156)
        return
      end
    end
    if CountRemainingPlayerTroops() == 0 and gotrecon == 0 then
      lostalltroops = 1
      if battleshipcutscenestart == 0 then
        DebugOut("Player lost all troops - losing mission...")
        KillScripts()
        CutsceneOutroLostMissionStart = 1
        return
      else
        PhoneMessage(28, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
        DebugOut("Player lost all troops - losing mission...")
        KillScripts()
        FreezePlayer(constant.PLAYER_ONE)
        DeclareVictory(constant.ARMY_XYLVANIAN)
        WaitFor(11)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(157)
        return
      end
    end
    if 0 < NumPassengersInUnit(Capture_Point.HQ) and NumPassengersInUnit(Capture_Point.SolarAssault) == 1 then
      DebugOut("Naughty tester, ejecting unit from Assault capture point.")
      ExitVehicle(constant.ID_NONE, Capture_Point.SolarAssault)
    end
    if GetState(Capture_Point.HQ) == flag.TYPE_SOLAR then
      StopScoringTimer()
      PrepareSkipCutscene()
      FreezePlayer(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if IsDead(Ground_Vehicle.SolarLightTank) == false then
        Spawn(Ground_Vehicle.CutsceneTank)
      end
      if IsDead(Ground_Vehicle.SolarLightTank) then
        ReviveFullUnitCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Ground_Vehicle.SolarLightTank, 183, 206, 270, 15)
      end
      Teleport(Ground_Vehicle.SolarLightTank, 217, 225, 0, 15)
      ForceUnitTransfer(constant.PLAYER_ONE, Ground_Vehicle.SolarLightTank, true, true)
      Despawn(Troop.Grunt1)
      Despawn(Troop.Grunt2)
      Despawn(Troop.Grunt3)
      Despawn(Troop.Grunt4)
      Despawn(Troop.Grunt5)
      Despawn(Troop.Grunt6)
      Despawn(Troop.Grunt7)
      Despawn(Troop.Grunt8)
      Despawn(Troop.Grunt9)
      Despawn(Troop.Grunt10)
      Despawn(Troop.SolarAssault1)
      Despawn(Troop.SolarAssault2)
      Despawn(Troop.SolarAssault3)
      Despawn(Troop.SolarAssault4)
      Despawn(Troop.SolarAssault5)
      Spawn(Troop.CutsceneGrunt1)
      Spawn(Troop.CutsceneGrunt2)
      Spawn(Troop.CutsceneGrunt3)
      Spawn(Troop.CutsceneGrunt4)
      Spawn(Troop.CutsceneGrunt5)
      if assaultvets == 1 then
        Spawn(Troop.CutsceneVet1)
        Spawn(Troop.CutsceneVet2)
        Spawn(Troop.CutsceneVet3)
        Spawn(Troop.CutsceneVet4)
      end
      StartOutro()
      SetCamera(Camera.CutsceneCam, constant.PLAYER_ONE)
      CameraSetTarget(Camera.CutsceneCam, Waypoint.OuttroCutsceneTarget1)
      CameraSetWaypoint(Camera.CutsceneCam, Waypoint.OuttroCutsceneSpline1)
      DeclareVictory(constant.ARMY_SOLAR)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      ClearMessageQueue()
      PhoneMessage(26, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      PhoneMessage(32, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      PhoneMessage(33, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective.HQ, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.HQ, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      DebugOut("Player won mission!...")
      timeremaining = GetTime()
      while GetTime() < timeremaining + 25 do
        if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
          DebugOut("Killed cutscene")
          break
        end
        EndFrame()
      end
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndOutro()
      WinMission()
      break
    end
    EndFrame()
  end
end
