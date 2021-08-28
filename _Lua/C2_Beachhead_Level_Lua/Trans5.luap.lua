function Trans5(owner)
  WaitFor(5)
  repeat
    EndFrame()
  until Trans5Go == 1
  DropOff(Air_Vehicle.XAirTrans5, 65, 380, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
