function ObjectivesComplete(owner)
  repeat
    if fuelrefinery == 1 and munitionsdump == 1 and communicationstower == 1 then
      objectivescomplete = 1
      DebugOut("All Objectives Complete")
      PhoneMessage(16, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(47, 0, 1, 6, SpriteID.CO_X_Ubel_Sad)
      PhoneMessage(30, 0, 0, 7, SpriteID.CO_WF_Herman_Happy)
    end
    EndFrame()
  until objectivescomplete == 1
  chopperstatus = 3
  SetObjectiveData(Objective.Escape, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Escape, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), -100, -430, 50)
  GoToArea(Air_Vehicle.XGunship1, -633, 300, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.XGunship2, -633, 300, constant.ORDER_FORCED)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), -111, -440, 30) and 1 > NumItemsInArea(-100, -430, 60, flag.TYPE_XYLVANIAN)
  startouttro = 1
end
