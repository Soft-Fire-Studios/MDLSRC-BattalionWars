function LoseConditions(owner)
  local p1nounits01 = 0
  local p1nounits02 = 0
  local p1nounits03 = 0
  local p2nounits01 = 0
  local p2nounits02 = 0
  local p2nounits03 = 0
  while missionend == 0 do
    while missionend ~= 1 and not (0 < aatowers) do
      while inacutscene ~= false do
        EndFrame()
      end
      if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) and netvariable.player1.p1unitsdead01 == 0 then
        WaitFor(2)
        if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) and netvariable.player1.p1unitsdead01 == 0 then
          RenderOptionalHUDComponent(constant.PLAYER_ONE, true)
          netvariable.player1.p1unitsdead01 = 1
          DebugOut("*LoseConditions* - 1.")
        end
      end
      if netvariable.player1.p1unitsdead01 == 1 and netvariable.player2.p2unitsdead01 == 0 and p1nounits01 == 0 then
        PhoneMessage(72, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        PhoneMessage(73, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
        DebugOut("*LoseConditions* - 2.")
        p1nounits01 = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) and netvariable.player2.p2unitsdead01 == 0 then
        WaitFor(2)
        if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) and netvariable.player2.p2unitsdead01 == 0 then
          RenderOptionalHUDComponent(constant.PLAYER_TWO, true)
          netvariable.player2.p2unitsdead01 = 1
          DebugOut("*LoseConditions* - 3.")
        end
      end
      if netvariable.player1.p1unitsdead01 == 0 and netvariable.player2.p2unitsdead01 == 1 and p2nounits01 == 0 then
        PhoneMessage(74, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        PhoneMessage(75, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
        DebugOut("*LoseConditions* - 4.")
        p2nounits01 = 1
      end
      if netvariable.player1.p1unitsdead01 == 1 and netvariable.player2.p2unitsdead01 == 1 then
        missionend = 1
        Kill(startup)
        Kill(killgunship01)
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          FreezePlayer(1)
          StopScoringTimer()
          ClearMessageQueue(constant.PLAYER_TWO)
          PhoneMessage(65, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
          DebugOut("*LoseConditions* - 5.")
        end
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          DebugOut("*LoseConditions* - 6.")
          FreezePlayer(0)
          StopScoringTimer()
          DeclareVictory(constant.ARMY_XYLVANIAN)
          ClearMessageQueue(constant.PLAYER_ONE)
          PhoneMessage(64, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
          SetNetworkMissionComplete(1, false, 131)
          SetNetworkMissionComplete(2, false, 131)
        end
        WaitFor(8)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          NetworkGameOver()
          do break end
          EndFrame()
        end
      end
    end
    repeat
      EndFrame()
    until aatowers == 1
    repeat
      repeat
        EndFrame()
      until inacutscene == false
      if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) and netvariable.player1.p1unitsdead02 == 0 then
        WaitFor(2)
        if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) and netvariable.player1.p1unitsdead02 == 0 then
          RenderOptionalHUDComponent(constant.PLAYER_ONE, true)
          netvariable.player1.p1unitsdead02 = 1
          DebugOut("*LoseConditions* - 7.")
        end
      end
      if netvariable.player1.p1unitsdead02 == 1 and netvariable.player2.p2unitsdead02 == 0 and p1nounits02 == 0 then
        PhoneMessage(44, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        PhoneMessage(45, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
        DebugOut("*LoseConditions* - 8.")
        p1nounits02 = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) and netvariable.player2.p2unitsdead02 == 0 then
        WaitFor(2)
        if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) and netvariable.player2.p2unitsdead02 == 0 then
          RenderOptionalHUDComponent(constant.PLAYER_TWO, true)
          netvariable.player2.p2unitsdead02 = 1
          DebugOut("*LoseConditions* - 9.")
        end
      end
      if netvariable.player1.p1unitsdead02 == 0 and netvariable.player2.p2unitsdead02 == 1 and p2nounits02 == 0 then
        PhoneMessage(46, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
        PhoneMessage(47, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
        DebugOut("*LoseConditions* - 10.")
        p2nounits02 = 1
      end
      if netvariable.player1.p1unitsdead02 == 1 and netvariable.player2.p2unitsdead02 == 1 then
        missionend = 1
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          FreezePlayer(1)
          StopScoringTimer()
          ClearMessageQueue(constant.PLAYER_TWO)
          PhoneMessage(65, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
          DebugOut("*LoseConditions* - 11.")
        end
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          DebugOut("*LoseConditions* - 12.")
          FreezePlayer(0)
          StopScoringTimer()
          DeclareVictory(constant.ARMY_XYLVANIAN)
          ClearMessageQueue(constant.PLAYER_ONE)
          PhoneMessage(64, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
          SetNetworkMissionComplete(1, false, 131)
          SetNetworkMissionComplete(2, false, 131)
        end
        WaitFor(8)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          NetworkGameOver()
          do break end
          EndFrame()
        end
      end
    until missionend == 1 or 0 < vladsbigdrill
    repeat
      EndFrame()
    until vladsbigdrill == 1
    repeat
      repeat
        EndFrame()
      until inacutscene == false
      if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) and netvariable.player1.p1unitsdead03 == 0 then
        WaitFor(2)
        if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) and netvariable.player1.p1unitsdead03 == 0 then
          RenderOptionalHUDComponent(constant.PLAYER_ONE, true)
          netvariable.player1.p1unitsdead03 = 1
          DebugOut("*LoseConditions* - 13.")
        end
      end
      if netvariable.player1.p1unitsdead03 == 1 and netvariable.player2.p2unitsdead03 == 0 and p1nounits03 == 0 then
        PhoneMessage(76, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad)
        DebugOut("*LoseConditions* - 14.")
        p1nounits03 = 1
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) and netvariable.player2.p2unitsdead03 == 0 then
        WaitFor(2)
        if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) and netvariable.player2.p2unitsdead03 == 0 then
          RenderOptionalHUDComponent(constant.PLAYER_TWO, true)
          netvariable.player2.p2unitsdead03 = 1
          DebugOut("*LoseConditions* - 15.")
        end
      end
      if netvariable.player1.p1unitsdead03 == 0 and netvariable.player2.p2unitsdead03 == 1 and p2nounits03 == 0 then
        PhoneMessage(77, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
        DebugOut("*LoseConditions* - 16.")
        p2nounits03 = 1
      end
      if netvariable.player1.p1unitsdead03 == 1 and netvariable.player2.p2unitsdead03 == 1 then
        missionend = 1
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          FreezePlayer(1)
          StopScoringTimer()
          ClearMessageQueue(constant.PLAYER_TWO)
          PhoneMessage(65, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
          DebugOut("*LoseConditions* - 17.")
        end
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          DebugOut("*LoseConditions* - 18.")
          FreezePlayer(0)
          StopScoringTimer()
          DeclareVictory(constant.ARMY_XYLVANIAN)
          ClearMessageQueue(constant.PLAYER_ONE)
          PhoneMessage(64, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
          SetNetworkMissionComplete(1, false, 131)
          SetNetworkMissionComplete(2, false, 131)
        end
        WaitFor(8)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          NetworkGameOver()
          do break end
          EndFrame()
        end
      end
    until missionend == 1
    EndFrame()
  end
end
