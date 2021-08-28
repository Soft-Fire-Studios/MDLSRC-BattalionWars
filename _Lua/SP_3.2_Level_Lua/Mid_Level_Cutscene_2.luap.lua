function Mid_Level_Cutscene_2(owner)
  repeat
    EndFrame()
  until beachshot == 1
  EndFrame()
  EndFrame()
  EndFrame()
  EndFrame()
  cutkiller = owner
  ClearMessageQueue()
  SetCamera(Camera.Mid_Camera_3)
  CameraSetFOV(Camera.Mid_Camera_3, 70, constant.IMMEDIATE, 25, constant.NO_WAIT)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  ClearMessageQueue()
  WaitFor(1)
  if trans1dead + trans2dead == 0 then
    PhoneMessageWithObjective(67, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  else
    PhoneMessageWithObjective(68, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  end
  if IsDead(Water_Vehicle.AI_Sea_Transport_1) == false then
    ExitVehicle(Ground_Vehicle.CS_Light_Tank_1, constant.ID_NONE)
  end
  if IsDead(Water_Vehicle.AI_Sea_Transport_2) == false then
    ExitVehicle(Ground_Vehicle.CS_Light_Tank_2, constant.ID_NONE)
  end
  WaitFor(3)
  if IsDead(Water_Vehicle.AI_Sea_Transport_1) == false then
    ExitVehicle(Troop.AI_Grunt_10, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_11, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_12, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_13, Water_Vehicle.AI_Sea_Transport_1)
    ExitVehicle(Troop.AI_Grunt_14, Water_Vehicle.AI_Sea_Transport_1)
  end
  if IsDead(Water_Vehicle.AI_Sea_Transport_2) == false then
    ExitVehicle(Troop.AI_Grunt_16, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_17, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_18, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_19, Water_Vehicle.AI_Sea_Transport_2)
    ExitVehicle(Troop.AI_Grunt_20, Water_Vehicle.AI_Sea_Transport_2)
  end
  WaitFor(5)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
