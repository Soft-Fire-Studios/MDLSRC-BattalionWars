function Purge_LoseConditions(owner)
  while missionend == 0 do
    if AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
      WaitFor(1)
      if AllPlayerUnitsDead(constant.PLAYER_ONE) == true then
        missionend = 1
        FreezePlayer(0)
        DeclareVictory(constant.ARMY_SOLAR)
        VictoryDance(constant.ARMY_SOLAR, false)
        DefeatLament(constant.ARMY_UNDERWORLD, false)
        ClearMessageQueue()
        PhoneMessage(28, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
        repeat
          EndFrame()
        until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
        LoseMission(131)
        DebugOut("The player has lost the mission as they have no infantry. MISSION FAILED")
      end
    end
    if 1 > GetTimeLeft() and 1 <= ClockIsTicking then
      missionend = 1
      cutsceneFailGunBegin = 1
      repeat
        EndFrame()
      until 1 <= cutsceneFailGunIsOver
      LoseMission(142)
      DebugOut("The timer has run out. MISSION FAILED")
    end
    if IsDead(Building.Pillbox01) and IsDead(Building.Pillbox02) and PillboxNoLongerNeedsToBeDefended == 0 then
      missionend = 1
      FreezePlayer(0)
      DeclareVictory(constant.ARMY_SOLAR)
      VictoryDance(constant.ARMY_SOLAR, false)
      DefeatLament(constant.ARMY_UNDERWORLD, false)
      ClearMessageQueue()
      PhoneMessage(53, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      LoseMission(160)
      DebugOut("Both pillboxes are dead. MISSION FAILED")
    end
    if IsDead(Building.Saw01) and IsDead(Building.Saw02) and IsDead(Building.Saw03) then
      missionend = 1
      FreezePlayer(0)
      DeclareVictory(constant.ARMY_SOLAR)
      ClearMessageQueue()
      PhoneMessage(38, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until 0 >= GetNumItemsInMessageQueue(constant.PLAYER_ONE)
      LoseMission(179)
      DebugOut("All saws are dead. MISSION FAILED")
    end
    EndFrame()
  end
end
