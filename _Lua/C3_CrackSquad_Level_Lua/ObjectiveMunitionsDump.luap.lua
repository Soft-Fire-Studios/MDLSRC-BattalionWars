function ObjectiveMunitionsDump(owner)
  repeat
    if IsDead(Building.RocketDump1) or IsDead(Building.RocketDump2) or IsDead(Building.RocketDump3) then
      munitionsdump = 1
      Kill(Building.RocketDump1)
      Kill(Building.RocketDump2)
      Kill(Building.RocketDump3)
      DebugOut("Munitions Dump Objective Complete")
      SetObjectiveData(Objective.MunitionsDump, constant.OBJECTIVE_DATA_STATE, 1)
      ClearMessageQueue()
      PhoneMessage(21, 0, 1, 5, SpriteID.CO_X_Ubel_Sad)
      if objectivescomplete == 0 then
        if communicationstower == 0 and fuelrefinery == 0 then
          PhoneMessage(9, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
        if communicationstower == 0 and fuelrefinery == 1 then
          PhoneMessage(10, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
        if communicationstower == 1 and fuelrefinery == 0 then
          PhoneMessage(11, 0, 0, 8, SpriteID.CO_WF_Herman_Happy)
        end
      end
    end
    EndFrame()
  until munitionsdump == 1
  if chopperstatus == 3 then
    WaitFor(60)
    AttackTarget(Air_Vehicle.XGunship1, GetPlayerUnit())
    AttackTarget(Air_Vehicle.XGunship2, GetPlayerUnit())
  end
end
