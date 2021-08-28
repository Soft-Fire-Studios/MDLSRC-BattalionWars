function ObjectiveMunitionsDump(owner)
  scriptObjectiveMunitionsDump = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  repeat
    if IsDead(Building.RocketDump1) or IsDead(Building.RocketDump2) or IsDead(Building.RocketDump3) then
      Kill(Building.RocketDump1)
      WaitFor(0.2)
      Kill(Building.RocketDump2)
      WaitFor(0.2)
      Kill(Building.RocketDump3)
      DebugOut("Munitions Dump Objective Complete")
      SetObjectiveData(Objective.MunitionsDump, constant.OBJECTIVE_DATA_STATE, 1)
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      if objectivescomplete == 0 then
        if communicationstower == 0 and fuelrefinery == 0 then
          PhoneMessageWithObjective(9, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(9, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        if communicationstower == 0 and fuelrefinery == 1 then
          PhoneMessageWithObjective(10, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(10, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        if communicationstower == 1 and fuelrefinery == 0 then
          PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
          PhoneMessageWithObjective(11, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
        end
        PhoneMessage(21, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        PhoneMessage(21, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
      end
      munitionsdump = 1
    end
    EndFrame()
  until munitionsdump == 1
end
