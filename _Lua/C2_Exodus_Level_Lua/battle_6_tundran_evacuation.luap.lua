function battle_6_tundran_evacuation(owner)
  while battle < 7 do
    EndFrame()
  end
  Spawn(Air_Vehicle.ttrans1)
  Spawn(Air_Vehicle.ttrans2)
  Spawn(Air_Vehicle.ttrans3)
  Spawn(Air_Vehicle.ttrans4)
  WaitFor(1)
  LandAirUnit(Air_Vehicle.ttrans1, -655, -320, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.ttrans2, -690, -335, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.ttrans3, -700, -365, constant.ORDER_FORCED)
  LandAirUnit(Air_Vehicle.ttrans4, -654, -415, constant.ORDER_FORCED)
end
