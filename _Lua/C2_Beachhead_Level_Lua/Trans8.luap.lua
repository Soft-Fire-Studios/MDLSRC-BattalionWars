function Trans8(owner)
  WaitFor(5)
  repeat
    EndFrame()
  until Trans8Go == 1
  DropOff(Air_Vehicle.XAirTrans8, 180, 380, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
