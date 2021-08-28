function Chopper2(owner)
  gunship2 = owner
  local hellfreezesover = 0
  repeat
    WaitFor(2)
    if IsReadyToRevive(Air_Vehicle.XGunship2) then
      WaitFor(15)
      if chopperstatus == 0 then
        Teleport(Air_Vehicle.XGunship2, -742, 86, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XGunship2)
        Teleport(Air_Vehicle.XGunship2, -742, 86, 0, 0)
        WaitFor(10)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        GoToArea(Air_Vehicle.XGunship2, 78, -120, constant.ORDER_NORMAL)
      end
      if chopperstatus == 1 then
        Teleport(Air_Vehicle.XGunship2, -742, 86, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XGunship2)
        Teleport(Air_Vehicle.XGunship2, -742, 86, 0, 0)
        WaitFor(10)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        GoToArea(Air_Vehicle.XGunship2, 430, -60, 5, constant.ORDER_NORMAL)
      end
      if chopperstatus == 2 then
        Teleport(Air_Vehicle.XGunship2, -232, -776, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XGunship2)
        Teleport(Air_Vehicle.XGunship2, -232, -776, 0, 0)
        WaitFor(10)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
      end
      EndFrame()
      if chopperstatus == 3 then
        Teleport(Air_Vehicle.XGunship2, -174, -635, 0, 0)
        ReviveDeadUnit(Air_Vehicle.XGunship2)
        Teleport(Air_Vehicle.XGunship2, -174, -635, 0, 0)
        WaitFor(60)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XGunship2)
        AttackTarget(Air_Vehicle.XGunship2, GetPlayerUnit())
      end
      EndFrame()
    end
    EndFrame()
  until hellfreezesover == 2
end
