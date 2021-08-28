function AngloBazookaChopper(owner)
  scriptAngloBazookaChopper = owner
  Despawn(Air_Vehicle.BazookaTroops)
  while true do
    WaitFor(0.1)
    if NumItemsInArea(Map_Zone.BottomHill, flag.TYPE_ANGLO) < 3 then
      break
    end
    EndFrame()
  end
  Spawn(Air_Vehicle.BazookaTroops)
  WaitFor(0.2)
  LandAirUnit(Air_Vehicle.BazookaTroops, 184, 531, constant.ORDER_FORCED, 1, 10)
  ClearMessageQueue()
  PhoneMessage(36, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  DebugOut("Sending Anglo Bazooka Vets")
  while true do
    if IsDead(Air_Vehicle.BazookaTroops) then
      return
    end
    if GetMovementState(Air_Vehicle.BazookaTroops) == constant.MOVEMENT_STATE_ON_GROUND then
      WaitFor(0.5)
      if IsDead(Air_Vehicle.BazookaTroops) then
        return
      end
      ExitVehicle(constant.ID_NONE, Air_Vehicle.BazookaTroops)
      WaitFor(0.5)
      DebugOut("Troops leaving chopper")
      break
    end
    EndFrame()
  end
  GoToArea(Air_Vehicle.BazookaTroops, -302, -788, 30, 0, constant.ORDER_FORCED)
  GoToArea(Troop.AngloBazooka1, 189, 605, 30, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AngloBazooka2, 189, 605, 30, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AngloBazooka3, 189, 605, 30, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AngloBazooka4, 189, 605, 30, 0, constant.ORDER_NORMAL)
  GoToArea(Troop.AngloBazooka5, 189, 605, 30, 0, constant.ORDER_NORMAL)
  DebugOut("Reinforcements on route")
  while true do
    if IsInArea(Air_Vehicle.BazookaTroops, -302, -788, 30) then
      Despawn(Air_Vehicle.BazookaTroops)
      break
    end
    EndFrame()
  end
end
