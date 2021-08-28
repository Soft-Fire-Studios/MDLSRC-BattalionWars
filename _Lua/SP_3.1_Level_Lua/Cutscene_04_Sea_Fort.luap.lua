function Cutscene_04_Sea_Fort(owner)
  repeat
    EndFrame()
  until dock == 1
  cutkiller = owner
  Spawn(Air_Vehicle.Fake_GS_1)
  Spawn(Air_Vehicle.Fake_GS_2)
  cutscene = 0
  DebugOut("Sea Fort cutscene shot 1 begins")
  SetCamera(Camera.Midtro_Camera_Experiment)
  CameraSetFOV(Camera.Midtro_Camera_Experiment, 70, constant.IMMEDIATE, 65, constant.NO_WAIT)
  Teleport(Water_Vehicle.AI_Battleship_1, 870, 670, 90, 10)
  Teleport(Water_Vehicle.AI_Battleship_2, 870, 590, 90, 10)
  Teleport(Troop.AI_Grunt_1, 775, 645, 270, 25)
  Teleport(Troop.AI_Grunt_2, 775, 645, 270, 25)
  Teleport(Troop.AI_Grunt_3, 775, 645, 270, 25)
  Teleport(Troop.AI_Grunt_4, 775, 645, 270, 25)
  Teleport(Troop.AI_Grunt_5, 775, 645, 270, 25)
  Teleport(Troop.AI_Mortar_1, 775, 645, 270, 25)
  Teleport(Troop.AI_Mortar_2, 775, 645, 270, 25)
  Teleport(Troop.AI_Mortar_3, 775, 645, 270, 25)
  SetViewDistanceAdjustment(600, 30)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  WaitFor(1)
  PhoneMessage(92, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(3)
  Spawn(Troop.Fake_Pilot_1)
  Spawn(Troop.Fake_Pilot_2)
  PutUnitInVehicle(Troop.Fake_Pilot_1, Air_Vehicle.Fake_GS_1, 0)
  PutUnitInVehicle(Troop.Fake_Pilot_2, Air_Vehicle.Fake_GS_2, 0)
  GoToArea(Air_Vehicle.Fake_GS_1, 970, 0, 10)
  GoToArea(Air_Vehicle.Fake_GS_2, 990, 10, 10)
  if IsDead(Ground_Vehicle.CS_Artillery_1) == false then
    Spawn(Ground_Vehicle.CS_Artillery_1)
  end
  if IsDead(Ground_Vehicle.CS_Artillery_2) == false then
    Spawn(Ground_Vehicle.CS_Artillery_2)
  end
  if IsDead(Ground_Vehicle.CS_Artillery_3) == false then
    Spawn(Ground_Vehicle.CS_Artillery_3)
  end
  WaitFor(1)
  if 0 < GetNumSeatsFree(Ground_Vehicle.CS_Artillery_1) and IsDead(Ground_Vehicle.CS_Artillery_1) == false then
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Ground_Vehicle.CS_Artillery_1)
  end
  if 0 < GetNumSeatsFree(Ground_Vehicle.CS_Artillery_2) and IsDead(Ground_Vehicle.CS_Artillery_2) == false then
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Ground_Vehicle.CS_Artillery_2)
  end
  if 0 < GetNumSeatsFree(Ground_Vehicle.CS_Artillery_3) and IsDead(Ground_Vehicle.CS_Artillery_3) == false then
    SpawnUnitInCarrier(flag.TYPE_SOLAR, flag.GTYPE_GRUNT, Ground_Vehicle.CS_Artillery_3)
  end
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(1)
  PhoneMessage(93, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  WaitFor(4)
  GoToArea(Ground_Vehicle.CS_Artillery_2, 1085, 735, 10)
  WaitFor(1)
  GoToArea(Ground_Vehicle.CS_Artillery_1, 1060, 725, 10)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(1)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
