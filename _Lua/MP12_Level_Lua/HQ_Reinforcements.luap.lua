function HQ_Reinforcements(owner)
  repeat
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.HQ_Zone, CombineFlags(flag.TYPE_TUNDRAN, flag.TYPE_SOLAR), 0) - NumItemsInArea(Map_Zone.HQ_Zone, CombineFlags(flag.TYPE_AIRCRAFT, flag.TYPE_SOLAR), 1) or 0 < NumPassengersInUnit(Capture_Point.AI_HQ_CP)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Spawn(Air_Vehicle.AI_Air_Transport_4)
    Spawn(Air_Vehicle.AI_Air_Transport_5)
    EndFrame()
    LandAirUnit(Air_Vehicle.AI_Air_Transport_4, -520, 785, constant.ORDER_FORCED, 1, 10, 255)
    LandAirUnit(Air_Vehicle.AI_Air_Transport_5, -535, 685, constant.ORDER_FORCED, 1, 10, 315)
    WaitFor(6)
    PhoneMessage(38, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
    repeat
      EndFrame()
    until GetMovementState(Air_Vehicle.AI_Air_Transport_4) == constant.MOVEMENT_STATE_ON_GROUND
    repeat
      EndFrame()
    until GetMovementState(Air_Vehicle.AI_Air_Transport_5) == constant.MOVEMENT_STATE_ON_GROUND
    DebugOut("Air Transports have landed safely")
    WaitFor(1)
    GoToArea(Ground_Vehicle.AT_4_Light_Tank, -485, 715, 20)
    GoToArea(Ground_Vehicle.AT_5_Light_Tank, -490, 680, 20)
    WaitFor(2)
    GoToArea(Air_Vehicle.AI_Air_Transport_4, -1300, 675, 20)
    GoToArea(Air_Vehicle.AI_Air_Transport_5, -1300, 665, 20)
  else
    WaitFor(4)
    PhoneMessage(38, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_TWO)
  end
end
