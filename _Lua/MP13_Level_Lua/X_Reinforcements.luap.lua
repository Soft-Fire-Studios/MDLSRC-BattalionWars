function X_Reinforcements(owner)
  local Copter01Landed = 0
  local Copter02Landed = 0
  local Copter01Despawned = 0
  local Copter02Despawned = 0
  Despawn(Air_Vehicle.Xtransport0001)
  Despawn(Air_Vehicle.Xtransport0002)
  Despawn(Air_Vehicle.Xgunship0001)
  while true do
    if 0 < NumItemsInArea(Map_Zone.X_Reinforcements, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.X_Reinforcements, flag.TYPE_TUNDRAN) then
      PhoneMessage(18, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_ONE)
      PhoneMessage(20, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
      PhoneMessage(19, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE)
      PhoneMessage(21, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO)
      DebugOut("Sending X Reinforcements")
      GoToArea(Troop.Entity0156, 580, 490, 25)
      GoToArea(Troop.Entity0157, 570, 490, 25)
      GoToArea(Troop.Entity0158, 580, 480, 25)
      GoToArea(Troop.Entity0159, 580, 460, 25)
      GoToArea(Troop.Entity0160, 595, 500, 25)
      GoToArea(Troop.Entity0161, 605, 450, 25)
      GoToArea(Troop.Entity0186, 560, 515, 25)
      GoToArea(Troop.Entity0187, 585, 490, 25)
      Spawn(Air_Vehicle.Xgunship0001)
      Spawn(Air_Vehicle.Xtransport0001)
      Spawn(Air_Vehicle.Xtransport0002)
      WaitFor(2)
      LandAirUnit(Air_Vehicle.Xtransport0001, 510, 480, constant.ORDER_FORCED)
      WaitFor(2)
      LandAirUnit(Air_Vehicle.Xtransport0002, 620, 420, constant.ORDER_FORCED)
      break
    end
    EndFrame()
  end
  WaitFor(4)
  GoToArea(Air_Vehicle.Xgunship0001, 600, 425, 25)
  while true do
    if Copter01Landed == 0 and GetMovementState(Air_Vehicle.Xtransport0001) == constant.MOVEMENT_STATE_ON_GROUND then
      Copter01Landed = 1
      WaitFor(2)
      DebugOut("Unload Cargo - First Transport")
      ExitVehicle(Troop.XgruntTransport0002, Air_Vehicle.Xtransport0001)
      ExitVehicle(Troop.XgruntTransport0003, Air_Vehicle.Xtransport0001)
      ExitVehicle(Troop.XgruntTransport0004, Air_Vehicle.Xtransport0001)
      ExitVehicle(Troop.XgruntTransport0005, Air_Vehicle.Xtransport0001)
      ExitVehicle(Ground_Vehicle.XlightTank0001, Air_Vehicle.Xtransport0001)
    end
    if Copter02Landed == 0 and GetMovementState(Air_Vehicle.Xtransport0002) == constant.MOVEMENT_STATE_ON_GROUND then
      Copter02Landed = 1
      WaitFor(1)
      DebugOut("Unload Cargo - Second Transport")
      ExitVehicle(Troop.XgruntTransport0007, Air_Vehicle.Xtransport0002)
      ExitVehicle(Troop.XgruntTransport0008, Air_Vehicle.Xtransport0002)
      ExitVehicle(Troop.XgruntTransport0009, Air_Vehicle.Xtransport0002)
      ExitVehicle(Troop.XgruntTransport0010, Air_Vehicle.Xtransport0002)
      WaitFor(1)
      GoToArea(Air_Vehicle.Xtransport0002, 980, 705, 25, 0, constant.ORDER_FORCED)
    end
    if Copter01Landed == 1 and NumPassengersInUnit(Air_Vehicle.Xtransport0001) == 1 then
      Copter01Landed = 2
      GoToArea(Air_Vehicle.Xtransport0001, 1140, 430, 25, 0, constant.ORDER_FORCED)
    end
    if Copter02Landed == 1 and NumPassengersInUnit(Air_Vehicle.Xtransport0002) == 1 then
      Copter02Landed = 2
      GoToArea(Air_Vehicle.Xtransport0002, 1140, 430, 25, 0, constant.ORDER_FORCED)
    end
    if Copter01Landed == 2 and Copter02Landed == 2 and Copter02Landed == 2 then
      DebugOut("Sending - Gunship Reinforcements")
    else
      EndFrame()
      while true do
        if Copter01Despawned == 0 and IsInArea(Air_Vehicle.Xtransport0001, Map_Zone.X_Despawn) then
          Copter01Despawned = 1
          DebugOut("Despawning - First Transport")
          Despawn(Air_Vehicle.Xtransport0001)
        end
        if Copter02Despawned == 0 and IsInArea(Air_Vehicle.Xtransport0002, Map_Zone.X_Despawn) then
          Copter02Despawned = 1
          DebugOut("Despawning - Second Transport")
          Despawn(Air_Vehicle.Xtransport0002)
        end
        EndFrame()
      end
    end
  end
end
