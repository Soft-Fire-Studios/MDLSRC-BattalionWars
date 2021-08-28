function CheckEasternFlag(owner)
  repeat
    WaitFor(0.5)
    if missionfailed == 1 then
      return
    end
    if GetActionState(Troop.XGrunt8) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGrunt11) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGrunt13) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XGrunt15) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MGTower3) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MGTower4) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MGTower7) == constant.ACTION_STATE_ATTACK or GetActionState(Building.MGTower8) == constant.ACTION_STATE_ATTACK then
      attackeast = 1
    end
    EndFrame()
  until attackeast == 1
  ClearMessageQueue()
  PhoneMessage(3, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  PhoneMessage(22, 0, 1, 6, SpriteID.CO_X_Vlad_Sad)
  AttackTarget(Troop.XGrunt9, GetPlayerUnit())
  AttackTarget(Troop.XGrunt10, GetPlayerUnit())
  AttackTarget(Troop.XGrunt16, GetPlayerUnit())
end
