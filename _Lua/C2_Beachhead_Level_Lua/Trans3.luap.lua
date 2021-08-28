function Trans3(owner)
  WaitFor(5)
  repeat
    EndFrame()
  until Trans3Go == 1
  DropOff(Air_Vehicle.XAirTrans3, 95, 375, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
  repeat
    EndFrame()
  until Trans3Go == 2
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, Air_Vehicle.XAirTrans3, "KillAA")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, Air_Vehicle.XAirTrans3, "KillAA")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, Air_Vehicle.XAirTrans3, "KillAA")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, Air_Vehicle.XAirTrans3, "KillAA")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_VET_ANTI_ARMOUR, Air_Vehicle.XAirTrans3, "KillAA")
  DropOff(Air_Vehicle.XAirTrans3, 95, 375, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
