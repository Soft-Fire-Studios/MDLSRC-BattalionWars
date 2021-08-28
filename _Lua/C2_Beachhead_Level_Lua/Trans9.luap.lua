function Trans9(owner)
  WaitFor(5)
  repeat
    EndFrame()
  until Trans9Go == 1
  DropOff(Air_Vehicle.XAirTrans9, 65, 380, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
