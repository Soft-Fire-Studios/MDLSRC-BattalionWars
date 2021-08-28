function ObjectiveCommunicationsTower(owner)
  scriptObjectiveCommunicationsTower = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  repeat
    if IsDead(Building.CommunicationsTower) then
      DebugOut("Communications Tower Objective Complete")
      SetObjectiveData(Objective.CommunicationsTower, constant.OBJECTIVE_DATA_STATE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      if objectivescomplete == 0 then
        chopperstatus = 0
        if fuelrefinery == 0 and munitionsdump == 0 then
          PhoneMessageWithObjective(12, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(12, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        if fuelrefinery == 1 and munitionsdump == 0 then
          PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        if fuelrefinery == 0 and munitionsdump == 1 then
          PhoneMessageWithObjective(14, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(14, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        PhoneMessage(20, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        PhoneMessage(20, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
        WaitFor(10)
      end
      communicationstower = 1
    end
    EndFrame()
  until communicationstower == 1
end
