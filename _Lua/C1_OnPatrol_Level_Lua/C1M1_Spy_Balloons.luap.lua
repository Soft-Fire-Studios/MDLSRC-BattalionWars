function C1M1_Spy_Balloons(owner)
  Despawn(Air_Vehicle.TspyBlimp0001)
  Despawn(Air_Vehicle.TspyBlimp0002)
  Despawn(Troop.Tspy0002)
  local RandomNumber = 0
  local FirstSpyBlimp = 0
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.Spy_Balloons) and FirstSpyBlimp == 0 then
      C1M1_SpyBalloons = 1
      DebugOut("Spy Blimp should now be appearing")
      FirstSpyBlimp = 1
      Spawn(Air_Vehicle.TspyBlimp0001)
      Spawn(Air_Vehicle.TspyBlimp0002)
      Spawn(Troop.Tspy0002)
      SetObjectiveData(Objective_Marker.ObjectiveTwo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      WaitFor(2)
      ClearMessageQueue()
      PhoneMessage(25, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Happy)
    end
    if IsDead(Air_Vehicle.TspyBlimp0001) and IsDead(Air_Vehicle.TspyBlimp0002) then
      ClearMessageQueue()
      PhoneMessage(29, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Happy)
      break
    end
    EndFrame()
  end
  return
end
