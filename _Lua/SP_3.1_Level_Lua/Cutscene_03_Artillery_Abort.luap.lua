function Cutscene_03_Artillery_Abort(owner)
  local area = 0
  repeat
    EndFrame()
  until mid == 1
  SetInvulnerable(flag.TYPE_ANGLO, true)
  WaitFor(3)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE)) then
      DebugOut("mid level cutscene skipped")
      ClearMessageQueue()
      Kill(cutkiller)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      cutscene = 1
      break
    else
    end
    EndFrame()
  end
  SetViewDistanceAdjustment(420, 30)
  if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Assault_Cutscene) then
    area = area + 1
  end
  if IsInArea(Air_Vehicle.AI_Fighter_1, Map_Zone.Assault_Cutscene) then
    area = area + 1
  end
  if IsInArea(Air_Vehicle.AI_Fighter_2, Map_Zone.Assault_Cutscene) then
    area = area + 1
  end
  if 0 < NumItemsInArea(Map_Zone.Assault_Cutscene, flag.TYPE_ANGLO) - area then
    Kill(Troop.Entity260019958)
    Kill(Troop.Entity260019960)
    Kill(Troop.Entity260019957)
    Kill(Troop.Entity260019959)
    Kill(Troop.Entity260019956)
  end
  if GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.AI_Fighter_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Air_Vehicle.AI_Fighter_2 then
    if IsDead(Ground_Vehicle.AI_Light_Tank_1) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Ground_Vehicle.AI_Light_Tank_1 and IsInArea(Ground_Vehicle.AI_Light_Tank_1, Map_Zone.Assault_Cutscene) then
      Teleport(Ground_Vehicle.AI_Light_Tank_1, -795, 565, 45, 10)
    end
    if IsDead(Ground_Vehicle.AI_Light_Tank_2) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Ground_Vehicle.AI_Light_Tank_2 and IsInArea(Ground_Vehicle.AI_Light_Tank_2, Map_Zone.Assault_Cutscene) then
      Teleport(Ground_Vehicle.AI_Light_Tank_2, -820, 550, 45, 10)
    end
    if IsDead(Troop.AI_Grunt_1) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_1 and IsInArea(Troop.AI_Grunt_1, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Grunt_1, -825, 590, 45, 50)
    end
    if IsDead(Troop.AI_Grunt_2) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_2 and IsInArea(Troop.AI_Grunt_2, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Grunt_2, -825, 590, 45, 10)
    end
    if IsDead(Troop.AI_Grunt_3) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_3 and IsInArea(Troop.AI_Grunt_3, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Grunt_3, -825, 590, 45, 50)
    end
    if IsDead(Troop.AI_Grunt_4) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and IsInArea(Troop.AI_Grunt_4, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Grunt_4, -825, 590, 45, 50)
    end
    if IsDead(Troop.AI_Grunt_5) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 and IsInArea(Troop.AI_Grunt_5, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Grunt_5, -825, 590, 45, 50)
    end
    if IsDead(Troop.AI_Grunt_6) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_6 and IsInArea(Troop.AI_Grunt_6, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Grunt_6, -825, 590, 45, 50)
    end
    if IsDead(Troop.AI_Mortar_1) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Mortar_1 and IsInArea(Troop.AI_Mortar_1, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Mortar_1, -780, 515, 45, 30)
    end
    if IsDead(Troop.AI_Mortar_2) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Mortar_2 and IsInArea(Troop.AI_Mortar_2, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Mortar_2, -780, 515, 45, 30)
    end
    if IsDead(Troop.AI_Mortar_3) == false and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Mortar_3 and IsInArea(Troop.AI_Mortar_3, Map_Zone.Assault_Cutscene) then
      Teleport(Troop.AI_Mortar_3, -780, 515, 45, 30)
    end
  end
  if gunships == 0 then
    DebugOut("Spawning AI Battleships")
    Spawn(Water_Vehicle.AI_Battleship_1)
    Spawn(Water_Vehicle.AI_Battleship_2)
    DebugOut("spawned AI Battleship 2")
  end
  Kill(Ground_Vehicle.CS_Artillery_1)
  Kill(Ground_Vehicle.CS_Artillery_2)
  Kill(Ground_Vehicle.CS_Artillery_3)
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Water_Vehicle.AI_Battleship_1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Water_Vehicle.AI_Battleship_2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  end
  Spawn(Ground_Vehicle.SE_Artillery_1)
  Spawn(Ground_Vehicle.SE_Light_Tank_3)
  Spawn(Ground_Vehicle.SE_Light_Tank_5)
  StoreSummaryMessage(27, constant.ARMY_ANGLO, SpriteID.CO_AI_Pierce_Happy)
  SetActive(Water_Vehicle.AI_Battleship_1, constant.ACTIVE)
  SetActive(Water_Vehicle.AI_Battleship_2, constant.ACTIVE)
  AddToGroup(Unit_Group.Player_Army, Water_Vehicle.AI_Battleship_1)
  AddToGroup(Unit_Group.Player_Army, Water_Vehicle.AI_Battleship_2)
  DebugOut("Cutscene finished, fading player camera back in")
  EndIntro()
  PauseTimerActive = 0
  StartScoringTimer()
  ClearMessageQueue()
  SetCamera(Camera.Player_Camera)
  SetInvulnerable(flag.TYPE_ANGLO, true)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SetInvulnerable(flag.TYPE_ANGLO, false)
  artcut = 0
  mid = 2
  bridge = 0
  WaitFor(freezedelay)
  UnfreezePlayer(constant.PLAYER_ONE)
end
