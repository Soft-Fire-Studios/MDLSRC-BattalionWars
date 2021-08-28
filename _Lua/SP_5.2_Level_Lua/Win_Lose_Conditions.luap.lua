function Win_Lose_Conditions(owner)
  while true do
    WaitFor(0.5)
    if GetState(Capture_Point.MunitionsExpert) ~= flag.TYPE_TUNDRAN and CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and beachlandingcomplete == 1 and objectivescomplete == 0 and fleetisassembling == 0 and aapowcamp == 1 and mainpowcamp == 1 then
      WaitFor(2)
      if CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and beachlandingcomplete == 1 and objectivescomplete == 0 and fleetisassembling == 0 and aapowcamp == 1 and mainpowcamp == 1 then
        KillScripts()
        ClearMessageQueue()
        DebugOut("Player lost all units, mission ending...")
        PhoneMessage(34, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
        PhoneMessage(35, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        DeclareVictory(constant.ARMY_XYLVANIAN)
        FreezePlayer(constant.PLAYER_ONE)
        WaitFor(20)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        WaitFor(0.5)
        LoseMission(195)
        break
      end
    end
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and beachlandingcomplete == 0 then
      KillScripts()
      ClearMessageQueue()
      DebugOut("Player lost all units at sea, mission ending...")
      PhoneMessage(40, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      PhoneMessage(32, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      FreezePlayer(constant.PLAYER_ONE)
      WaitFor(19)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(0.5)
      LoseMission(156)
      break
    end
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and beachlandingcomplete == 1 then
      WaitFor(2)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) and beachlandingcomplete == 1 then
        WaitFor(5)
        KillScripts()
        ClearMessageQueue()
        DebugOut("Player lost all units after ground section complete, mission ending...")
        PhoneMessage(31, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
        PhoneMessage(32, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        DeclareVictory(constant.ARMY_XYLVANIAN)
        FreezePlayer(constant.PLAYER_ONE)
        WaitFor(22)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        WaitFor(0.5)
        LoseMission(156)
        break
      end
    end
    if beachlandingcomplete == 2 then
      WaitFor(3)
      PrepareSkipCutscene()
      repeat
        if GetCurrentMissionAttempted() == true and CheckSkipCutscene() then
          KillScripts()
          DebugOut("Killed cutscene")
          missionwon = 1
        end
        EndFrame()
      until missionwon == 1
      KillScripts()
      ClearMessageQueue()
      DebugOut("Player has won the mission")
      FreezePlayer(constant.PLAYER_ONE)
      StopScoringTimer()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Kill(Air_Vehicle.XGunship1)
      Kill(Air_Vehicle.XGunship2)
      WinMission()
      break
    end
    EndFrame()
  end
end
