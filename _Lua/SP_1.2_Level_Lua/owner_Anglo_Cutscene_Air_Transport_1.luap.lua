function owner_Anglo_Cutscene_Air_Transport_1(owner)
  repeat
    EndFrame()
  until GetMovementState(owner) == constant.MOVEMENT_STATE_ON_GROUND
  ExitVehicle(Troop.cutscenegrunt6, constant.ID_NONE)
  ExitVehicle(Troop.cutscenegrunt7, constant.ID_NONE)
  ExitVehicle(Troop.cutscenegrunt8, constant.ID_NONE)
  ExitVehicle(Troop.cutscenegrunt9, constant.ID_NONE)
end
