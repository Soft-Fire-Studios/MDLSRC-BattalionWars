function C3M1_XInfantry(owner)
  while true do
    if IsDead(Ground_Vehicle.Xbattlestation0001) then
      break
    end
    if IsDead(Troop.Xhose0001) and IsDead(Troop.Xhose0002) and IsDead(Troop.Xhose0008) and IsDead(Troop.Xhose0009) and IsDead(Troop.Xmissile0001) and IsDead(Troop.Xmissile0002) then
      PhoneMessage(46, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
