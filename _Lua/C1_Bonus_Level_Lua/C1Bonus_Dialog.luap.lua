function C1Bonus_Dialog(owner)
  local MissileWarningDone = 0
  local MissileWarningTwoDone = 0
  local BazookaWarningDone = 0
  local HeavyTankWarningDone = 0
  local GruntWarningDone = 0
  local TGunshipMessageDone = 0
  local THeavyTankMessageDone = 0
  local TLightTankMessageDone = 0
  local TMissileMessageDone = 0
  while true do
    if IsDead(Air_Vehicle.Tgunship0001) and TGunshipMessageDone == 0 then
      TGunshipMessageDone = 1
      PhoneMessage(14, constant.ID_NONE, 0, 6, SpriteID.CO_Herman_Happy)
    end
    if (IsDead(Ground_Vehicle.TheavyTank0001) or IsDead(Ground_Vehicle.TheavyTank0002) or IsDead(Ground_Vehicle.TheavyTank0003)) and THeavyTankMessageDone == 0 then
      THeavyTankMessageDone = 1
      PhoneMessage(12, constant.ID_NONE, 0, 6, SpriteID.CO_Herman_Happy)
    end
    if (IsDead(Ground_Vehicle.TlightTank0001) or IsDead(Ground_Vehicle.TlightTank0003) or IsDead(Ground_Vehicle.TlightTank0004) or IsDead(Ground_Vehicle.TlightTank0006)) and TLightTankMessageDone == 0 then
      TLightTankMessageDone = 1
      PhoneMessage(13, constant.ID_NONE, 0, 6, SpriteID.CO_Herman_Happy)
    end
    if (IsDead(Troop.Tmissile0001) or IsDead(Troop.Tmissile0002) or IsDead(Troop.Tmissile0003) or IsDead(Troop.Tmissile0004)) and TMissileMessageDone == 0 then
      TMissileMessageDone = 1
      PhoneMessage(15, constant.ID_NONE, 0, 6, SpriteID.CO_Herman_Happy)
    end
    EndFrame()
  end
  EndFrame()
  return
end
