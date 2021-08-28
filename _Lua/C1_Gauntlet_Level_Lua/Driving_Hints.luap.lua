function Driving_Hints(owner)
  WaitFor(2)
  DrivingHintsScript = owner
  repeat
    EndFrame()
  until LevelState == 3
  repeat
    if IsInArea(Ground_Vehicle.WF_Recon, 200, -336, 100) and 2 > DriveState then
      DriveState = 2
      ClearMessageQueue()
      PhoneMessage(66, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, 75, -240, 100) and 3 > DriveState then
      DriveState = 3
      ClearMessageQueue()
      PhoneMessage(9, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(10, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, -210, -220, 100) and DriveState < 3.5 then
      DriveState = 3.5
      ClearMessageQueue()
      PhoneMessage(8, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, -264, -428, 50) and DriveState < 4 then
      DriveState = 4
      ClearMessageQueue()
      PhoneMessage(11, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, -140, 61, 75) and DriveState < 5 then
      DriveState = 5
      ClearMessageQueue()
      PhoneMessage(12, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, -8, -7, 25) and DriveState < 6 then
      DriveState = 6
      WaitFor(2)
      ClearMessageQueue()
      PhoneMessage(13, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(7, 0, 2, 3, SpriteID.CO_T_Nova_Sad)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, 256, 50, 30) and DriveState < 7 then
      DriveState = 7
      ClearMessageQueue()
      PhoneMessage(16, 0, 0, 3, SpriteID.CO_WF_Betty_Happy)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, 189, 356, 75) and DriveState < 8 then
      DriveState = 8
      ClearMessageQueue()
      EnterVehicle(Troop.TGunshipPilot, Air_Vehicle.TGunship1, constant.ORDER_FORCED)
      WaitFor(1)
      GoToArea(Air_Vehicle.TGunship1, 100, 425, 5)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, 160, 450, 75) and DriveState < 9 then
      DriveState = 9
      ClearMessageQueue()
      PhoneMessage(20, 0, 2, 4, SpriteID.CO_T_Nova_Happy)
      PhoneMessage(21, 0, 0, 4, SpriteID.CO_WF_Betty_Sad)
      AttackTarget(Air_Vehicle.TGunship1, GetPlayerUnit(), constant.ORDER_FORCED)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, -60, 426, 75) and DriveState < 10 then
      DriveState = 10
      ClearMessageQueue()
      WaitFor(2)
      PhoneMessage(17, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
      SetObjectiveData(Objective.Exit_Forest, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Forest_Exit, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, Map_Zone.Trigger_Zone_1) and DriveState < 10.5 then
      SetObjectiveData(Objective_Marker.Forest_Exit, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Exit_Forest, constant.OBJECTIVE_DATA_STATE, 1)
      DriveState = 10.5
      ClearMessageQueue()
      PhoneMessage(24, 0, 0, 4, SpriteID.CO_WF_Betty_Happy)
    end
    if IsInArea(Ground_Vehicle.WF_Recon, -200, 720, 100) and DriveState < 11 then
      DriveState = 11
      ClearMessageQueue()
      PhoneMessage(25, 0, 0, 3, SpriteID.CO_WF_Betty_Sad)
    end
    EndFrame()
  until LevelState == 4
end
