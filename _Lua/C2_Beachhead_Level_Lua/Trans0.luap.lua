function Trans0(owner)
  WaitFor(1)
  repeat
    SetHealthPercent(owner, 99)
    EndFrame()
  until Trans0Go == 1
  DropOff(Air_Vehicle.XAirTrans0, 115, 375, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
  repeat
    EndFrame()
  until Trans0Go == 2
  DropOff(Air_Vehicle.XAirTrans0, 120, 360, 0, 0, 0, 0, 0, Ground_Vehicle.XLTank2)
  Despawn(owner)
  repeat
    EndFrame()
  until Trans0Go == 3
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XAirTrans0, "Attack1")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XAirTrans0, "Attack1")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XAirTrans0, "Attack1")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XAirTrans0, "Attack1")
  SpawnUnitInCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, Air_Vehicle.XAirTrans0, "Attack1")
  DropOff(Air_Vehicle.XAirTrans0, 180, 380, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
