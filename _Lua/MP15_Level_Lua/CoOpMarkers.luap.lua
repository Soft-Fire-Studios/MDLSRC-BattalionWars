function CoOpMarkers(owner)
  function coopMarkerFriend(player)
    if player == 0 then
      PhoneMessage(87, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    else
      PhoneMessage(88, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy)
    end
  end
  function coopMarkerEnemy(player)
    if player == 0 then
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    else
      PhoneMessage(90, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy)
    end
  end
  function coopMarkerCapturePoint(player)
    if player == 0 then
      PhoneMessage(91, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    else
      PhoneMessage(92, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy)
    end
  end
  function coopMarkerMGN(player)
    if player == 0 then
      PhoneMessage(93, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    else
      PhoneMessage(94, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy)
    end
  end
  function coopMarkerPlace(player)
    if player == 0 then
      PhoneMessage(95, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    else
      PhoneMessage(96, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy)
    end
  end
  function coopMarkerYes(player)
    if player == 0 then
      PhoneMessage(97, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    else
      PhoneMessage(98, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy)
    end
  end
  function coopMarkerNo(player)
    if player == 0 then
      PhoneMessage(99, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Sad)
    else
      PhoneMessage(100, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Betty_Happy)
    end
  end
end
