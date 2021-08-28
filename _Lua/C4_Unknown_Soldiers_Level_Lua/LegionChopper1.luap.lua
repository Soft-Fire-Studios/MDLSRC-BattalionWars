function LegionChopper1(owner)
  local loop = 0
  Despawn(Air_Vehicle.LChopper5)
  Despawn(Air_Vehicle.LChopper6)
  Despawn(Air_Vehicle.LChopper7)
  Despawn(Air_Vehicle.LChopper8)
  WaitFor(1)
  repeat
    EndFrame()
    WaitFor(1)
  until 0 < NumItemsInArea(Map_Zone.Runners, flag.TYPE_WFRONTIER)
  WaitFor(8)
  Spawn(Air_Vehicle.LChopper5)
  Spawn(Air_Vehicle.LChopper6)
  GoToArea(Air_Vehicle.LChopper5, -347, -270, 50)
  GoToArea(Air_Vehicle.LChopper6, -347, -270, 50)
  AttackTarget(Air_Vehicle.LChopper5, Troop.Runner4, constant.ORDER_NORMAL)
  AttackTarget(Air_Vehicle.LChopper6, Troop.Runner1, constant.ORDER_NORMAL)
  WaitFor(10)
  Spawn(Air_Vehicle.LChopper7)
  Spawn(Air_Vehicle.LChopper8)
  GoToArea(Air_Vehicle.LChopper7, -347, -270, 10)
  GoToArea(Air_Vehicle.LChopper8, -347, -270, 20)
  AttackTarget(Air_Vehicle.LChopper7, Ground_Vehicle.AA1, constant.ORDER_NORMAL)
  AttackTarget(Air_Vehicle.LChopper8, Ground_Vehicle.AA2, constant.ORDER_NORMAL)
  EndFrame()
  while loop < 10 do
    if IsReadyToRevive(Air_Vehicle.LChopper5) then
      WaitFor(15)
      Teleport(Air_Vehicle.LChopper5, 513, 383, 0, 20)
      ReviveDeadUnit(Air_Vehicle.LChopper5)
      DebugOut("Chopper5")
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, Air_Vehicle.LChopper5)
      FollowUnit(Air_Vehicle.LChopper5, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      loop = 1
      EndFrame()
    end
    EndFrame()
    if IsReadyToRevive(Air_Vehicle.LChopper6) then
      WaitFor(15)
      Teleport(Air_Vehicle.LChopper6, 551, 321, 0, 20)
      ReviveDeadUnit(Air_Vehicle.LChopper6)
      DebugOut("Chopper6")
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_UNDERWORLD, flag.GTYPE_GRUNT, Air_Vehicle.LChopper6)
      FollowUnit(Air_Vehicle.LChopper6, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      EndFrame()
    end
  end
  EndFrame()
end
