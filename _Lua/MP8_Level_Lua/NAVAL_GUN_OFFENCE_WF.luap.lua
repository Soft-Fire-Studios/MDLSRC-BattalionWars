function NAVAL_GUN_OFFENCE_WF(owner)
  NavalGunOffenceWF = owner
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
      WaitFor(0.5)
    until IsDead(Building.XYnavalgun1) == true or IsDead(Building.XYnavalgun2) == true
    PhoneMessage(48, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
    EndFrame()
    repeat
      EndFrame()
      WaitFor(0.5)
    until IsDead(Building.XYnavalgun1) == true and IsDead(Building.XYnavalgun2) == true
    PhoneMessage(49, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
    EndFrame()
  end
  EndFrame()
end
