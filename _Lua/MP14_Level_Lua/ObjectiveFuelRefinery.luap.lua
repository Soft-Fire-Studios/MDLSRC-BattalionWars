function ObjectiveFuelRefinery(owner)
  scriptObjectiveFuelRefinery = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  repeat
    if IsDead(Building.FuelRefinery1) or IsDead(Building.FuelRefinery2) or IsDead(Building.FuelRefinery3) or IsDead(Building.FuelRefinery4) or IsDead(Building.FuelRefinery5) or IsDead(Building.FuelRefinery6) or IsDead(Building.FuelRefinery7) or IsDead(Building.FuelRefinery8) or IsDead(Building.FuelRefinery9) then
      SetObjectiveData(Objective.FuelTank, constant.OBJECTIVE_DATA_STATE, 1)
      Kill(Building.FuelRefinery1)
      Kill(Building.FuelRefinery2)
      Kill(Building.FuelRefinery3)
      Kill(Building.FuelRefinery4)
      Kill(Building.FuelRefinery5)
      Kill(Building.FuelRefinery6)
      Kill(Building.FuelRefinery7)
      Kill(Building.FuelRefinery8)
      Kill(Building.FuelRefinery9)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      chopperstatus = 2
      DebugOut("Fuel Refinery Objective Complete")
      if objectivescomplete == 0 then
        if communicationstower == 0 and munitionsdump == 0 then
          PhoneMessageWithObjective(6, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(6, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        if communicationstower == 0 and munitionsdump == 1 then
          PhoneMessageWithObjective(7, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(7, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        if communicationstower == 1 and munitionsdump == 0 then
          PhoneMessageWithObjective(8, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(8, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        PhoneMessage(19, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        PhoneMessage(19, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
      end
      fuelrefinery = 1
    end
    EndFrame()
  until fuelrefinery == 1
end
