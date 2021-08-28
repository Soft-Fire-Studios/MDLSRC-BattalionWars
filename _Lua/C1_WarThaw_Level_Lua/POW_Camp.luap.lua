function POW_Camp(owner)
  Despawn(Troop.T28_Rifleman)
  Despawn(Troop.T27_Rifleman)
  Despawn(Troop.T25_Rifleman)
  Despawn(Troop.T24_Rifleman)
  Despawn(Troop.T9_RifleMan)
  Despawn(Troop.T8_RifleMan)
  Despawn(Troop.T7_RifleMan)
  repeat
    EndFrame()
  until GetGroupHealthPercent(Unit_Group.Tundran_Rflmen1) == 0
  DebugOut("All Dead message")
  if finish == 0 then
    PhoneMessage(59, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
    PhoneMessage(72, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
  else
    PhoneMessage(59, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
    airtransport = 1
  end
  EndFrame()
end
