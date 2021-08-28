function LookOutFuelRefinery(owner)
  scriptLookOutFuelRefinery = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  local xcoords = 0
  local zcoords = 0
  WaitFor(5)
  while netvariable.player1.FuelRefinery == 0 do
    WaitFor(0.2)
    if IsNetworkHost() then
      if GetActionState(Troop.XBazookaPatrolFuelRefinery1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaPatrolFuelRefinery2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaPatrolFuelRefinery3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaPatrolFuelRefinery4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XBazookaPatrolFuelRefinery5) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XFlamerPatrolFuelRefinery1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XFlamerPatrolFuelRefinery2) == constant.ACTION_STATE_ATTACK then
        DebugOut("Player is attacking the fuel refinery")
        netvariable.player1.FuelRefinery = 1
      end
      EndFrame()
    end
    EndFrame()
  end
  if IsNetworkHost() then
    netvariable.player1.FuelRefinery = 1
  end
  lookoutfuelrefinery = 1
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessage(34, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
  PhoneMessage(34, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
  repeat
    WaitFor(0.2)
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.FuelRefineryEastEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.FuelRefineryNorthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.FuelRefinerySouthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.FuelRefineryEastEntrance, flag.TYPE_SOLAR) or 0 < NumItemsInArea(Map_Zone.FuelRefineryNorthEntrance, flag.TYPE_SOLAR) or 0 < NumItemsInArea(Map_Zone.FuelRefinerySouthEntrance, flag.TYPE_SOLAR)
  if 0 < NumItemsInArea(Map_Zone.FuelRefineryEastEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.FuelRefineryEastEntrance, flag.TYPE_SOLAR) then
    xcoords = 160
    zcoords = -71
    DebugOut("Player is approaching East Entrance of Fuel Refinery")
  end
  if 0 < NumItemsInArea(Map_Zone.FuelRefineryNorthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.FuelRefineryNorthEntrance, flag.TYPE_SOLAR) then
    xcoords = 77
    zcoords = 5
    DebugOut("Player is approaching North Entrance of Fuel Refinery")
  end
  if 0 < NumItemsInArea(Map_Zone.FuelRefinerySouthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.FuelRefinerySouthEntrance, flag.TYPE_SOLAR) then
    xcoords = 75
    zcoords = -164
    DebugOut("Player is approaching South Entrance of Fuel Refinery")
  end
  GoToArea(Troop.XFlamerPatrolFuelRefinery1, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XFlamerPatrolFuelRefinery2, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XGruntGuard3, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XGruntGuard4, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XGruntGuard5, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XBazookaPatrolFuelRefinery1, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.XBazookaPatrolFuelRefinery2, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XGunship1, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XGunship2, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  DebugOut("Troops sent to intercept")
end
