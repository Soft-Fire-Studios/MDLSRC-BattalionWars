function Trans1(owner)
  WaitFor(1)
  repeat
    SetHealthPercent(owner, 99)
    EndFrame()
  until Trans1Go == 1
  DropOff(Air_Vehicle.XAirTrans1, 95, 375, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
  repeat
    EndFrame()
  until Trans1Go == 2
  DropOff(Air_Vehicle.XAirTrans1, 80, 360, 0, 0, 0, 0, 0, Ground_Vehicle.XLTank1)
  Despawn(owner)
  repeat
    EndFrame()
  until Trans1Go == 3
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_FLAMER, Air_Vehicle.XAirTrans1, "Attack1")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_FLAMER, Air_Vehicle.XAirTrans1, "Attack1")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_FLAMER, Air_Vehicle.XAirTrans1, "Attack1")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_FLAMER, Air_Vehicle.XAirTrans1, "Attack1")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_FLAMER, Air_Vehicle.XAirTrans1, "Attack1")
  DropOff(Air_Vehicle.XAirTrans1, 65, 380, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
