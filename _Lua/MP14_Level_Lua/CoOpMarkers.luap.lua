function CoOpMarkers(owner)
  scriptCoOpMarkers = owner
  function coopMarkerFriend(player)
    if player == 0 then
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
    else
      PhoneMessage(78, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy)
    end
  end
  function coopMarkerEnemy(player)
    if player == 0 then
      PhoneMessage(80, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
    else
      PhoneMessage(81, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy)
    end
  end
  function coopMarkerCapturePoint(player)
    if player == 0 then
      PhoneMessage(83, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
    else
      PhoneMessage(84, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy)
    end
  end
  function coopMarkerMGN(player)
    if player == 0 then
      PhoneMessage(86, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
    else
      PhoneMessage(87, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy)
    end
  end
  function coopMarkerPlace(player)
    if player == 0 then
      PhoneMessage(89, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
    else
      PhoneMessage(90, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy)
    end
  end
  function coopMarkerYes(player)
    if player == 0 then
      PhoneMessage(92, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy)
    else
      PhoneMessage(93, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy)
    end
  end
  function coopMarkerNo(player)
    if player == 0 then
      PhoneMessage(95, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad)
    else
      PhoneMessage(96, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad)
    end
  end
end
