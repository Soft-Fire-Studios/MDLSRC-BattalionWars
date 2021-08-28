function NAVAL_GUN_OFFENCE_XY(owner)
  NavalGunOffenceXY = owner
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
      WaitFor(0.5)
    until IsDead(Building.WFnavalgun1) == true or IsDead(Building.WFnavalgun2) == true
    PhoneMessage(54, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_TWO)
    EndFrame()
    repeat
      EndFrame()
      WaitFor(0.5)
    until IsDead(Building.WFnavalgun1) == true and IsDead(Building.WFnavalgun2) == true
    PhoneMessage(55, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_TWO)
    EndFrame()
  end
  EndFrame()
end
