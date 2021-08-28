function ObjectiveFuelRefinery(owner)
  repeat
    if GetState(Capture_Point.FuelRefinery) == 1 then
      fuelrefinery = 1
      DebugOut("Fuel Refinery Objective Complete")
      SetObjectiveData(Objective.FuelTank, constant.OBJECTIVE_DATA_STATE, 1)
      ClearMessageQueue()
      PhoneMessage(19, 0, 1, 5, SpriteID.CO_X_Ubel_Sad)
      chopperstatus = 2
      if objectivescomplete == 0 then
        if communicationstower == 0 and munitionsdump == 0 then
          PhoneMessage(6, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
        if communicationstower == 0 and munitionsdump == 1 then
          PhoneMessage(7, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
        if communicationstower == 1 and munitionsdump == 0 then
          PhoneMessage(8, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
      end
    end
    EndFrame()
  until fuelrefinery == 1
end
