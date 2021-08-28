function ObjectiveTundranMausoleum(owner)
  Despawn(Building.GorgisGhost)
  Despawn(Building.GorgiStatueRebuilt)
  local pillars = 0
  local gunships = 0
  local warningtext = 0
  local pillar01 = 0
  local pillar02 = 0
  local pillar03 = 0
  local pillar04 = 0
  local pillarobjective01 = 0
  local pillarobjective02 = 0
  local pillarobjective03 = 0
  local pillarobjective04 = 0
  local inareacheck01 = 0
  local inareacheck02 = 0
  local inareacheck03 = 0
  local inareacheck04 = 0
  local inareacheck05 = 0
  local inareacheck06 = 0
  WaitFor(1)
  repeat
    EndFrame()
  until mausoleumobjective == 1
  while missionend == 0 do
    if gunships == 0 then
      if IsReadyToRevive(Air_Vehicle.XylvanianGunship01) then
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XylvanianGunship01, 534, 130, 0, 10)
        DebugOut("*ObjectiveTundranMausoleum* - Sending X Gunship 01 to fight the player")
      end
      if IsReadyToRevive(Air_Vehicle.XylvanianGunship02) then
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XylvanianGunship02, 534, 130, 0, 10)
        DebugOut("*ObjectiveTundranMausoleum* - Sending X Gunship 02 to fight the player")
      end
      WaitFor(0.2)
      AttackTarget(Air_Vehicle.XylvanianGunship01, GetPlayerUnit(), constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.XylvanianGunship02, GetPlayerUnit(), constant.ORDER_NORMAL)
      gunships = 1
    end
    EndFrame()
    if pillar01 == 0 and GetState(Capture_Point.Pillar01) == flag.TYPE_TUNDRAN then
      Despawn(Building.Detonator01)
      pillars = pillars + 1
      pillar01 = 1
      DebugOut("*ObjectiveTundranMausoleum* - Pillar 01 has had its explosive destroyed")
      WaitFor(0.25)
      SetObjectiveData(Objective_Marker.MausoleumPillarObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    EndFrame()
    if pillar02 == 0 and GetState(Capture_Point.Pillar02) == flag.TYPE_TUNDRAN then
      Despawn(Building.Detonator02)
      pillars = pillars + 1
      pillar02 = 1
      DebugOut("*ObjectiveTundranMausoleum* - Pillar 02 has had its explosive destroyed")
      WaitFor(0.25)
      SetObjectiveData(Objective_Marker.MausoleumPillarObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    EndFrame()
    if pillar03 == 0 and GetState(Capture_Point.Pillar03) == flag.TYPE_TUNDRAN then
      Despawn(Building.Detonator03)
      pillars = pillars + 1
      pillar03 = 1
      DebugOut("*ObjectiveTundranMausoleum* - Pillar 03 has had its explosive destroyed")
      WaitFor(0.25)
      SetObjectiveData(Objective_Marker.MausoleumPillarObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    EndFrame()
    if pillar04 == 0 and GetState(Capture_Point.Pillar04) == flag.TYPE_TUNDRAN then
      Despawn(Building.Detonator04)
      pillars = pillars + 1
      pillar04 = 1
      DebugOut("*ObjectiveTundranMausoleum* - Pillar 04 has had its explosive destroyed")
      WaitFor(0.25)
      SetObjectiveData(Objective_Marker.MausoleumPillarObjectiveMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    EndFrame()
    if pillars == 1 and pillarobjective01 == 0 then
      PhoneMessage(98, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective.MausoleumPillarObjective00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.MausoleumPillarObjective01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      pillarobjective01 = 1
      DebugOut("*ObjectiveTundranMausoleum* - 1 explosive has been destroyed")
    end
    EndFrame()
    if pillars == 2 and pillarobjective02 == 0 then
      AttackTarget(Troop.XMausChainVet01, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XMausChainVet02, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XMausChainVet03, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XMausChainVet04, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      PhoneMessage(99, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective.MausoleumPillarObjective01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.MausoleumPillarObjective02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      pillarobjective02 = 1
      DebugOut("*ObjectiveTundranMausoleum* - 2 explosives have been destroyed")
    end
    EndFrame()
    if pillars == 3 and pillarobjective03 == 0 then
      PhoneMessage(100, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      SetObjectiveData(Objective.MausoleumPillarObjective02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.MausoleumPillarObjective03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      pillarobjective03 = 1
      DebugOut("*ObjectiveTundranMausoleum* - 3 explosives have been destroyed")
    end
    EndFrame()
    if pillars == 4 and pillarobjective04 == 0 then
      winmausoleumcutscene = 1
      ShowTimer(0)
      StopScoringTimer()
      missionend = 1
      FreezePlayer(constant.PLAYER_ONE)
      Kill(Reinforcements)
      Kill(powreinforcements)
      Kill(bazookacounter)
      Kill(helipadowner01)
      Kill(helipadowner02)
      SetObjectiveData(Objective.MausoleumPillarObjective03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.MausoleumPillarObjective04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.MausoleumPillarObjective04, constant.OBJECTIVE_DATA_STATE, 1)
      VictoryDance(constant.ARMY_TUNDRAN)
      VictoryDance(constant.ARMY_WF)
      DefeatLament(constant.ARMY_XYLVANIAN)
      ClearMessageQueue()
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      Teleport(Ground_Vehicle.TundranArtillery01, 545, 519, 210, 5)
      Teleport(Ground_Vehicle.TundranArtillery01, 593, 490, 210, 5)
      Teleport(Troop.TundranGrunt01, 606, 464, 310, 2)
      Teleport(Troop.TundranGrunt02, 613, 454, 310, 2)
      Teleport(Troop.TundranGrunt03, 606, 464, 310, 2)
      Teleport(Troop.TundranGrunt04, 613, 454, 310, 2)
      Teleport(Troop.TundranGrunt05, 606, 464, 310, 2)
      Teleport(Troop.TundranFlameVet01, 603, 443, 310, 2)
      Teleport(Troop.TundranFlameVet02, 606, 443, 310, 2)
      Teleport(Troop.TundranFlameVet03, 603, 443, 310, 2)
      Teleport(Troop.TundranFlameVet04, 606, 443, 310, 2)
      Teleport(Troop.TundranAntiAirVet01, 613, 454, 310, 2)
      Teleport(Troop.TundranAntiAirVet02, 606, 464, 310, 2)
      Teleport(Troop.TundranAntiAirVet03, 613, 454, 310, 2)
      Teleport(Troop.TundranAntiAirVet04, 606, 464, 310, 2)
      if follow == 1 then
        Teleport(Troop.WesternFrontierGrunt01, 613, 454, 310, 2)
        Teleport(Troop.WesternFrontierGrunt02, 606, 464, 310, 2)
        Teleport(Troop.WesternFrontierGrunt03, 613, 454, 310, 2)
        Teleport(Troop.WesternFrontierGrunt04, 606, 464, 310, 2)
        Teleport(Troop.WesternFrontierGrunt05, 613, 454, 310, 2)
        Teleport(Troop.WesternFrontierGrunt06, 606, 464, 310, 2)
        Teleport(Troop.WesternFrontierMortarVet01, 613, 454, 310, 2)
        Teleport(Troop.WesternFrontierMortarVet02, 606, 464, 310, 2)
        Teleport(Troop.WesternFrontierMortarVet03, 613, 454, 310, 2)
        Teleport(Troop.WesternFrontierMortarVet04, 606, 464, 310, 2)
        Teleport(Troop.WesternFrontierMortarVet05, 613, 454, 310, 2)
      end
      if bryancomplete == 1 then
        Teleport(Troop.Bryan, 606, 464, 310, 2)
      end
      if pow01 == 1 then
        Teleport(Troop.TundranBazookaVet01, 613, 454, 310, 2)
        Teleport(Troop.TundranBazookaVet02, 606, 464, 310, 2)
        Teleport(Troop.TundranBazookaVet03, 613, 454, 310, 2)
        Teleport(Troop.TundranBazookaVet04, 606, 464, 310, 2)
        Teleport(Troop.TundranBazookaVet05, 613, 454, 310, 2)
        Teleport(Troop.TundranBazookaVet06, 606, 464, 310, 2)
      end
      if helipad01 == 1 then
        Teleport(Troop.HelipadChopper01Grunt01, 613, 454, 310, 2)
        Teleport(Troop.HelipadChopper01Grunt02, 606, 464, 310, 2)
        Teleport(Troop.HelipadChopper01AA01, 613, 454, 310, 2)
        Teleport(Troop.HelipadChopper02AA01, 606, 464, 310, 2)
        Teleport(Troop.HelipadChopper02Flame01, 613, 454, 310, 2)
        Teleport(Troop.HelipadChopper02Flame02, 606, 464, 310, 2)
      end
      VictoryDance(constant.ARMY_TUNDRAN)
      VictoryDance(constant.ARMY_WF)
      DefeatLament(constant.ARMY_XYLVANIAN)
      Despawn(Building.XylvanianAATower06)
      Despawn(Building.XylvanianAATower07)
      Despawn(Building.XylvanianMGNest06)
      Despawn(Building.XylvanianMGNest07)
      Spawn(Troop.CutScenePlayer)
      ForceUnitTransfer(constant.PLAYER_ONE, Troop.CutScenePlayer, true, true)
      Despawn(Air_Vehicle.TundranGunship01)
      Despawn(Air_Vehicle.TundranGunship02)
      SetCamera(Camera.CutScene01)
      CameraSetTarget(Camera.CutScene01, Waypoint.CutScene01Waypoint03)
      CameraSetWaypoint(Camera.CutScene01, Waypoint.Entity330104262)
      Despawn(Building.GorgiStatueDestroyable)
      Spawn(Building.GorgiStatueRebuilt)
      StartOutro()
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      mausoleumcutscene = 1
      PhoneMessage(90, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      ClearMessageQueue()
      SetCamera(Camera.EndCamera)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(91, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      PhoneMessage(92, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
      PhoneMessage(93, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_ONE)
      WaitFor(20)
      CameraSetTarget(Camera.EndCamera, Waypoint.Entity330106358)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
      DeclareVictory(constant.ARMY_TUNDRAN)
      DeclareVictory(constant.ARMY_WF)
      cutscenefinished03 = 1
      DebugOut("*ObjectiveTundranMausoleum* - 6 explosives have been destroyed. MISSION COMPLETE!")
      break
    end
    EndFrame()
    if inareacheck01 == 0 and IsInArea(Troop.XMausChainVet01, Map_Zone.RightChannelTrigger) then
      GoToArea(Troop.XMausChainVet01, 331, 499, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XMausChainVet02, 331, 499, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XMausChainVet03, 331, 499, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XMausChainVet04, 331, 499, 10, 0, constant.ORDER_NORMAL)
      inareacheck02 = 0
      inareacheck01 = 1
    end
    EndFrame()
    if inareacheck02 == 0 and IsInArea(Troop.XMausChainVet01, Map_Zone.LeftChannelTrigger) then
      GoToArea(Troop.XMausChainVet01, 533, 320, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XMausChainVet02, 533, 320, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XMausChainVet03, 533, 320, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XMausChainVet04, 533, 320, 10, 0, constant.ORDER_NORMAL)
      inareacheck01 = 0
      inareacheck02 = 1
    end
    EndFrame()
    if inareacheck03 == 0 and 0 < NumItemsInArea(Map_Zone.SpawnXMausoleumUnits, flag.TYPE_TUNDRAN) then
      Spawn(Troop.XMausoleumGrunt01)
      Spawn(Troop.XMausoleumGrunt02)
      Spawn(Troop.XMausoleumGrunt03)
      Spawn(Troop.XMausoleumGrunt04)
      Spawn(Troop.XMausoleumGrunt05)
      Spawn(Troop.XMausoleumGrunt06)
      Spawn(Troop.XylvanianMortarVet01)
      Spawn(Troop.XylvanianMortarVet02)
      Spawn(Troop.XylvanianMortarVet03)
      Spawn(Troop.XylvanianMortarVet04)
      inareacheck03 = 1
    end
    EndFrame()
    if inareacheck04 == 0 and 1 < NumItemsInArea(Map_Zone.XLightTankTrigger, flag.TYPE_TUNDRAN) then
      AttackTarget(Ground_Vehicle.XylvanianLightTank03, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Ground_Vehicle.XylvanianLightTank04, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XylvanianBazookaVet15, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XylvanianBazookaVet16, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XylvanianBazookaVet16, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XylvanianBazookaVet18, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XylvanianBazookaVet19, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Troop.XylvanianBazookaVet15, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      inareacheck04 = 1
    end
    EndFrame()
    if inareacheck05 == 0 then
      if 0 < NumItemsInArea(Map_Zone.RightChannelTrigger, flag.TYPE_TUNDRAN) or 0 < NumItemsInArea(Map_Zone.LeftChannelTrigger, flag.TYPE_TUNDRAN) or 0 < NumItemsInArea(Map_Zone.MiddleChannelTrigger, flag.TYPE_TUNDRAN) then
        AttackTarget(Troop.XCounterMortarVet01, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
        AttackTarget(Troop.XCounterMortarVet02, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
        AttackTarget(Troop.XCounterMortarVet03, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      end
      inareacheck05 = 1
    end
    EndFrame()
    if GetTimeLeft() < 60 and warningtext == 0 and missionend == 0 and losecondition01 == 0 and losecondition02 == 0 then
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
      warningtext = 1
    end
    EndFrame()
    if 0 >= GetTimeLeft() and missionend == 0 and pillarobjective04 ~= 4 then
      WaitFor(1)
      if pillarobjective04 ~= 4 then
        DefeatLament(constant.ARMY_TUNDRAN)
        DefeatLament(constant.ARMY_WF)
        VictoryDance(constant.ARMY_XYLVANIAN)
        losemausoleumcutscene = 1
        SetObjectiveData(Objective_Marker.MausoleumPillarObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.MausoleumPillarObjectiveMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.MausoleumPillarObjectiveMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.MausoleumPillarObjectiveMarker04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        FreezePlayer(constant.PLAYER_ONE)
        Kill(Reinforcements)
        Kill(powreinforcements)
        Kill(bazookacounter)
        Kill(helipadowner01)
        Kill(helipadowner02)
        missionend = 1
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        Despawn(Troop.XylvanianMortarVet01)
        Despawn(Troop.XylvanianMortarVet02)
        Despawn(Troop.XylvanianMortarVet03)
        Despawn(Troop.XylvanianMortarVet04)
        Despawn(Troop.XMausoleumGrunt01)
        Despawn(Troop.XMausoleumGrunt02)
        Despawn(Troop.XMausoleumGrunt03)
        Despawn(Troop.XMausoleumGrunt04)
        Despawn(Troop.XMausoleumGrunt05)
        Despawn(Troop.XMausoleumGrunt06)
        SetCamera(Camera.FailMausoleumCutScene)
        StartOutro()
        CameraFade(constant.FADE_IN, constant.WAIT, 1)
        mausoleumcutscene = 1
        Kill(Building.Dynamite01)
        Kill(Building.Dynamite02)
        Kill(Building.Dynamite15)
        Kill(Building.Dynamite16)
        WaitFor(0.5)
        Kill(Building.Dynamite03)
        Kill(Building.Dynamite04)
        Kill(Building.Dynamite13)
        Kill(Building.Dynamite14)
        WaitFor(0.5)
        Kill(Building.Dynamite05)
        Kill(Building.Dynamite06)
        Kill(Building.Dynamite11)
        Kill(Building.Dynamite12)
        WaitFor(0.5)
        Kill(Building.Dynamite07)
        Kill(Building.Dynamite08)
        Kill(Building.Dynamite09)
        Kill(Building.Dynamite10)
        WaitFor(0.5)
        Despawn(Building.Cable01)
        Despawn(Building.Cable02)
        Despawn(Building.Cable03)
        Despawn(Building.Cable04)
        Despawn(Building.Cable05)
        Kill(Building.TundranMausoleum)
        ClearMessageQueue()
        PhoneMessage(55, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
        PhoneMessage(94, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
        WaitFor(2)
        Spawn(Building.GorgisGhost)
        DeclareVictory(constant.ARMY_XYLVANIAN)
        WaitFor(15)
        DebugOut("*ObjectiveTundranMausoleum* - The player has lost the mission as they have run out of time")
        cutscenefinished03 = 1
        break
      end
    end
    EndFrame()
  end
end
