function Dock_Wave_1(owner)
  local wave1timer = 120
  script04 = owner
  local gsattack = 0
  local land1 = 0
  local land2 = 0
  local land3 = 0
  local land4 = 0
  local text = 0
  Despawn(Water_Vehicle.CS_AI_Frigate_1)
  Despawn(Water_Vehicle.CS_AI_Frigate_2)
  AddToGroup(Unit_Group.Wave_1, Troop.SE_Grunt_5)
  AddToGroup(Unit_Group.Wave_1, Troop.SE_Grunt_6)
  AddToGroup(Unit_Group.Wave_1, Troop.SE_Grunt_7)
  AddToGroup(Unit_Group.Wave_1, Troop.SE_Grunt_8)
  AddToGroup(Unit_Group.Wave_1, Troop.SE_Grunt_9)
  AddToGroup(Unit_Group.Wave_1, Troop.SE_Grunt_10)
  AddToGroup(Unit_Group.Wave_1, Troop.SE_Grunt_11)
  AddToGroup(Unit_Group.Wave_1, Troop.SE_Grunt_12)
  Despawn(Air_Vehicle.SE_Gunship_5)
  Despawn(Air_Vehicle.SE_Gunship_6)
  Despawn(Air_Vehicle.SE_Gunship_7)
  Despawn(Air_Vehicle.SE_Gunship_8)
  Despawn(Air_Vehicle.SE_Gunship_9)
  Despawn(Air_Vehicle.SE_Gunship_10)
  Despawn(Water_Vehicle.SE_Sea_Transport_1)
  Despawn(Water_Vehicle.SE_Sea_Transport_2)
  Despawn(Water_Vehicle.SE_Sea_Transport_3)
  Despawn(Water_Vehicle.SE_Sea_Transport_4)
  while wave < 1 do
    EndFrame()
  end
  Spawn(Air_Vehicle.SE_Gunship_5)
  Spawn(Air_Vehicle.SE_Gunship_6)
  Spawn(Air_Vehicle.SE_Gunship_7)
  Spawn(Air_Vehicle.SE_Gunship_8)
  Spawn(Air_Vehicle.SE_Gunship_9)
  Spawn(Air_Vehicle.SE_Gunship_10)
  Spawn(Water_Vehicle.SE_Sea_Transport_2)
  Spawn(Water_Vehicle.SE_Sea_Transport_3)
  repeat
    EndFrame()
  until GetPlayerUnit() ~= nil
  Teleport(Water_Vehicle.SE_Sea_Transport_2, GetObjectXPosition(GetPlayerUnit()) - 510, GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_2), 90, 10)
  Teleport(Water_Vehicle.SE_Sea_Transport_3, GetObjectXPosition(GetPlayerUnit()) - 540, GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_3), 90, 10)
  repeat
    EndFrame()
  until GetPlayerUnit() ~= nil
  Teleport(Air_Vehicle.SE_Gunship_5, GetObjectXPosition(GetPlayerUnit()) - 1150, GetObjectZPosition(Air_Vehicle.SE_Gunship_5), 90, 10)
  Teleport(Air_Vehicle.SE_Gunship_6, GetObjectXPosition(GetPlayerUnit()) - 1600, GetObjectZPosition(Air_Vehicle.SE_Gunship_6), 90, 10)
  Teleport(Air_Vehicle.SE_Gunship_7, GetObjectXPosition(GetPlayerUnit()) - 2000, GetObjectZPosition(Air_Vehicle.SE_Gunship_7), 90, 10)
  Teleport(Air_Vehicle.SE_Gunship_8, GetObjectXPosition(GetPlayerUnit()) - 2000, GetObjectZPosition(Air_Vehicle.SE_Gunship_8), 90, 10)
  Teleport(Air_Vehicle.SE_Gunship_9, GetObjectXPosition(GetPlayerUnit()) - 1600, GetObjectZPosition(Air_Vehicle.SE_Gunship_9), 90, 10)
  Teleport(Air_Vehicle.SE_Gunship_10, GetObjectXPosition(GetPlayerUnit()) - 1150, GetObjectZPosition(Air_Vehicle.SE_Gunship_10), 90, 10)
  DebugOut("Sending in Wave 1")
  BeachWaterUnit(Water_Vehicle.SE_Sea_Transport_2, 540, 450, 80, 1)
  BeachWaterUnit(Water_Vehicle.SE_Sea_Transport_3, 545, 205, 100, 1)
  WaitFor(3)
  GoToArea(Air_Vehicle.SE_Gunship_5, 455, 380, 50)
  GoToArea(Air_Vehicle.SE_Gunship_10, 515, 345, 50)
  WaitFor(5)
  GoToArea(Air_Vehicle.SE_Gunship_6, 525, 300, 50)
  GoToArea(Air_Vehicle.SE_Gunship_9, 450, 275, 50)
  WaitFor(5)
  GoToArea(Air_Vehicle.SE_Gunship_7, 525, 300, 50)
  GoToArea(Air_Vehicle.SE_Gunship_8, 450, 275, 50)
  repeat
    if IsDead(Water_Vehicle.SE_Sea_Transport_2) and land2 == 0 then
      DebugOut("Sea Transport 2 destroyed")
      land2 = 1
    else
      if land2 == 0 and NumPassengersInUnit(Water_Vehicle.SE_Sea_Transport_2) == 0 then
        DebugOut("Sea Transport 2 unloaded")
        EnterVehicle(Troop.SE_Grunt_5, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_6, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_7, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_8, Capture_Point.AI_Dock_CP)
        WaitFor(1)
        GoToArea(Water_Vehicle.SE_Sea_Transport_2, -1815, 600, 50)
        land2 = 1
        powerland = powerland - 1
        if text == 0 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    if IsDead(Water_Vehicle.SE_Sea_Transport_3) and land3 == 0 then
      DebugOut("Sea Transport 3 destroyed")
      land3 = 1
    else
      if land3 == 0 and NumPassengersInUnit(Water_Vehicle.SE_Sea_Transport_3) == 0 then
        DebugOut("Sea Transport3 unloaded")
        EnterVehicle(Troop.SE_Grunt_9, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_10, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_11, Capture_Point.AI_Dock_CP)
        EnterVehicle(Troop.SE_Grunt_12, Capture_Point.AI_Dock_CP)
        WaitFor(1)
        GoToArea(Water_Vehicle.SE_Sea_Transport_3, -1815, 50, 50)
        land3 = 1
        powerland = powerland - 1
        if text == 0 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
          text = 1
          if flagtext == 0 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Building.AI_Tower_2 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_4 and GetPlayerUnit(constant.PLAYER_ONE) ~= Troop.AI_Grunt_5 then
            PhoneMessage(122, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
            flagtext = 1
          end
        end
      else
      end
    end
    EndFrame()
    if IsDead(Building.AI_Tower_1) and IsDead(Building.AI_Tower_2) then
      flagtext = 1
    end
    EndFrame()
  until land2 + land3 == 2
  EnterVehicle(Troop.SE_Grunt_5, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_6, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_7, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_8, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_9, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_10, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_11, Capture_Point.AI_Dock_CP)
  EnterVehicle(Troop.SE_Grunt_12, Capture_Point.AI_Dock_CP)
  DebugOut("All Wave 1 Sea Transports destroyed or unloaded")
  if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_2 then
    AttackTarget(Air_Vehicle.SE_Gunship_5, GetPlayerUnit(constant.PLAYER_ONE))
    AttackTarget(Air_Vehicle.SE_Gunship_6, GetPlayerUnit(constant.PLAYER_ONE))
    AttackTarget(Air_Vehicle.SE_Gunship_7, GetPlayerUnit(constant.PLAYER_ONE))
    AttackTarget(Air_Vehicle.SE_Gunship_8, GetPlayerUnit(constant.PLAYER_ONE))
    AttackTarget(Air_Vehicle.SE_Gunship_9, GetPlayerUnit(constant.PLAYER_ONE))
    AttackTarget(Air_Vehicle.SE_Gunship_10, GetPlayerUnit(constant.PLAYER_ONE))
  end
  repeat
    if gsattack == 0 and GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE)) < 70 and GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) > 645 and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_2 then
      gsattack = 1
    end
    wave1timer = wave1timer - 1
    WaitFor(1)
  until (GetGroupHealthPercent(Unit_Group.Wave_1) == 0 or wave1timer == 0) and IsDead(Air_Vehicle.SE_Gunship_5) and IsDead(Air_Vehicle.SE_Gunship_6) and IsDead(Air_Vehicle.SE_Gunship_7) and IsDead(Air_Vehicle.SE_Gunship_8) and IsDead(Air_Vehicle.SE_Gunship_9) and IsDead(Air_Vehicle.SE_Gunship_10)
  DebugOut("Wave 1 destroyed")
  if GetGroupHealthPercent(Unit_Group.Wave_1) == 0 then
  end
  ClearMessageQueue()
  PhoneMessage(34, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  subcutscene = 1
  if IsPassengerInUnit(GetPlayerUnit(constant.PLAYER_ONE), constant.ID_NONE) then
    ExitVehicle(GetPlayerUnit(constant.PLAYER_ONE), constant.ID_NONE)
  end
  EndFrame()
  FreezePlayer(constant.PLAYER_ONE)
  wave = 3
  EndFrame()
  Spawn(Water_Vehicle.SE_Sub_1)
  Spawn(Water_Vehicle.SE_Sub_2)
  Spawn(Water_Vehicle.SE_Sub_3)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  PauseTimerActive = 0
  Kill(Water_Vehicle.SE_Sea_Transport_2, false)
  Kill(Water_Vehicle.SE_Sea_Transport_3, false)
  cutkiller = owner
  cutscene = 0
  Teleport(Water_Vehicle.AI_Frigate_1, -25, -175, 270, 25)
  Teleport(Water_Vehicle.AI_Frigate_2, -35, -180, 270, 25)
  SetCamera(Camera.Sub_Camera_1)
  CameraSetFOV(Camera.Sub_Camera_1, 70, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  SubmarineDive(Water_Vehicle.SE_Sub_2)
  WaitFor(1)
  wave = 3.5
  PhoneMessage(42, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(2)
  SubmarineDive(Water_Vehicle.SE_Sub_1)
  WaitFor(2)
  SubmarineDive(Water_Vehicle.SE_Sub_3)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  Despawn(Water_Vehicle.SE_Sub_1)
  Despawn(Water_Vehicle.SE_Sub_2)
  Despawn(Water_Vehicle.SE_Sub_3)
  Teleport(Water_Vehicle.SE_Sub_1, GetObjectXPosition(GetPlayerUnit()) - 900, GetObjectZPosition(Water_Vehicle.SE_Sub_1), 90, 10)
  Teleport(Water_Vehicle.SE_Sub_2, GetObjectXPosition(GetPlayerUnit()) - 600, GetObjectZPosition(Water_Vehicle.SE_Sub_2), 90, 10)
  Teleport(Water_Vehicle.SE_Sub_3, GetObjectXPosition(GetPlayerUnit()) - 900, GetObjectZPosition(Water_Vehicle.SE_Sub_3), 90, 10)
  Teleport(Water_Vehicle.SE_Sea_Transport_6, GetObjectXPosition(GetPlayerUnit()) - 700, GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_6), 90, 10)
  Teleport(Water_Vehicle.SE_Sea_Transport_7, GetObjectXPosition(GetPlayerUnit()) - 800, GetObjectZPosition(Water_Vehicle.SE_Sea_Transport_7), 90, 10)
  if IsReadyToRevive(Water_Vehicle.AI_Battleship_1) then
    ReviveDeadUnit(Water_Vehicle.AI_Battleship_1)
  end
  if IsReadyToRevive(Water_Vehicle.AI_Sub_1) then
    ReviveDeadUnit(Water_Vehicle.AI_Sub_1)
  end
  if IsReadyToRevive(Water_Vehicle.AI_Sub_2) then
    ReviveDeadUnit(Water_Vehicle.AI_Sub_2)
  end
  if IsReadyToRevive(Water_Vehicle.AI_Frigate_1) then
    ReviveDeadUnit(Water_Vehicle.AI_Frigate_1)
  end
  if IsReadyToRevive(Water_Vehicle.AI_Frigate_2) then
    ReviveDeadUnit(Water_Vehicle.AI_Frigate_2)
  end
  EndFrame()
  if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Frigate_1 and GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Frigate_2 then
    who = GetPlayerUnit(constant.PLAYER_ONE)
    if IsDead(Water_Vehicle.AI_Frigate_1) == false then
      ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.AI_Frigate_1, true, true)
    elseif IsDead(Water_Vehicle.AI_Frigate_2) == false then
      ForceUnitTransfer(constant.PLAYER_ONE, Water_Vehicle.AI_Frigate_2, true, true)
    end
  else
  end
  if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Battleship_1 then
    Despawn(Water_Vehicle.AI_Battleship_1)
  end
  if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_1 then
    Despawn(Water_Vehicle.AI_Sub_1)
  end
  if GetPlayerUnit(constant.PLAYER_ONE) ~= Water_Vehicle.AI_Sub_2 then
    Despawn(Water_Vehicle.AI_Sub_2)
  end
  Spawn(Water_Vehicle.CS_AI_Frigate_1)
  Spawn(Water_Vehicle.CS_AI_Frigate_2)
  SetCamera(Camera.Sub_Camera_2)
  CameraSetFOV(Camera.Sub_Camera_2, 60, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(48, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
