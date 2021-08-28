function WF_Vehicles(owner)
  WaitFor(1)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), -100, -115, 90)
  DebugOut("ARTILLERY TRIGGERED")
  GoToArea(Ground_Vehicle.WF_Artillery1, -100, -115, 20, nil, constant.ORDER_FORCED)
  GoToArea(Ground_Vehicle.WF_Artillery2, -100, -115, 20, nil, constant.ORDER_FORCED)
  WaitFor(2)
  GoToArea(Ground_Vehicle.WF_Artillery3, -100, -115, 40, nil, constant.ORDER_FORCED)
  repeat
    if GetPlayerUnit() == 150015950 or GetPlayerUnit() == 150015951 or GetPlayerUnit() == 150016838 then
      ArtilleryWeapons = 1
      SetActive(Ground_Vehicle.WF_Artillery1, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.WF_Artillery2, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.WF_Artillery3, constant.ACTIVE, constant.ADJUST_WEAPON)
    end
    EndFrame()
  until ArtilleryWeapons == 1
end
