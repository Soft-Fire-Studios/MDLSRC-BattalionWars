function Ice_Station_X_Cutscene04(owner)
  Cutscene04Dead = owner
  local VladIceStationHealth = 0
  local FreezingWaterWarning = 0
  local BomberInDangerWarning = 0
  local BattlestationWarning = 0
  local BattlestationDeath = 0
  local FPS = 0
  Despawn(Troop.Cutscene)
  Despawn(Air_Vehicle.Outro_XN_AirTransport01)
  Despawn(Air_Vehicle.Outro_XN_AirTransport02)
  Despawn(Air_Vehicle.Outro_XN_AirTransport03)
  repeat
    if (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Framerate01) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Framerate02) or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Framerate03)) and FPS == 0 and PauseTimerActive == 0 then
      SetUnitShadowDistance(10)
      SetCharacterAnimUpdateLOD(true)
      FPS = 1
    end
    EndFrame()
    if (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Framerate01) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Framerate02) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Framerate03) == false or PauseTimerActive == 1) and FPS == 1 then
      SetUnitShadowDistance(75)
      SetCharacterAnimUpdateLOD(false)
      FPS = 0
    end
    EndFrame()
    if (IsInRange(Air_Vehicle.AI_Bomber01, Ground_Vehicle.XN_AAVehicle01, 200) or IsInRange(Air_Vehicle.AI_Bomber02, Ground_Vehicle.XN_AAVehicle01, 200)) and IsDead(Ground_Vehicle.XN_AAVehicle01) == false and BomberInDangerWarning == 0 then
      ClearMessageQueue()
      PhoneMessage(92, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      BomberInDangerWarning = 1
    end
    EndFrame()
    if (IsInRange(Air_Vehicle.AI_Bomber01, Ground_Vehicle.XN_AAVehicle02, 200) or IsInRange(Air_Vehicle.AI_Bomber02, Ground_Vehicle.XN_AAVehicle02, 200)) and IsDead(Ground_Vehicle.XN_AAVehicle02) == false and BomberInDangerWarning == 0 then
      ClearMessageQueue()
      PhoneMessage(92, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      BomberInDangerWarning = 1
    end
    EndFrame()
    if (IsInRange(Air_Vehicle.AI_Bomber01, Ground_Vehicle.XN_AAVehicle03, 200) or IsInRange(Air_Vehicle.AI_Bomber02, Ground_Vehicle.XN_AAVehicle03, 200)) and IsDead(Ground_Vehicle.XN_AAVehicle03) == false and BomberInDangerWarning == 0 then
      ClearMessageQueue()
      PhoneMessage(92, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      BomberInDangerWarning = 1
    end
    EndFrame()
    if (IsInArea(Troop.WF_AntiArmour01, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_AntiArmour02, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_AntiArmour03, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_AntiArmour04, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Hose01, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Hose02, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Hose03, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Hose04, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Grunt07, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Grunt08, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Grunt09, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Grunt10, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Grunt11, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt01, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt02, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_Grunt03, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_AntiArmour01, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_AntiArmour02, Map_Zone.FreezingWater01) or IsInArea(Troop.TT_AntiArmour03, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Grunt01, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Grunt02, Map_Zone.FreezingWater01) or IsInArea(Troop.WF_Grunt03, Map_Zone.FreezingWater01)) and FreezingWaterWarning == 0 then
      ClearMessageQueue()
      PhoneMessage(91, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      FreezingWaterWarning = 1
    end
    EndFrame()
    if GetHealthPercent(Building.XN_IceStationX) < 50 and VladIceStationHealth == 0 then
      ClearMessageQueue()
      PhoneMessage(60, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      VladIceStationHealth = 1
    end
    EndFrame()
    if GetActionState(Ground_Vehicle.XN_Battlestation01) == constant.ACTION_STATE_ATTACK and BattlestationWarning == 0 then
      ClearMessageQueue()
      PhoneMessage(61, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
      PhoneMessage(62, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_ONE)
      BattlestationWarning = 1
    end
    EndFrame()
    if IsDead(Ground_Vehicle.XN_Battlestation01) and BattlestationDeath == 0 then
      ClearMessageQueue()
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE)
      BattlestationDeath = 1
    end
    EndFrame()
  until IsDead(Building.XN_IceStationX)
  Kill(CheckUnitsAliveScript)
  SetInvulnerable(flag.TYPE_TUNDRAN, 1)
  SetInvulnerable(flag.TYPE_XYLVANIAN, 1)
  if GetPlayerUnit() == Air_Vehicle.AI_Bomber01 or GetPlayerUnit() == Air_Vehicle.AI_Bomber02 then
    EnableControllerItem(constant.CONTROL_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_HUD_TRANSFER, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_TOGGLE_MAP, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PAUSE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_CALL, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_SEND, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_DISMISS, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_FIRE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_JUMP, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT_TYPE_ALT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PREV_UNIT_TYPE, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_NEXT_UNIT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_PREV_UNIT, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_LOCAL_CALL, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_ROLL, 0, constant.PLAYER_ONE)
    EnableControllerItem(constant.CONTROL_GLOBAL_TOGGLE, 0, constant.PLAYER_ONE)
    SetHudState(constant.PLAYER_ONE, constant.HUD_FUNCTIONINDICATOR, constant.HUD_ITEM_OFF)
  else
    FreezePlayer(constant.PLAYER_ONE)
    VictoryDance(constant.ARMY_XYLVANIAN, true)
  end
  SetObjectiveData(Objective_Marker.XN_IceStationX, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Destroy_IceStationX, constant.OBJECTIVE_DATA_STATE, 1)
  StopScoringTimer()
  ClearMessageQueue()
  PhoneMessageWithObjective(43, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Prison_Ubel_Sad, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetUnitShadowDistance(75)
  SetCharacterAnimUpdateLOD(false)
  Spawn(Troop.Cutscene)
  SetUnitInvulnerable(Troop.Cutscene, true)
  ForceUnitTransfer(constant.PLAYER_ONE, Troop.Cutscene, 1, 1)
  repeat
    EndFrame()
  until GetPlayerUnit(constant.PLAYER_ONE) == Troop.Cutscene
  if IsDead(Water_Vehicle.XN_Battleship01) == false then
    Despawn(Water_Vehicle.XN_Battleship01)
  end
  if IsDead(Water_Vehicle.XN_Battleship02) == false then
    Despawn(Water_Vehicle.XN_Battleship02)
  end
  if IsDead(Ground_Vehicle.XN_AAVehicle01) == false then
    Despawn(Ground_Vehicle.XN_AAVehicle01)
  end
  if IsDead(Ground_Vehicle.XN_AAVehicle02) == false then
    Despawn(Ground_Vehicle.XN_AAVehicle02)
  end
  if IsDead(Ground_Vehicle.XN_AAVehicle03) == false then
    Despawn(Ground_Vehicle.XN_AAVehicle03)
  end
  if IsDead(Troop.XN_Grunt17) == false then
    Despawn(Troop.XN_Grunt17)
  end
  if IsDead(Troop.XN_Grunt18) == false then
    Despawn(Troop.XN_Grunt18)
  end
  if IsDead(Troop.XN_Grunt19) == false then
    Despawn(Troop.XN_Grunt19)
  end
  if IsDead(Troop.XN_Grunt20) == false then
    Despawn(Troop.XN_Grunt20)
  end
  if IsDead(Troop.XN_Chain15) == false then
    Despawn(Troop.XN_Chain15)
  end
  if IsDead(Troop.XN_Chain16) == false then
    Despawn(Troop.XN_Chain16)
  end
  if IsDead(Troop.XN_AntiArmour26) == false then
    Despawn(Troop.XN_AntiArmour26)
  end
  if IsDead(Troop.XN_AntiArmour27) == false then
    Despawn(Troop.XN_AntiArmour27)
  end
  if IsDead(Troop.WF_Grunt01) == false then
    SetActive(Troop.WF_Grunt01, constant.ACTIVE)
    EnableWeapon(Troop.WF_Grunt01, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Grunt01)
    Teleport(Troop.WF_Grunt01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Grunt01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Grunt02) == false then
    Despawn(Troop.WF_Grunt02)
  end
  if IsDead(Troop.WF_Grunt03) == false then
    SetActive(Troop.WF_Grunt03, constant.ACTIVE)
    EnableWeapon(Troop.WF_Grunt03, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Grunt03)
    Teleport(Troop.WF_Grunt03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Grunt03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Grunt07) == false then
    SetActive(Troop.WF_Grunt07, constant.ACTIVE)
    EnableWeapon(Troop.WF_Grunt07, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Grunt07)
    Teleport(Troop.WF_Grunt07, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Grunt07, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Grunt08) == false then
    SetActive(Troop.WF_Grunt08, constant.ACTIVE)
    EnableWeapon(Troop.WF_Grunt08, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Grunt08)
    Teleport(Troop.WF_Grunt08, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Grunt08, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Grunt09) == false then
    SetActive(Troop.WF_Grunt09, constant.ACTIVE)
    EnableWeapon(Troop.WF_Grunt09, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Grunt09)
    Teleport(Troop.WF_Grunt09, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Grunt09, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Grunt10) == false then
    SetActive(Troop.WF_Grunt10, constant.ACTIVE)
    EnableWeapon(Troop.WF_Grunt10, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Grunt10)
    Teleport(Troop.WF_Grunt10, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Grunt10, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Hose01) == false then
    SetActive(Troop.WF_Hose01, constant.ACTIVE)
    EnableWeapon(Troop.WF_Hose01, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Hose01)
    Teleport(Troop.WF_Hose01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Hose01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Hose02) == false then
    SetActive(Troop.WF_Hose02, constant.ACTIVE)
    EnableWeapon(Troop.WF_Hose02, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Hose02)
    Teleport(Troop.WF_Hose02, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Hose02, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Hose03) == false then
    SetActive(Troop.WF_Hose03, constant.ACTIVE)
    EnableWeapon(Troop.WF_Hose03, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Hose03)
    Teleport(Troop.WF_Hose03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Hose03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_Hose04) == false then
    SetActive(Troop.WF_Hose04, constant.ACTIVE)
    EnableWeapon(Troop.WF_Hose04, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_Hose04)
    Teleport(Troop.WF_Hose04, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_Hose04, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_AntiArmour01) == false then
    SetActive(Troop.WF_AntiArmour01, constant.ACTIVE)
    EnableWeapon(Troop.WF_AntiArmour01, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_AntiArmour01)
    Teleport(Troop.WF_AntiArmour01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_AntiArmour01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_AntiArmour02) == false then
    SetActive(Troop.WF_AntiArmour02, constant.ACTIVE)
    EnableWeapon(Troop.WF_AntiArmour02, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_AntiArmour02)
    Teleport(Troop.WF_AntiArmour02, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_AntiArmour02, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_AntiArmour03) == false then
    SetActive(Troop.WF_AntiArmour03, constant.ACTIVE)
    EnableWeapon(Troop.WF_AntiArmour03, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_AntiArmour03)
    Teleport(Troop.WF_AntiArmour03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_AntiArmour03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.WF_AntiArmour04) == false then
    SetActive(Troop.WF_AntiArmour04, constant.ACTIVE)
    EnableWeapon(Troop.WF_AntiArmour04, 1)
    repeat
      EndFrame()
    until IsActive(Troop.WF_AntiArmour04)
    Teleport(Troop.WF_AntiArmour04, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.WF_AntiArmour04, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.TT_AntiArmour01) == false then
    SetActive(Troop.TT_AntiArmour01, constant.ACTIVE)
    EnableWeapon(Troop.TT_AntiArmour01, 1)
    repeat
      EndFrame()
    until IsActive(Troop.TT_AntiArmour01)
    Teleport(Troop.TT_AntiArmour01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.TT_AntiArmour01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.TT_AntiArmour02) == false then
    SetActive(Troop.TT_AntiArmour02, constant.ACTIVE)
    EnableWeapon(Troop.TT_AntiArmour02, 1)
    repeat
      EndFrame()
    until IsActive(Troop.TT_AntiArmour02)
    Teleport(Troop.TT_AntiArmour02, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.TT_AntiArmour02, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.TT_AntiArmour03) == false then
    SetActive(Troop.TT_AntiArmour03, constant.ACTIVE)
    EnableWeapon(Troop.TT_AntiArmour03, 1)
    repeat
      EndFrame()
    until IsActive(Troop.TT_AntiArmour03)
    Teleport(Troop.TT_AntiArmour03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.TT_AntiArmour03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.TT_Grunt01) == false then
    SetActive(Troop.TT_Grunt01, constant.ACTIVE)
    EnableWeapon(Troop.TT_Grunt01, 1)
    repeat
      EndFrame()
    until IsActive(Troop.TT_Grunt01)
    Teleport(Troop.TT_Grunt01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.TT_Grunt01, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.TT_Grunt02) == false then
    SetActive(Troop.TT_Grunt02, constant.ACTIVE)
    EnableWeapon(Troop.TT_Grunt02, 1)
    repeat
      EndFrame()
    until IsActive(Troop.TT_Grunt02)
    Teleport(Troop.TT_Grunt02, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.TT_Grunt02, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Troop.TT_Grunt03) == false then
    SetActive(Troop.TT_Grunt03, constant.ACTIVE)
    EnableWeapon(Troop.TT_Grunt03, 1)
    repeat
      EndFrame()
    until IsActive(Troop.TT_Grunt03)
    Teleport(Troop.TT_Grunt03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 80, 10)
    GoToArea(Troop.TT_Grunt03, GetObjectXPosition(Waypoint.FinaleTeleport), GetObjectZPosition(Waypoint.FinaleTeleport), 10)
  end
  if IsDead(Air_Vehicle.AI_Bomber01) == false then
    Despawn(Air_Vehicle.AI_Bomber01)
  end
  if IsDead(Air_Vehicle.AI_Bomber02) == false then
    Despawn(Air_Vehicle.AI_Bomber02)
  end
  if IsDead(Ground_Vehicle.WF_LightTank01) == false then
    SetActive(Ground_Vehicle.WF_LightTank01, constant.ACTIVE)
    EnableWeapon(Ground_Vehicle.WF_LightTank01, 1)
    repeat
      EndFrame()
    until IsActive(Ground_Vehicle.WF_LightTank01)
    Teleport(Ground_Vehicle.WF_LightTank01, GetObjectXPosition(Waypoint.FinaleTeleportTank01), GetObjectZPosition(Waypoint.FinaleTeleportTank01), 80, 15)
  end
  if IsDead(Ground_Vehicle.WF_LightTank02) == false then
    SetActive(Ground_Vehicle.WF_LightTank02, constant.ACTIVE)
    EnableWeapon(Ground_Vehicle.WF_LightTank02, 1)
    repeat
      EndFrame()
    until IsActive(Ground_Vehicle.WF_LightTank02)
    Teleport(Ground_Vehicle.WF_LightTank02, GetObjectXPosition(Waypoint.FinaleTeleportTank02), GetObjectZPosition(Waypoint.FinaleTeleportTank02), 80, 5)
  end
  if IsDead(Ground_Vehicle.WF_LightTank03) == false then
    SetActive(Ground_Vehicle.WF_LightTank03, constant.ACTIVE)
    EnableWeapon(Ground_Vehicle.WF_LightTank03, 1)
    repeat
      EndFrame()
    until IsActive(Ground_Vehicle.WF_LightTank03)
    Teleport(Ground_Vehicle.WF_LightTank03, GetObjectXPosition(Waypoint.FinaleTeleportTank03), GetObjectZPosition(Waypoint.FinaleTeleportTank03), 90, 5)
  end
  VictoryDance(constant.ARMY_TUNDRAN)
  ClearMessageQueue()
  StartOutro()
  SetCamera(Camera.Cutscene04_Shot01)
  CameraSetTarget(Camera.Cutscene04_Shot01, Waypoint.OutroTarget01)
  CameraSetWaypoint(Camera.Cutscene04_Shot01, Waypoint.OutroSpline01)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(42, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_ONE)
  PhoneMessage(59, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
  WaitFor(1)
  Cutscene04Begun = 1
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Cutscene04Finished = 1
end
