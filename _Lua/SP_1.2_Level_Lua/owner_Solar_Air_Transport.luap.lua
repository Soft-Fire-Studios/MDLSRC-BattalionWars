function owner_Solar_Air_Transport(owner)
  SetUnitInvulnerable(owner, true)
  repeat
    EndFrame()
  until GetMovementState(Air_Vehicle.SEairtransport1) == constant.MOVEMENT_STATE_ON_GROUND
  ExitVehicle(Ground_Vehicle.SEaatank2, Air_Vehicle.SEairtransport1)
  if MidCutsceneEnded2 == true then
    if GetSpawnMode() == eModeAction.Follow then
      FollowUnit(Ground_Vehicle.SEaatank2, GetPlayerUnit(), 8, 0, constant.ORDER_FORCED)
    else
      GoToArea(Ground_Vehicle.SEaatank2, GetObjectXPosition(Waypoint.AAVehiclePath02), GetObjectZPosition(Waypoint.AAVehiclePath02), 1, 1, constant.ORDER_FORCED)
    end
  end
  EndFrame()
  WaitFor(5)
  GoToArea(Air_Vehicle.SEairtransport1, 682, -770, 0)
  WaitFor(120)
  Despawn(Air_Vehicle.SEairtransport1)
end
