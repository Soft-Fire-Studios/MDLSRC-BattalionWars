function ObjectiveCommunicationsTower(owner)
  repeat
    if GetState(Capture_Point.CommunicationsTower) == 1 then
      communicationstower = 1
      Kill(gunship1)
      Kill(gunship2)
      DebugOut("Communications Tower Objective Complete")
      SetObjectiveData(Objective.CommunicationsTower, constant.OBJECTIVE_DATA_STATE, 1)
      ClearMessageQueue()
      PhoneMessage(20, 0, 1, 5, SpriteID.CO_X_Ubel_Sad)
      if objectivescomplete == 0 then
        chopperstatus = 0
        GoToArea(Air_Vehicle.XGunship1, 78, 0, constant.ORDER_NORMAL)
        GoToArea(Air_Vehicle.XGunship2, 70, -154, constant.ORDER_NORMAL)
        if fuelrefinery == 0 and munitionsdump == 0 then
          PhoneMessage(12, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
        if fuelrefinery == 1 and munitionsdump == 0 then
          PhoneMessage(13, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
        if fuelrefinery == 0 and munitionsdump == 1 then
          PhoneMessage(14, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
        WaitFor(10)
        GoToArea(Air_Vehicle.XGunship1, 74, -24, constant.ORDER_FORCED)
        GoToArea(Air_Vehicle.XGunship2, 78, -120, constant.ORDER_FORCED)
      end
    end
    EndFrame()
  until communicationstower == 1
end
