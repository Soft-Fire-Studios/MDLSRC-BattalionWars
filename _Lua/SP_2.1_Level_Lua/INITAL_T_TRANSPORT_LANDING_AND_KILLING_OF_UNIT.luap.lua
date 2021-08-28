function INITAL_T_TRANSPORT_LANDING_AND_KILLING_OF_UNIT(owner)
  local missionover = 0
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.Ttransport1) == constant.MOVEMENT_STATE_ON_GROUND
  ExitVehicle(Troop.Tflame17, constant.ID_NONE)
  ExitVehicle(Troop.Tflame18, constant.ID_NONE)
  ExitVehicle(Troop.Tflame19, constant.ID_NONE)
  ExitVehicle(Troop.Tflame20, constant.ID_NONE)
  ExitVehicle(Ground_Vehicle.Tltank08, constant.ID_NONE)
  WaitFor(2)
  GoToArea(Air_Vehicle.Ttransport1, 504, 1290, 0, constant.ORDER_FORCED)
  PlayerXPos = GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE))
  PlayerZPos = GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE))
  if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.THQwarningzone1) then
    GoToArea(Ground_Vehicle.Tltank08, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
    GoToArea(Troop.Tflame17, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
    GoToArea(Troop.Tflame18, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
    GoToArea(Troop.Tflame19, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
    GoToArea(Troop.Tflame20, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
  else
    GoToArea(Ground_Vehicle.Tltank08, 224, 416, 15, constant.ORDER_NORMAL)
    GoToArea(Troop.Tflame17, 224, 416, 15, constant.ORDER_NORMAL)
    GoToArea(Troop.Tflame18, 224, 416, 15, constant.ORDER_NORMAL)
    GoToArea(Troop.Tflame19, 224, 416, 15, constant.ORDER_NORMAL)
    GoToArea(Troop.Tflame20, 224, 416, 15, constant.ORDER_NORMAL)
  end
  repeat
    if IsInArea(Air_Vehicle.Ttransport1, Map_Zone.Transportdeathzone) then
      Kill(Air_Vehicle.Ttransport1)
      WaitFor(10)
    end
    EndFrame()
  until missionover == 1
end
