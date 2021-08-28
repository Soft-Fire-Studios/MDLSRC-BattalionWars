function C1M6_LockCycling(owner)
  while true do
    if GetTargetedObject() == Troop.Tgrunt0024 or GetTargetedObject() == Troop.Tgrunt0025 or GetTargetedObject() == Troop.Tgrunt0026 or GetTargetedObject() == Troop.Tgrunt0009 or GetTargetedObject() == Troop.Tgrunt0010 or GetTargetedObject() == Troop.Tgrunt0019 or GetTargetedObject() == Troop.Tgrunt0020 or GetTargetedObject() == Troop.Tgrunt0022 or GetTargetedObject() == Troop.Tgrunt0023 or GetTargetedObject() == Troop.Tgrunt0016 or GetTargetedObject() == Troop.Tgrunt0017 or GetTargetedObject() == Troop.Tgrunt0018 then
      PhoneMessage(12, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Herman_Happy)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
