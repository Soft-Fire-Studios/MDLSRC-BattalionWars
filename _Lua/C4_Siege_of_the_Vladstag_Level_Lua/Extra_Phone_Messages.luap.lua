function Extra_Phone_Messages(owner)
  local loop = 0
  while loop == 0 do
    if IsDead(Building.XpillboxEmpty0004) or IsDead(Building.XpillboxEmpty0005) then
      PhoneMessage(6, 0, 2, 5, SpriteID.CO_T_Nova_Happy)
      loop = 1
    end
    EndFrame()
  end
  while loop == 1 do
    if IsDead(Air_Vehicle.TGunship1) or IsDead(Air_Vehicle.TGunship2) then
      PhoneMessage(48, 0, 2, 5, SpriteID.CO_T_Nova_Sad)
      loop = 2
    end
    EndFrame()
  end
  while loop == 2 do
    if IsDead(Air_Vehicle.TGunship1) and IsDead(Air_Vehicle.TGunship2) and IsDead(Air_Vehicle.TGunship3) and IsDead(Air_Vehicle.TGunship4) and 1 <= NumItemsInArea(Map_Zone.EnterTheStag, flag.TYPE_WFRONTIER) then
      PhoneMessage(49, 0, 2, 5, SpriteID.CO_T_Nova_Sad)
      loop = 3
    end
    EndFrame()
  end
end
