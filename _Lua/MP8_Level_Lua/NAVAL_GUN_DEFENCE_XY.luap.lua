function NAVAL_GUN_DEFENCE_XY(owner)
  NavalGunDefenceXY = owner
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
      WaitFor(0.5)
    until GetHealthPercent(Building.XYnavalgun1) < 100 or 100 > GetHealthPercent(Building.XYnavalgun2)
    PhoneMessage(51, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
    EndFrame()
    repeat
      EndFrame()
      WaitFor(0.5)
    until IsDead(Building.XYnavalgun1) == true or IsDead(Building.XYnavalgun2) == true
    PhoneMessage(52, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
    EndFrame()
    repeat
      EndFrame()
      WaitFor(0.5)
    until IsDead(Building.XYnavalgun1) == true and IsDead(Building.XYnavalgun2) == true
    PhoneMessage(53, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Sad, constant.PLAYER_TWO)
    EndFrame()
  end
  EndFrame()
end
