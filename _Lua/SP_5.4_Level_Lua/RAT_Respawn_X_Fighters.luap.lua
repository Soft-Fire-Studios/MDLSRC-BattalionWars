function RAT_Respawn_X_Fighters(owner)
  local X_Fighter_1X = 280
  local X_Fighter_1Z = 1657
  local X_Fighter_2X = 310
  local X_Fighter_2Z = 1580
  local X_Fighter_3X = 320
  local X_Fighter_3Z = 1350
  while missionend == 0 do
    if IsDead(Air_Vehicle.X_Fighter_1) and IsReadyToRevive(Air_Vehicle.X_Fighter_1) and IsDead(Troop.X_F_1_Driver_1) and IsReadyToRevive(Troop.X_F_1_Driver_1) then
      ReviveDeadUnit(Air_Vehicle.X_Fighter_1, X_Fighter_1X, X_Fighter_1Z, 225, 25)
      ReviveDeadUnit(Troop.X_F_1_Driver_1, X_Fighter_1X, X_Fighter_1Z, 225, 25)
      repeat
        EndFrame()
      until IsDead(Air_Vehicle.X_Fighter_1) == false and IsDead(Troop.X_F_1_Driver_1) == false
      PutUnitInVehicle(Troop.X_F_1_Driver_1, Air_Vehicle.X_Fighter_1, 0)
      GoToArea(Air_Vehicle.X_Fighter_1, -30, 1350, 0, 0, constant.ORDER_FORCED)
    end
    WaitFor(20)
    EndFrame()
  end
end
