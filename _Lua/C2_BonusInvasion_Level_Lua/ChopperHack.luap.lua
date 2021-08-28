function ChopperHack(owner)
  chopperhack = owner
  local passenger1 = 0
  local passenger2 = 0
  local passenger3 = 0
  local passenger4 = 0
  local passenger5 = 0
  local passenger6 = 0
  local passenger7 = 0
  repeat
    if passenger1 == 0 and IsInArea(Troop.CutsceneGrunt1, -475, -233, 18) then
      EnterVehicle(Troop.CutsceneGrunt1, Air_Vehicle.CutsceneChopper, constant.ORDER_FORCED)
      passenger1 = 1
    end
    if passenger2 == 0 and IsInArea(Troop.CutsceneGrunt2, -475, -233, 18) then
      EnterVehicle(Troop.CutsceneGrunt2, Air_Vehicle.CutsceneChopper, constant.ORDER_FORCED)
      passenger2 = 1
    end
    if passenger3 == 0 and IsInArea(Troop.CutsceneGrunt3, -475, -233, 18) then
      EnterVehicle(Troop.CutsceneGrunt3, Air_Vehicle.CutsceneChopper, constant.ORDER_FORCED)
      passenger3 = 1
    end
    if passenger4 == 0 and IsInArea(Troop.CutsceneGrunt4, -475, -233, 18) then
      EnterVehicle(Troop.CutsceneGrunt4, Air_Vehicle.CutsceneChopper, constant.ORDER_FORCED)
      passenger4 = 1
    end
    if passenger5 == 0 and IsInArea(Troop.CutsceneGrunt5, -475, -233, 18) then
      EnterVehicle(Troop.CutsceneGrunt5, Air_Vehicle.CutsceneChopper, constant.ORDER_FORCED)
      passenger5 = 1
    end
    if passenger6 == 0 and IsInArea(Troop.CutsceneGrunt6, -475, -233, 18) then
      EnterVehicle(Troop.CutsceneGrunt6, Air_Vehicle.CutsceneChopper, constant.ORDER_FORCED)
      passenger6 = 1
    end
    if passenger7 == 0 and IsInArea(Troop.CutsceneGrunt7, -475, -233, 18) then
      EnterVehicle(Troop.CutsceneGrunt7, Air_Vehicle.CutsceneChopper, constant.ORDER_FORCED)
      passenger7 = 1
    end
    EndFrame()
  until passenger7 == 2
end
