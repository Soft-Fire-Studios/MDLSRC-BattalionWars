function Trans6(owner)
  WaitFor(5)
  repeat
    EndFrame()
  until Trans6Go == 1
  DropOff(Air_Vehicle.XAirTrans6, 180, 380, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
