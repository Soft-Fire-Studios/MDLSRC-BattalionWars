function LookOutExtractionPoint(owner)
  scriptLookOutExtractionPoint = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  local xcoords = 0
  local zcoords = 0
  WaitFor(5)
  while true do
    WaitFor(0.2)
    if GetActionState(Troop.Bazooka1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.Bazooka2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.Bazooka3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.AcidGas4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.AcidGas5) == constant.ACTION_STATE_ATTACK then
      break
    end
    if GetActionState(Ground_Vehicle.XLightTank1) == constant.ACTION_STATE_ATTACK or GetActionState(Building.ExitTower3) == constant.ACTION_STATE_ATTACK or GetActionState(Building.ExitTower4) == constant.ACTION_STATE_ATTACK then
      break
    end
    EndFrame()
  end
  lookoutextractionpoint = 1
  DebugOut("Player is attacking the extraction point")
  repeat
    WaitFor(0.2)
    EndFrame()
  until 0 < NumItemsInArea(Map_Zone.ExtractionPointEastEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.ExtractionPointNorthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.ExtractionPointEastEntrance, flag.TYPE_SOLAR) or 0 < NumItemsInArea(Map_Zone.ExtractionPointNorthEntrance, flag.TYPE_SOLAR)
  if 0 < NumItemsInArea(Map_Zone.ExtractionPointNorthEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.ExtractionPointNorthEntrance, flag.TYPE_SOLAR) then
    xcoords = -61
    zcoords = -313
    DebugOut("Player is approaching North Entrance of the Extraction Point")
  end
  if 0 < NumItemsInArea(Map_Zone.ExtractionPointEastEntrance, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.ExtractionPointEastEntrance, flag.TYPE_SOLAR) then
    xcoords = 17
    zcoords = -469
    DebugOut("Player is approaching East Entrance of the Extraction Point")
  end
  GoToArea(Troop.AcidGas4, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.AcidGas5, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.Bazooka1, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.Bazooka2, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Troop.Bazooka3, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Ground_Vehicle.XLightTank1, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XGunship1, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XGunship2, xcoords, zcoords, 5, constant.ORDER_NORMAL)
  DebugOut("Troops sent to intercept")
end
