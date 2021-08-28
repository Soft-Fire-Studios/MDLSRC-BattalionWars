function Chopper1(owner)
  gunship1 = owner
  local hellfreezesover = 0
  repeat
    WaitFor(2)
    if IsReadyToRevive(Air_Vehicle.XGunship1) then
      WaitFor(15)
      if chopperstatus == 0 then
        Teleport(Air_Vehicle.XGunship1, -727, 83, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XGunship1)
        Teleport(Air_Vehicle.XGunship1, -727, 83, 0, 0)
        WaitFor(10)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        GoToArea(Air_Vehicle.XGunship1, 74, -24, constant.ORDER_NORMAL)
      end
      if chopperstatus == 1 then
        Teleport(Air_Vehicle.XGunship1, -727, 83, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XGunship1)
        Teleport(Air_Vehicle.XGunship1, -727, 83, 0, 0)
        WaitFor(10)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        GoToArea(Air_Vehicle.XGunship1, 430, -60, 5, constant.ORDER_NORMAL)
      end
      if chopperstatus == 2 then
        Teleport(Air_Vehicle.XGunship1, -232, -776, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XGunship1)
        Teleport(Air_Vehicle.XGunship1, -232, -776, 0, 0)
        WaitFor(10)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
      end
      EndFrame()
      if chopperstatus == 3 then
        Teleport(Air_Vehicle.XGunship1, -264, -566, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XGunship1)
        Teleport(Air_Vehicle.XGunship1, -264, -566, 0, 0)
        WaitFor(60)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship1)
        AttackTarget(Air_Vehicle.XGunship1, GetPlayerUnit())
      end
      EndFrame()
    end
    EndFrame()
  until hellfreezesover == 2
end
