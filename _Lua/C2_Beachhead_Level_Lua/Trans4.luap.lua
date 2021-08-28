function Trans4(owner)
  WaitFor(5)
  repeat
    EndFrame()
  until Trans4Go == 1
  DropOff(Air_Vehicle.XAirTrans4, 180, 380, 1, 1, 1, 1, 1, 0)
  Despawn(owner)
end
