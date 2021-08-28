function Gameflow(owner)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0094)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0133)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0134)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0175)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0174)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0173)
  AddToGroup(Unit_Group.Player_Army, Troop.Tmissile0001)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0131)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0132)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0120)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0176)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0177)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity0178)
  AddToGroup(Unit_Group.Player_Army, Troop.Entity260027108)
  WesternFrontier = FriendlyArmy
  Tundra = FriendlyArmy
  Xylvania = EnemyArmy
  MinLevelTime = 360
  MaxLevelTime = 720
  TechniqueObjectives = 3
  TechniqueWeighting = 5
  Despawn(Troop.Entity0127)
  Despawn(Troop.Entity0128)
  Despawn(Troop.Entity0179)
  Despawn(Troop.Entity0180)
  Despawn(Troop.Entity0183)
  WaitFor(1)
  repeat
    if GetState(Capture_Point.north) == flag.TYPE_WFRONTIER or GetState(Capture_Point.north) == flag.TYPE_TUNDRAN or GetInstallationOwner(Strategic_Installation.X_HQ) == constant.ARMY_WF or GetInstallationOwner(Strategic_Installation.X_HQ) == constant.ARMY_TUNDRAN then
      if IsNetworkHost() then
        netvariable.player1.missioncomplete = 1
      end
      DeclareVictory(constant.ARMY_TUNDRAN)
      DeclareVictory(constant.ARMY_WF)
      DebugOut("Mission Complete")
      missionend = 1
      SetObjectiveData(Objective.Base, constant.OBJECTIVE_DATA_STATE, 1)
      StopScoringTimer()
      StartOutro()
      FreezePlayer(constant.PLAYER_ONE)
      FreezePlayer(constant.PLAYER_TWO)
      WaitFor(1)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        if IsDead(Air_Vehicle.Xtransport0001) == false then
          Despawn(Air_Vehicle.Xtransport0001)
        end
        if IsDead(Air_Vehicle.Xtransport0002) == false then
          Despawn(Air_Vehicle.Xtransport0002)
        end
        SetCamera(Camera.P1_Outro_Camera, constant.PLAYER_ONE)
        CameraSetFOV(Camera.P1_Outro_Camera, 70, constant.IMMEDIATE, 1, constant.NO_WAIT)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetCamera(Camera.P2_Outro_Camera, constant.PLAYER_TWO)
        CameraSetFOV(Camera.P2_Outro_Camera, 70, constant.IMMEDIATE, 1, constant.NO_WAIT)
      end
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        DefeatLament(constant.ARMY_XYLVANIAN, false)
      end
      ListScoringUnits()
      WinMissionCOOP()
      WaitFor(1)
      PhoneMessage(12, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE)
      PhoneMessage(13, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE)
      PhoneMessage(14, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO)
      PhoneMessage(15, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO)
      local timer = GetTime()
      PrepareSkipCutscene()
      repeat
        if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
          netvariable.player1.cutsceneskippedoutro = 1
          DebugOut("Killed cutscene player1")
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
          netvariable.player2.cutsceneskippedoutro = 1
          DebugOut("Killed cutscene player2")
        end
        if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
          netvariable.player1.cutsceneskippedoutro = 1
          netvariable.player2.cutsceneskippedoutro = 1
          DebugOut(" In split screen - killed cutscene")
        end
        if IsNetworkPlayer(constant.PLAYER_ONE) and GetTime() > timer + 15 then
          DebugOut(" Cutscene has played through, quitting mission")
          netvariable.player1.cutsceneskippedoutro = 1
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) and GetTime() > timer + 15 then
          DebugOut(" Cutscene has played through, quitting mission")
          netvariable.player2.cutsceneskippedoutro = 1
        end
        EndFrame()
      until netvariable.player1.cutsceneskippedoutro == 1 and netvariable.player2.cutsceneskippedoutro == 1
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      EndOutro()
      DebugOut("Network Game is over")
      if IsNetworkHost() then
        SetNetworkMissionComplete(2, true, 1)
        SetNetworkMissionComplete(1, true, 1)
        NetworkGameOver()
      end
    elseif netvariable.player1.p1infdead == 1 and netvariable.player2.p2infdead == 1 and powsfreed == 2 then
      WaitFor(1)
      if CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and CountRemainingPlayerTroops(constant.PLAYER_TWO) == 0 and netvariable.player1.wait == 0 then
        DebugOut("Mission Failed - No infantry left")
        missionend = 1
        DeclareVictory(constant.ARMY_XYLVANIAN)
        ClearMessageQueue(constant.PLAYER_ONE)
        ClearMessageQueue(constant.PLAYER_TWO)
        PhoneMessage(8, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Sad, constant.PLAYER_ONE)
        PhoneMessage(7, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Sad, constant.PLAYER_TWO)
        WaitFor(13)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        DebugOut("Network game is over!")
        if IsNetworkHost() then
          SetNetworkMissionComplete(2, false, 133)
          SetNetworkMissionComplete(1, false, 133)
          EndFrame()
          NetworkGameOver()
        end
      end
    elseif netvariable.player1.p1dead == 1 and netvariable.player2.p2dead == 1 and powsfreed ~= 1 then
      WaitFor(1)
      if CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and CountRemainingPlayerTroops(constant.PLAYER_TWO) == 0 and netvariable.player1.wait == 0 then
        DebugOut("Mission Failed  - No units left")
        missionend = 1
        DeclareVictory(constant.ARMY_XYLVANIAN)
        ClearMessageQueue(constant.PLAYER_ONE)
        ClearMessageQueue(constant.PLAYER_TWO)
        PhoneMessage(8, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Sad, constant.PLAYER_ONE)
        PhoneMessage(7, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nelly_Sad, constant.PLAYER_TWO)
        WaitFor(13)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        DebugOut("Network game is over!")
        if IsNetworkHost() then
          SetNetworkMissionComplete(2, false, 133)
          SetNetworkMissionComplete(1, false, 133)
          EndFrame()
          NetworkGameOver()
        end
      end
    elseif netvariable.player1.p1dead == 1 and Player1IsDead == 0 and Player2IsDead == 0 then
      Player1IsDead = 1
      DebugOut("Player One is DEAD!")
      PhoneMessage(50, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad, constant.PLAYER_ONE)
      PhoneMessage(50, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Sad, constant.PLAYER_TWO)
    elseif netvariable.player2.p2dead == 1 and Player2IsDead == 0 and Player1IsDead == 0 then
      Player2IsDead = 1
      DebugOut("Player TWO is DEAD!")
      PhoneMessage(55, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nelly_Sad, constant.PLAYER_ONE)
      PhoneMessage(55, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nelly_Sad, constant.PLAYER_TWO)
    else
      EndFrame()
    end
  until missionend == 1
end
