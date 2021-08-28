function THQAttackB(owner)
  local PlayerCA2Trigger = 0
  repeat
    if IsInArea(Air_Vehicle.TT_T_Copter_B, 455, -85, 20) and GetMovementState(Air_Vehicle.TT_T_Copter_B) == constant.MOVEMENT_STATE_ON_GROUND then
      ExitVehicle(GetUnitInSeat(Air_Vehicle.TT_T_Copter_B, 5), Air_Vehicle.TT_T_Copter_B)
      ExitVehicle(GetUnitInSeat(Air_Vehicle.TT_T_Copter_B, 4), Air_Vehicle.TT_T_Copter_B)
      ExitVehicle(GetUnitInSeat(Air_Vehicle.TT_T_Copter_B, 3), Air_Vehicle.TT_T_Copter_B)
      TCopterBUnload = 1
    end
    EndFrame()
  until TCopterBUnload == 1
  EnterVehicle(Troop.TT_T_Copter_Grunt_B2, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_FORCED)
  EnterVehicle(Troop.TT_T_Copter_Grunt_B3, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_NORMAL)
  EnterVehicle(Troop.TT_T_Copter_Grunt_B4, Capture_Point.WF_HQ_Capture_Point, constant.ORDER_NORMAL)
  WaitFor(5)
  GoToArea(Air_Vehicle.TT_T_Copter_B, 400, -1000, 5, 0, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(Air_Vehicle.TT_T_Copter_B, 400, -1000, 20)
  DebugOut("Destroying T Copter B.")
  Despawn(Air_Vehicle.TT_T_Copter_B)
end
