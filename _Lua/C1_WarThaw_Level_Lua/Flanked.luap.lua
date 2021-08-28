function Flanked(owner)
  third = owner
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.Trigger7) and NumItemsInArea(Map_Zone.Trigger7, flag.TYPE_TUNDRAN) > 1
  PhoneMessage(37, 0, 0, 4, SpriteID.CO_WF_Herman_Happy)
  EndFrame()
end
