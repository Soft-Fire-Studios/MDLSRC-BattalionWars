function XBomber(owner)
  local loop = 0
  while loop == 0 do
    if IsReadyToRevive(Air_Vehicle.XBomber1) then
      WaitFor(20)
      Teleport(Air_Vehicle.XBomber1, 563, 350, 0, 20)
      ReviveDeadUnit(Air_Vehicle.XBomber1)
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XBomber1)
      FollowUnit(Air_Vehicle.XBomber1, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      DebugOut("Bomber Respawned")
    end
    EndFrame()
    if IsReadyToRevive(Air_Vehicle.XBomber2) then
      WaitFor(20)
      Teleport(Air_Vehicle.XBomber2, 563, 370, 0, 20)
      ReviveDeadUnit(Air_Vehicle.XBomber2)
      EndFrame()
      SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XBomber2)
      FollowUnit(Air_Vehicle.XBomber2, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
      DebugOut("Bomber 2 Respawned")
    end
    EndFrame()
  end
  EndFrame()
end
