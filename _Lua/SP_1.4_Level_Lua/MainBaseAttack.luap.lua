function MainBaseAttack(owner)
  scriptMainBaseAttack = owner
  Despawn(Air_Vehicle.MainBaseReinforcements1)
  Despawn(Air_Vehicle.MainBaseReinforcements2)
  local chopper1 = 0
  local chopper2 = 0
  repeat
    EndFrame()
  until battleshipcutscenefinish == 1
  while true do
    if 0 < NumItemsInArea(Map_Zone.ApproachMainBase, flag.TYPE_SOLAR) and NumItemsInArea(Map_Zone.ApproachMainBase, flag.TYPE_ANGLO) < 8 then
      break
    end
    EndFrame()
  end
  ClearMessageQueue()
  PhoneMessage(51, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  Spawn(Air_Vehicle.MainBaseReinforcements1)
  Spawn(Air_Vehicle.MainBaseReinforcements2)
  DebugOut("Spawned Choppers")
  WaitFor(0.2)
  LandAirUnit(Air_Vehicle.MainBaseReinforcements1, -84, 68, constant.ORDER_FORCED, false, 5, 30)
  LandAirUnit(Air_Vehicle.MainBaseReinforcements2, -61, 47, constant.ORDER_FORCED, false, 5, 30)
  repeat
    if GetMovementState(Air_Vehicle.MainBaseReinforcements1) == constant.MOVEMENT_STATE_ON_GROUND and chopper1 == 0 then
      ExitVehicle(Troop.MainBaseReinforcements1Passenger3, Air_Vehicle.MainBaseReinforcements1)
      WaitFor(0.2)
      ExitVehicle(Troop.MainBaseReinforcements1Passenger4, Air_Vehicle.MainBaseReinforcements1)
      WaitFor(0.2)
      ExitVehicle(Troop.MainBaseReinforcements1Passenger5, Air_Vehicle.MainBaseReinforcements1)
      WaitFor(0.2)
      ExitVehicle(Ground_Vehicle.AngloLightTank1, Air_Vehicle.MainBaseReinforcements1)
      WaitFor(0.2)
      GoToArea(Air_Vehicle.MainBaseReinforcements1, -564, 316, 30, 0, constant.ORDER_FORCED)
      chopper1 = 1
    end
    if GetMovementState(Air_Vehicle.MainBaseReinforcements2) == constant.MOVEMENT_STATE_ON_GROUND and chopper2 == 0 then
      ExitVehicle(Troop.MainBaseReinforcements2Passenger4, Air_Vehicle.MainBaseReinforcements2)
      WaitFor(0.2)
      ExitVehicle(Troop.MainBaseReinforcements2Passenger5, Air_Vehicle.MainBaseReinforcements2)
      WaitFor(0.2)
      ExitVehicle(Ground_Vehicle.AngloLightTank2, Air_Vehicle.MainBaseReinforcements2)
      WaitFor(0.2)
      GoToArea(Air_Vehicle.MainBaseReinforcements2, 1812, -1727, 30, 0, constant.ORDER_FORCED)
      chopper2 = 1
    end
    EndFrame()
  until chopper1 == 1 and chopper2 == 1
  DebugOut("main base choppers are leaving area")
  local despawned1 = 0
  local despawned2 = 0
  while despawned1 + despawned2 < 2 do
    if IsInArea(Air_Vehicle.MainBaseReinforcements1, -564, 316, 30) and despawned1 == 0 then
      Despawn(Air_Vehicle.MainBaseReinforcements1)
      despawned1 = 1
    end
    if IsInArea(Air_Vehicle.MainBaseReinforcements2, 1812, -1727, 30) and despawned2 == 0 then
      Despawn(Air_Vehicle.MainBaseReinforcements2)
      despawned2 = 1
    end
    EndFrame()
  end
end
