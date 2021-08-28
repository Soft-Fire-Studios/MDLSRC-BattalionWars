function C3M1_Dialog(owner)
  local GunshipDestroyedMessageDone = 0
  local GunshipWarning = 0
  local BugsWarning = 0
  local BattlestationFollowSolar = 0
  local SolarBaseMessage = 0
  local BanterDone = 0
  local SolarMGNestDestroyedMessageDone = 0
  while true do
    if 0 < GetPlayerUnit() and IsInArea(GetPlayerUnit(), Map_Zone.Banter) and BanterDone == 0 then
      BanterDone = 1
      PhoneMessage(13, constant.ID_NONE, 1, 5, SpriteID.CO_X_Ingrid_Happy)
      PhoneMessage(14, constant.ID_NONE, 3, 5, SpriteID.CO_SE_Leiqo_Happy)
    end
    if IsDead(Air_Vehicle.WFgunship0001) and LevelEnding == 0 and GunshipDestroyedMessageDone == 0 then
      GunshipDestroyedMessageDone = 1
      PhoneMessage(33, constant.ID_NONE, 1, 6, SpriteID.CO_X_Ingrid_Happy)
    end
    if SolarBaseMessage == 0 and 0 < GetPlayerUnit() and IsInArea(GetPlayerUnit(), 345, -265, 200) and not IsDead(Ground_Vehicle.Xbattlestation0001) then
      SolarBaseMessage = 1
      PhoneMessage(29, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Happy)
    end
    if (IsDead(Building.SmgNest0001) or IsDead(Building.SmgNest0002)) and SolarMGNestDestroyedMessageDone == 0 and not IsDead(Ground_Vehicle.Xbattlestation0001) then
      SolarMGNestDestroyedMessageDone = 1
      PhoneMessage(30, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Betty_Sad)
    end
    EndFrame()
  end
  return
end
