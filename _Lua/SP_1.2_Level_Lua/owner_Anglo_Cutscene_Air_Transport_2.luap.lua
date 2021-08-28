function owner_Anglo_Cutscene_Air_Transport_2(owner)
  repeat
    EndFrame()
  until GetMovementState(owner) == constant.MOVEMENT_STATE_ON_GROUND
  ExitVehicle(Troop.cutscenegrunt1, constant.ID_NONE)
  ExitVehicle(Troop.cutscenegrunt2, constant.ID_NONE)
  ExitVehicle(Troop.cutscenegrunt3, constant.ID_NONE)
  ExitVehicle(Troop.cutscenegrunt4, constant.ID_NONE)
  ExitVehicle(Troop.cutscenegrunt5, constant.ID_NONE)
  EnterVehicle(Troop.cutscenegrunt1, Capture_Point.dockCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.cutscenegrunt2, Capture_Point.dockCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.cutscenegrunt3, Capture_Point.dockCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.cutscenegrunt4, Capture_Point.dockCP, constant.ORDER_FORCED)
  EnterVehicle(Troop.cutscenegrunt5, Capture_Point.dockCP, constant.ORDER_FORCED)
end
