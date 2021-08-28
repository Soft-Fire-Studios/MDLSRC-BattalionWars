function CAPTURE_THE_AIRBASE(owner)
  scriptAirbaseDefence = owner
  Despawn(Air_Vehicle.Ttransport1)
  WaitFor(5)
  repeat
    EndFrame()
    WaitFor(1)
  until NumItemsInArea(Map_Zone.THQwarningzone1, flag.TYPE_WFRONTIER) > 0 and ForceSpawningStopped == false
  Spawn(Air_Vehicle.Ttransport1)
  WaitFor(0.5)
  LandAirUnit(Air_Vehicle.Ttransport1, GetObjectXPosition(Waypoint.land1), GetObjectZPosition(Waypoint.land1), constant.ORDER_FORCED, 0, 10, 90)
  PhoneMessage(62, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
  repeat
    WaitFor(30)
    if ForceSpawningStopped == false and IsReadyToRevive(Troop.Tflame17) and IsReadyToRevive(Troop.Tflame18) and IsReadyToRevive(Troop.Tflame19) and IsReadyToRevive(Troop.Tflame20) and IsReadyToRevive(Ground_Vehicle.Tltank08) and IsReadyToRevive(Air_Vehicle.Ttransport1) and IsReadyToRevive(Troop.Tpilot1) and NumItemsInArea(Map_Zone.THQwarningzone1, flag.TYPE_WFRONTIER) > 0 then
      local AirTransportPilot = FindDeadUnit(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT)
      ReviveDeadUnit(Air_Vehicle.Ttransport1, 160, 1120, 180, 5)
      ReviveDeadUnit(Troop.Tpilot1, -465, 800, 180, 5)
      ReviveDeadUnit(Troop.Tflame17, -465, 800, 180, 5)
      ReviveDeadUnit(Troop.Tflame18, -465, 800, 180, 5)
      ReviveDeadUnit(Troop.Tflame19, -465, 800, 180, 5)
      ReviveDeadUnit(Troop.Tflame20, -465, 800, 180, 5)
      ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Ground_Vehicle.Tltank08, -465, 800, 180, 5)
      WaitFor(0.1)
      PutUnitInVehicle(Troop.Tpilot1, Air_Vehicle.Ttransport1, 0)
      PutUnitInVehicle(Troop.Tflame17, Air_Vehicle.Ttransport1, 3)
      PutUnitInVehicle(Troop.Tflame18, Air_Vehicle.Ttransport1, 4)
      PutUnitInVehicle(Troop.Tflame19, Air_Vehicle.Ttransport1, 5)
      PutUnitInVehicle(Troop.Tflame20, Air_Vehicle.Ttransport1, 7)
      PutUnitInVehicle(Ground_Vehicle.Tltank08, Air_Vehicle.Ttransport1, 6)
      WaitFor(0.5)
      LandAirUnit(Air_Vehicle.Ttransport1, GetObjectXPosition(Waypoint.land1), GetObjectZPosition(Waypoint.land1), constant.ORDER_FORCED, 0, 10, 90)
      DebugOut("Air unit landing")
      if random > 200 then
        PhoneMessage(63, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      elseif random > 150 then
        PhoneMessage(79, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      elseif random > 100 then
        PhoneMessage(80, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      elseif random > 50 then
        PhoneMessage(81, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      else
        PhoneMessage(82, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      end
      repeat
        EndFrame()
        WaitFor(0.1)
      until GetMovementState(Air_Vehicle.Ttransport1) == constant.MOVEMENT_STATE_ON_GROUND
      DebugOut("Air unit landed")
      ExitVehicle(Troop.Tflame17, constant.ID_NONE)
      ExitVehicle(Troop.Tflame18, constant.ID_NONE)
      ExitVehicle(Troop.Tflame19, constant.ID_NONE)
      ExitVehicle(Troop.Tflame20, constant.ID_NONE)
      ExitVehicle(Ground_Vehicle.Tltank08, constant.ID_NONE)
      WaitFor(2)
      GoToArea(Air_Vehicle.Ttransport1, 504, 1290, 0, constant.ORDER_FORCED)
      PlayerXPos = GetObjectXPosition(GetPlayerUnit(constant.PLAYER_ONE))
      PlayerZPos = GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE))
      if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.THQwarningzone1) then
        GoToArea(Ground_Vehicle.Tltank08, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
        GoToArea(Troop.Tflame17, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
        GoToArea(Troop.Tflame18, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
        GoToArea(Troop.Tflame19, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
        GoToArea(Troop.Tflame20, PlayerXPos, PlayerZPos, 15, constant.ORDER_NORMAL)
      else
        GoToArea(Ground_Vehicle.Tltank08, 224, 416, 15, constant.ORDER_NORMAL)
        GoToArea(Troop.Tflame17, 224, 416, 15, constant.ORDER_NORMAL)
        GoToArea(Troop.Tflame18, 224, 416, 15, constant.ORDER_NORMAL)
        GoToArea(Troop.Tflame19, 224, 416, 15, constant.ORDER_NORMAL)
        GoToArea(Troop.Tflame20, 224, 416, 15, constant.ORDER_NORMAL)
      end
    end
    EndFrame()
  until GetState(Capture_Point.THQCP) == flag.TYPE_WFRONTIER
end
