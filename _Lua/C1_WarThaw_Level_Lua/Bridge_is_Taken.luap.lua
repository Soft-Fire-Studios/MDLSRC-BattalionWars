function Bridge_is_Taken(owner)
  WaitFor(30)
  repeat
    EndFrame()
  until IsDead(Troop.T32_Rifleman) and IsDead(Troop.T31_Rifleman) and IsDead(Troop.T21_RifleMan) and IsDead(Troop.T12_RifleMan)
  PhoneMessage(56, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
  EndFrame()
end
