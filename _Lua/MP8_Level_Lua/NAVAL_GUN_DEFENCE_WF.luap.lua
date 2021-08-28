function NAVAL_GUN_DEFENCE_WF(owner)
  NavalGunDefenceWF = owner
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
      WaitFor(0.5)
    until GetHealthPercent(Building.WFnavalgun1) < 100 or 100 > GetHealthPercent(Building.WFnavalgun2)
    PhoneMessage(45, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
    EndFrame()
    repeat
      EndFrame()
      WaitFor(0.5)
    until IsDead(Building.WFnavalgun1) == true or IsDead(Building.WFnavalgun2) == true
    PhoneMessage(46, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
    EndFrame()
    repeat
      EndFrame()
      WaitFor(0.5)
    until IsDead(Building.WFnavalgun1) == true and IsDead(Building.WFnavalgun2) == true
    PhoneMessage(47, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
    EndFrame()
  end
  EndFrame()
end
