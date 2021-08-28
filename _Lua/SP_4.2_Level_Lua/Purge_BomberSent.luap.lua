function Purge_BomberSent(owner)
  while true do
    if BombersSent == 1 then
      BombersSent = 2
      WaitFor(80)
    end
    EndFrame()
  end
  if missionend == 0 and pillboxobjectiveshown02 == 0 then
    PhoneMessage(18, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  end
end
