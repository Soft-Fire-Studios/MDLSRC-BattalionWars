function Trans2(owner)
  WaitFor(5)
  repeat
    EndFrame()
  until Trans2Go == 1
  DropOff(Air_Vehicle.XAirTrans2, 65, 380, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
