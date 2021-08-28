function Gameflow(owner)
  local playerx = 0
  local playerz = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_SOLAR, true)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_TUNDRAN, true)
  end
  local solardeadtext = 0
  local tundrandeadtext = 0
  local loop = 0
  text = 1
  SolarEmpire = FriendlyArmy
  Tundra = FriendlyArmy
  AngloIsles = EnemyArmy
  MinLevelTime = 480
  MaxLevelTime = 960
  TechniqueObjectives = 2
  TechniqueWeighting = 10
  CoopSetup(Objective_Marker.Player_1, Objective_Marker.Player_2, 225)
  EndFrame()
  StartIntro()
  WaitFor(1)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutsceneskipped = 1
      DebugOut("Killed cutscene player1")
    end
    WaitFor(0.1)
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutsceneskipped = 1
      DebugOut("Killed cutscene player2")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        netvariable.player1.cutsceneskipped = 1
        netvariable.player2.cutsceneskipped = 1
        DebugOut(" In split screen - killed cutscene")
      end
      EndFrame()
    end
    EndFrame()
  until netvariable.player1.cutsceneskipped == 1 and netvariable.player2.cutsceneskipped == 1
  CleanupSkipCutscene()
  Kill(introcutscene)
  StartScoringTimer()
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_SOLAR, false)
    Spawn(Water_Vehicle.Cutscene_Transport)
    Teleport(Water_Vehicle.Cutscene_Transport, -555 - 60, 0, 5)
    Teleport(Water_Vehicle.AI_Battleship_1, 705, 195, 180, 5)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_TUNDRAN, false)
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    EndFrame()
    Teleport(Air_Vehicle.SE_Gunship_1, 745, -280, 0, 5)
    Spawn(Air_Vehicle.SE_Gunship_2)
    Spawn(Air_Vehicle.SE_Gunship_3)
    Spawn(Air_Vehicle.SE_Gunship_4)
    Despawn(Air_Vehicle.CS_Gunship_1)
    Despawn(Air_Vehicle.CS_Gunship_2)
    Despawn(Air_Vehicle.CS_Gunship_3)
    Despawn(Air_Vehicle.CS_Gunship_4)
    StoreSummaryMessage(1, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    StoreSummaryMessage(3, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    StoreSummaryMessage(5, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    SetCamera(Camera.P1_Camera)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    StoreSummaryMessage(2, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(4, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(6, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    SetCamera(Camera.P2_Camera)
  end
  EndFrame()
  ResetCommandBar()
  EndIntro()
  SetObjectiveData(Objective_Marker.Sea_Transport_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Sea_Transport_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  text = 0
  PhoneMessage(8, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
  PhoneMessage(9, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
  text = 0
  WaitFor(freezedelay)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    UnfreezePlayer(constant.PLAYER_ONE)
    Kill(Water_Vehicle.Cutscene_Transport)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    UnfreezePlayer(constant.PLAYER_TWO)
  end
  repeat
    if netvariable.player1.p1dead == 1 and netvariable.player2.p2dead == 1 then
      Kill(script1)
      Kill(script2)
      Kill(script3)
      missionend = 1
      DebugOut("player has lost all of their units")
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(58, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      PhoneMessage(59, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      WaitFor(10)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if IsNetworkHost() then
        SetNetworkMissionComplete(2, false, 131)
        SetNetworkMissionComplete(1, false, 131)
        NetworkGameOver()
      end
    end
    EndFrame()
    if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.deadtrans == 0 and IsDead(Water_Vehicle.SE_Naval_Transport) then
      DebugOut("1 Sea Transport is Dead")
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      DebugOut("Transport 1 is dead")
      SetObjectiveData(Objective_Marker.Sea_Transport_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        netvariable.player1.deadtrans = 1
      end
    elseif IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.deadtrans == 0 and IsDead(Water_Vehicle.SE_Naval_Transport_2) then
      DebugOut("1 Sea Transport is Dead")
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      DebugOut("Transport 2 is dead")
      SetObjectiveData(Objective_Marker.Sea_Transport_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      netvariable.player1.deadtrans = 2
    elseif IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.deadtrans == 1 and netvariable.player2.deadtrans == 0 then
      DebugOut("1 Sea Transport is Dead")
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_TWO)
      DebugOut("Transport 1 is dead")
      SetObjectiveData(Objective_Marker.Sea_Transport_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      netvariable.player2.deadtrans = 1
    elseif IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player1.deadtrans == 2 and netvariable.player2.deadtrans == 0 then
      DebugOut("1 Sea Transport is Dead")
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(11, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_TWO)
      DebugOut("Transport 2 is dead")
      SetObjectiveData(Objective_Marker.Sea_Transport_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      netvariable.player2.deadtrans = 1
    elseif 0 < netvariable.player1.deadtrans and IsDead(Water_Vehicle.SE_Naval_Transport) and IsDead(Water_Vehicle.SE_Naval_Transport_2) then
      SetObjectiveData(Objective_Marker.Sea_Transport_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.Sea_Transport_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      Kill(script1)
      Kill(script2)
      Kill(script3)
      missionend = 1
      DebugOut("both sea transports dead")
      DeclareVictory(constant.ARMY_ANGLO)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessage(61, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      PhoneMessage(62, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      WaitFor(11)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      if IsNetworkHost() then
        SetNetworkMissionComplete(2, false, 165)
        SetNetworkMissionComplete(1, false, 165)
        NetworkGameOver()
      end
    end
    EndFrame()
    if netvariable.player1.p1dead == 1 and netvariable.player2.p2dead == 0 and text == 0 then
      DebugOut("player 1 killed")
      PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      PhoneMessage(53, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      text = 1
    end
    EndFrame()
    if netvariable.player1.p1dead == 0 and netvariable.player2.p2dead == 1 and text == 0 then
      DebugOut("player 2 killed")
      PhoneMessage(55, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      PhoneMessage(54, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
      text = 1
    end
    EndFrame()
  until missionend == 1 or netvariable.player1.docks == 1
  if missionend == 0 then
    DebugOut("Naval Transport Objective Complete, beginning HQ Win / Lose Conditions")
  else
    return
  end
  text = 0
  WaitFor(2)
  SetObjectiveData(Objective.PO_Sea_Transports_02, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PO_Sea_Transports_01, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.PO_Sea_Transports_00, constant.OBJECTIVE_DATA_STATE, 1)
  Kill(scriptoob)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    FreezePlayer(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    FreezePlayer(constant.PLAYER_TWO)
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  PauseTimerActive = 1
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_SOLAR, true)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_TUNDRAN, true)
    if GetObjectXPosition(GetPlayerUnit(constant.PLAYER_TWO)) > 470 and GetObjectZPosition(GetPlayerUnit(constant.PLAYER_TWO)) < 570 then
      if IsDead(Water_Vehicle.T_Battleship) == false then
        Teleport(Water_Vehicle.T_Battleship, 620, 430, 0, 35)
      end
      if IsDead(Water_Vehicle.T_Battleship_2) == false then
        Teleport(Water_Vehicle.T_Battleship_2, 735, 430, 0, 35)
      end
    end
  end
  EndFrame()
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.SE_Gunship_1 then
      Teleport(Air_Vehicle.SE_Gunship_1, 625, 430, 0, 5)
    end
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.SE_Gunship_2 then
      Teleport(Air_Vehicle.SE_Gunship_2, 658, 430, 0, 5)
    end
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.SE_Gunship_3 then
      Teleport(Air_Vehicle.SE_Gunship_3, 692, 430, 0, 5)
    end
    if GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.SE_Gunship_4 then
      Teleport(Air_Vehicle.SE_Gunship_4, 725, 430, 0, 5)
    end
    EndFrame()
    if IsDead(Air_Vehicle.SE_Gunship_1) == false or IsDead(Air_Vehicle.SE_Gunship_2) == false or IsDead(Air_Vehicle.SE_Gunship_3) == false or IsDead(Air_Vehicle.SE_Gunship_4) == false then
      playerx = GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE))
      playerz = GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE))
      Teleport(GetPlayerUnit(constant.PLAYER_ONE), 780, -195, 0, 5)
    end
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    if IsDead(Water_Vehicle.T_Battleship) == false or IsDead(Water_Vehicle.T_Battleship_2) == false then
      playerx = GetObjectXPosition(GetPlayerUnit(constant.PLAYER_TWO))
      playerz = GetObjectZPosition(GetPlayerUnit(constant.PLAYER_TWO))
      Teleport(GetPlayerUnit(constant.PLAYER_TWO), 780, -195, 0, 5)
    end
    EndFrame()
  end
  if IsNetworkHost() then
    Spawn(Air_Vehicle.AI_Bomber_5)
    Kill(Water_Vehicle.AI_Battleship_1, false)
    Kill(Water_Vehicle.AI_Battleship_2, false)
    Kill(Water_Vehicle.AI_Battleship_3, false)
    Despawn(Ground_Vehicle.AI_Artillery_1)
    netvariable.player1.docks = 2
  end
  DebugOut("Cutscene Begins")
  repeat
    EndFrame()
  until netvariable.player1.cutsceneskipped == 0 and netvariable.player2.cutsceneskipped == 0
  WaitFor(2.5)
  PrepareSkipCutscene()
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and CheckSkipCutscene() then
      netvariable.player1.cutsceneskippedmidtro = 1
      DebugOut("Killed cutscene player1")
    end
    WaitFor(0.1)
    if IsNetworkPlayer(constant.PLAYER_TWO) and CheckSkipCutscene() then
      netvariable.player2.cutsceneskippedmidtro = 1
      DebugOut("Killed cutscene player2")
    end
    if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
      if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
        netvariable.player1.cutsceneskippedmidtro = 1
        netvariable.player2.cutsceneskippedmidtro = 1
        DebugOut(" In split screen - killed cutscene")
      end
      EndFrame()
    end
    EndFrame()
  until netvariable.player1.cutsceneskippedmidtro == 1 and netvariable.player2.cutsceneskippedmidtro == 1
  Kill(midtrocutscene)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  CleanupSkipCutscene()
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Despawn(Building.SF2_Tower_1)
    Despawn(Building.SF2_Tower_2)
    Despawn(Building.SF2_Tower_3)
    Despawn(Building.SF3_Tower_1)
    Despawn(Building.SF3_Tower_2)
    Despawn(Building.SF3_Tower_3)
    SetActive(Building.AI_Sea_Fort_2, constant.INACTIVE)
    SetActive(Building.AI_Sea_Fort_3, constant.INACTIVE)
    Despawn(Troop.NT1_Troop_1)
    Despawn(Troop.NT1_Troop_2)
    Despawn(Troop.NT1_Troop_3)
    Despawn(Troop.NT1_Troop_4)
    Despawn(Troop.NT2_Troop_1)
    Despawn(Troop.NT2_Troop_2)
    Despawn(Troop.NT2_Troop_3)
    Despawn(Troop.NT2_Troop_4)
    Despawn(Troop.NT1_Troop_5)
    Despawn(Troop.NT1_Troop_6)
    Despawn(Troop.NT1_Troop_7)
    Despawn(Troop.NT1_Troop_8)
    Despawn(Troop.NT2_Troop_5)
    Despawn(Troop.NT2_Troop_6)
    Despawn(Troop.NT2_Troop_7)
    Despawn(Troop.NT2_Troop_8)
    if IsDead(Water_Vehicle.SE_Naval_Transport) == false then
      Despawn(Water_Vehicle.SE_Naval_Transport)
      Spawn(Building.Solar_Transport_East)
    end
    if IsDead(Water_Vehicle.SE_Naval_Transport_2) == false then
      Despawn(Water_Vehicle.SE_Naval_Transport_2)
      Spawn(Building.Solar_Transport_West)
    end
    Spawn(Troop.AI_Bridge_3)
    Despawn(Ground_Vehicle.CS_AI_Light_Tank_1)
    Spawn(Ground_Vehicle.AI_Artillery_1)
    if GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) > 470 and GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) < 570 then
      Teleport(Air_Vehicle.SE_Gunship_2, 630, 430, 0, 5)
      Teleport(Air_Vehicle.SE_Gunship_1, 668, 430, 0, 5)
      Teleport(Air_Vehicle.SE_Gunship_3, 706, 430, 0, 5)
      Teleport(Air_Vehicle.SE_Gunship_4, 745, 430, 0, 5)
    end
    netvariable.player1.docks = 3
    SetCamera(Camera.P1_Camera)
    StoreSummaryMessage(18, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    StoreSummaryMessage(116, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    StoreSummaryMessage(118, constant.ARMY_SOLAR, SpriteID.CO_SE_Aqira_Happy)
    Teleport(GetPlayerUnit(constant.PLAYER_ONE), playerx, playerz, 0, 5)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetCamera(Camera.P2_Camera)
    StoreSummaryMessage(19, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(117, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    StoreSummaryMessage(119, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nova_Happy)
    Teleport(GetPlayerUnit(constant.PLAYER_TWO), playerx, playerz, 0, 5)
  end
  SetObjectiveData(Objective.PO_HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.HQ_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  PauseTimerActive = 0
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SetInvulnerable(flag.TYPE_SOLAR, false)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SetInvulnerable(flag.TYPE_TUNDRAN, false)
  end
  text = 0
  PhoneMessageWithObjective(14, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, 0, constant.NEW_SECONDARY_OBJECTIVE)
  PhoneMessageWithObjective(15, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO, 0, constant.NEW_SECONDARY_OBJECTIVE)
  WaitFor(freezedelay)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    UnfreezePlayer(constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    UnfreezePlayer(constant.PLAYER_TWO)
    while missionend == 0 do
      if IsNetworkHost() and (GetState(Capture_Point.AI_HQ_CP) == flag.TYPE_SOLAR or GetState(Capture_Point.AI_HQ_CP) == flag.TYPE_TUNDRAN or GetInstallationOwner(Strategic_Installation.AI_HQ_SI) == constant.ARMY_SOLAR or GetInstallationOwner(Strategic_Installation.AI_HQ_SI) == constant.ARMY_TUNDRAN) then
        netvariable.player1.winmission = 1
      end
      EndFrame()
      if netvariable.player1.winmission == 1 then
        Kill(script1)
        Kill(script2)
        Kill(script3)
        ClearMessageQueue(constant.PLAYER_ONE)
        ClearMessageQueue(constant.PLAYER_TWO)
        missionend = 1
        DebugOut("players have completed the level")
        SetObjectiveData(Objective.PO_HQ, constant.OBJECTIVE_DATA_STATE, 1)
        DeclareVictory(constant.ARMY_SOLAR)
        StopScoringTimer()
        StartOutro()
        if IsNetworkPlayer(constant.PLAYER_ONE) then
          FreezePlayer(constant.PLAYER_ONE)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          FreezePlayer(constant.PLAYER_TWO)
        end
        ClearMessageQueue(constant.PLAYER_ONE)
        ClearMessageQueue(constant.PLAYER_TWO)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        WinMissionCOOP()
        if IsNetworkHost() then
          Teleport(Air_Vehicle.SE_Gunship_1, -570, 505, 0, 5)
          Teleport(Air_Vehicle.SE_Gunship_2, -550, 505, 0, 5)
          Teleport(Air_Vehicle.SE_Gunship_3, -530, 505, 0, 5)
          Teleport(Air_Vehicle.SE_Gunship_4, -510, 505, 0, 5)
          SetCamera(Camera.P1_Outro_Camera, constant.PLAYER_ONE)
          CameraSetFOV(Camera.P1_Outro_Camera, 75, constant.IMMEDIATE, 25, constant.NO_WAIT)
        end
        if IsNetworkPlayer(constant.PLAYER_TWO) then
          SetCamera(Camera.P2_Outro_Camera, constant.PLAYER_TWO)
          CameraSetFOV(Camera.P2_Outro_Camera, 75, constant.IMMEDIATE, 25, constant.NO_WAIT)
        end
        CameraFade(constant.FADE_IN, constant.WAIT, 1)
        WaitFor(1)
        PhoneMessage(46, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE)
        PhoneMessage(47, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_TWO)
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
          if IsNetworkPlayer(constant.PLAYER_ONE) == true and IsNetworkPlayer(constant.PLAYER_TWO) == true then
            if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) then
              netvariable.player1.cutsceneskippedoutro = 1
              netvariable.player2.cutsceneskippedoutro = 1
              DebugOut(" In split screen - killed cutscene")
            end
            EndFrame()
          end
          if IsNetworkPlayer(constant.PLAYER_ONE) and GetTime() > timer + 10 then
            DebugOut(" Cutscene has played through, quitting mission")
            netvariable.player1.cutsceneskippedoutro = 1
          end
          if IsNetworkPlayer(constant.PLAYER_TWO) and GetTime() > timer + 10 then
            DebugOut(" Cutscene has played through, quitting mission")
            netvariable.player2.cutsceneskippedoutro = 1
          end
          EndFrame()
        until netvariable.player1.cutsceneskippedoutro == 1 and netvariable.player2.cutsceneskippedoutro == 1
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        EndOutro()
        if IsNetworkHost() then
          SetNetworkMissionComplete(2, true, 1)
          SetNetworkMissionComplete(1, true, 1)
          NetworkGameOver()
          do break end
          EndFrame()
          if netvariable.player1.p1infdead == 1 and netvariable.player2.p2infdead == 1 then
            WaitFor(2)
            if CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and CountRemainingPlayerTroops(constant.PLAYER_TWO) == 0 then
              missionend = 1
              DebugOut("Both players has lost all of their infantry")
              DeclareVictory(constant.ARMY_ANGLO)
              ClearMessageQueue(constant.PLAYER_ONE)
              ClearMessageQueue(constant.PLAYER_TWO)
              PhoneMessage(49, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
              PhoneMessage(50, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
              WaitFor(10)
              CameraFade(constant.FADE_OUT, constant.WAIT, 1)
              if IsNetworkHost() then
                SetNetworkMissionComplete(2, false, 133)
                SetNetworkMissionComplete(1, false, 133)
                NetworkGameOver()
              end
            end
          end
          EndFrame()
          if 0 < netvariable.player1.p1dead and 0 < netvariable.player2.p2dead then
            WaitFor(2)
            if 0 < netvariable.player1.p1dead and 0 < netvariable.player2.p2dead then
              Kill(script1)
              Kill(script2)
              Kill(script3)
              missionend = 1
              DebugOut("player has lost all of their units")
              DeclareVictory(constant.ARMY_ANGLO)
              ClearMessageQueue(constant.PLAYER_ONE)
              ClearMessageQueue(constant.PLAYER_TWO)
              PhoneMessage(58, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
              PhoneMessage(59, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
              WaitFor(10)
              CameraFade(constant.FADE_OUT, constant.WAIT, 1)
              if IsNetworkHost() then
                SetNetworkMissionComplete(2, false, 131)
                SetNetworkMissionComplete(1, false, 131)
                NetworkGameOver()
              end
            end
          end
          EndFrame()
          if netvariable.player1.p1dead == 1 and netvariable.player2.p2dead == 0 and netvariable.player1.wait == 0 then
            WaitFor(2)
            if (netvariable.player1.POWs == 0 or netvariable.player1.POW2 == 0) and text == 0 and netvariable.player1.p1dead == 1 then
              DebugOut("player 1 killed, waiting for reinforcements")
              PhoneMessage(52, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
              PhoneMessage(53, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
              text = 1
            elseif netvariable.player1.POWs == 1 and netvariable.player1.POW2 == 1 and solardeadtext == 0 and netvariable.player1.p1dead == 1 then
              DebugOut("player 1 killed, no more reinforcements")
              PhoneMessage(56, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
              PhoneMessage(56, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_TWO)
              solardeadtext = 1
            end
          end
          EndFrame()
          if netvariable.player1.p1dead == 0 and netvariable.player2.p2dead == 1 and netvariable.player1.wait == 0 then
            WaitFor(2)
            if (netvariable.player1.POWs == 0 or netvariable.player1.POW2 == 0) and text == 0 and netvariable.player2.p2dead == 1 then
              DebugOut("player 2 killed, waiting for reinforcements")
              PhoneMessage(55, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
              PhoneMessage(54, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
              text = 1
            elseif netvariable.player1.POWs == 1 and netvariable.player1.POW2 == 1 and tundrandeadtext == 0 and netvariable.player2.p2dead == 1 then
              DebugOut("player 2 killed, no more reinforcements")
              PhoneMessage(57, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
              PhoneMessage(57, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_TWO)
              tundrandeadtext = 1
            end
          end
          EndFrame()
        end
      end
    end
  end
end
