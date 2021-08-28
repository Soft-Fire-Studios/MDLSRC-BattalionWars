function C1M1_TSpyFiring(owner)
  SetUnitAI(Troop.Tspy0001, constant.AI_DODGE, constant.DODGE_NOT_ALLOWED)
  SetUnitAI(Troop.Tspy0002, constant.AI_DODGE, constant.DODGE_NOT_ALLOWED)
  SetUnitAI(Troop.Tspy0003, constant.AI_DODGE, constant.DODGE_NOT_ALLOWED)
  SetUnitAI(Troop.WFgruntWatchtower0001, constant.AI_DODGE, constant.DODGE_NOT_ALLOWED)
  SetUnitAI(Troop.WFgruntWatchtower0002, constant.AI_DODGE, constant.DODGE_NOT_ALLOWED)
  EndFrame()
  return
end
