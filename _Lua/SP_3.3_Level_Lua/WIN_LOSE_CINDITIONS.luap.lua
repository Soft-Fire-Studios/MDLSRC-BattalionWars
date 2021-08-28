function WIN_LOSE_CINDITIONS(owner)
  repeat
    if missionover == 0 and dreadnaughtdead == 0 and radardestroyed == 0 and STALLALLUNITSDEADCHECK == 0 and AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
      WaitFor(2)
      if missionover == 0 and dreadnaughtdead == 0 and radardestroyed == 0 and STALLALLUNITSDEADCHECK == 0 and AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
        missionover = 1
        DebugOut("lose1")
        ClearMessageQueue()
        PhoneMessage(104, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
        DeclareVictory(constant.ARMY_SOLAR)
        FreezePlayer(constant.PLAYER_ONE)
        WaitFor(10)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(131)
      end
    end
    if dreadnaughtdead == 0 and missionover == 0 and IsDead(Air_Vehicle.AIbomber1) == true and IsDead(Air_Vehicle.AIbomber2) == true then
      missionover = 1
      DebugOut("lose2")
      ClearMessageQueue()
      PhoneMessage(105, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DeclareVictory(constant.ARMY_SOLAR)
      FreezePlayer(constant.PLAYER_ONE)
      WaitFor(8)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      LoseMission(162)
    end
    if dreadnaughtdead == 0 and CutsceneStatueTriggered == false and missionover == 0 and AIControlledGruntsBegun == true and MissionFlowPart2started == true then
      if 1 > GetGroupHealth(Unit_Group.AIGrunts) == true then
        DebugOut("lose4")
        missionover = 1
        ClearMessageQueue()
        PhoneMessage(108, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
        DeclareVictory(constant.ARMY_SOLAR)
        FreezePlayer(constant.PLAYER_ONE)
        WaitFor(8)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        LoseMission(161)
      end
    end
    if dreadnaughtdead == 0 and missionover == 0 and StatueDead == false and 10 > GetHealthPercent(Building.Statue) then
      SetInvulnerable(flag.TYPE_SOLAR, 1)
      SetUnitInvulnerable(Building.Statue, true)
      StatueDead = true
      DebugOut("lose5")
      missionover = 1
      FreezePlayer(constant.PLAYER_ONE)
      SetObjectiveData(Objective_Marker.destroydreadnaught, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if missionover == 0 and IsDead(Water_Vehicle.SEdreadnaught) == true then
      FreezePlayer(constant.PLAYER_ONE)
      SetInvulnerable(flag.TYPE_ANGLO, 1)
      SetObjectiveData(Objective.destroydreadnaught, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.destroydreadnaught, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      dreadnaughtdead = 1
      missionover = 1
    end
    EndFrame()
  until missionover == 1
end
