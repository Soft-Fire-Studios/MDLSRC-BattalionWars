function LookOutMuntionsDump(owner)
  scriptLookOutMunitionsDump = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  local xcoords = 0
  local zcoords = 0
  WaitFor(5)
  while netvariable.player1.lookoutmunitions == 0 do
    WaitFor(0.2)
    if IsNetworkHost() then
      if GetActionState(Troop.XGruntDriver1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntDriver2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntDriver3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntDriver4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntRocketPatrol1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntRocketPatrol2) == constant.ACTION_STATE_ATTACK then
        DebugOut("Player is attacking the munitions dump")
        netvariable.player1.lookoutmunitions = 1
      end
      if GetActionState(Troop.XGruntWatchtower1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntWatchtower2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGruntWatchtower3) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MunitionsWatchTower1) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MunitionsWatchTower2) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MunitionsWatchTower3) == constant.ACTION_STATE_ATTACK then
        DebugOut("Player is attacking the munitions dump")
        netvariable.player1.lookoutmunitions = 1
      end
      EndFrame()
    end
    EndFrame()
  end
  if IsNetworkHost() then
    netvariable.player1.lookoutmunitions = 1
  end
  lookoutmuntionsdump = 1
  if munitionsdump == 0 then
    PhoneMessage(23, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
  end
  DebugOut("munitions dump tanks barracks grunts sent to attack")
  EnterVehicle(Troop.XGruntDriver1, Ground_Vehicle.XTank1, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntDriver2, Ground_Vehicle.XTank1, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntDriver3, Ground_Vehicle.XTank2, constant.ORDER_FORCED)
  EnterVehicle(Troop.XGruntDriver4, Ground_Vehicle.XTank2, constant.ORDER_FORCED)
  repeat
    WaitFor(0.2)
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.MunitionsDumpNorthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.MunitionsDumpSouthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.MunitionsDumpNorthEntrance, flag.TYPE_SOLAR) or 0 < NumItemsInArea(Map_Zone.MunitionsDumpSouthEntrance, flag.TYPE_SOLAR)
  if 0 < NumItemsInArea(Map_Zone.MunitionsDumpNorthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.MunitionsDumpNorthEntrance, flag.TYPE_SOLAR) then
    xcoords = -146
    zcoords = 61
    DebugOut("Player is approaching North Entrance of Munitions Dump")
  end
  if 0 < NumItemsInArea(Map_Zone.MunitionsDumpSouthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.MunitionsDumpSouthEntrance, flag.TYPE_SOLAR) then
    xcoords = -276
    zcoords = -74
    DebugOut("Player is approaching North Entrance of Munitions Dump")
  end
  GoToArea(Troop.MunitionsDumpSandbagTroop1, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.MunitionsDumpSandbagTroop2, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.MunitionsDumpSandbagTroop3, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.MunitionsDumpSandbagTroop4, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.MunitionsDumpSandbagTroop5, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Ground_Vehicle.XTank1, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Ground_Vehicle.XTank2, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Ground_Vehicle.XTank4, xcoords, zcoords, 5, constant.ORDER_NORMAL)
end
