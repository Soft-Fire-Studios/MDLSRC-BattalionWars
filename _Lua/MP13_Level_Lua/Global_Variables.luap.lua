function Global_Variables(owner)
  freezedelay = 0.5
  Player1IsDead = 0
  Player2IsDead = 0
  SpawnDistance = 225
  cutkiller = 0
  AntiAirFreed = 0
  missionend = 0
  netvariable.player1.wait = 0
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  netvariable.player1.cutsceneskippedoutro = 0
  netvariable.player2.cutsceneskippedoutro = 0
  powsfreed = 0
  netvariable.player1.p1dead = 0
  netvariable.player2.p2dead = 0
  netvariable.player1.p1infdead = 0
  netvariable.player2.p2infdead = 0
  netvariable.player1.missioncomplete = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(476, 0, 8, SpriteID.CO_WF_Austin_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(483, 2, 8, SpriteID.CO_T_Nelly_Sad)
  end
  CoopSetup(Objective_Marker.Player_1, Objective_Marker.Player_2, 225)
  function coopMarkerFriend(player)
    if player == 0 then
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Austin_Happy)
    else
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nelly_Happy)
    end
  end
  function coopMarkerEnemy(player)
    if player == 0 then
      PhoneMessage(68, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Austin_Happy)
    else
      PhoneMessage(69, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nelly_Happy)
    end
  end
  function coopMarkerCapturePoint(player)
    if player == 0 then
      PhoneMessage(71, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Austin_Happy)
    else
      PhoneMessage(72, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nelly_Happy)
    end
  end
  function coopMarkerMGN(player)
    if player == 0 then
      PhoneMessage(74, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Austin_Happy)
    else
      PhoneMessage(75, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nelly_Happy)
    end
  end
  function coopMarkerPlace(player)
    if player == 0 then
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Austin_Happy)
    else
      PhoneMessage(78, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nelly_Happy)
    end
  end
  function coopMarkerYes(player)
    if player == 0 then
      PhoneMessage(80, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Austin_Happy)
    else
      PhoneMessage(81, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nelly_Happy)
    end
  end
  function coopMarkerNo(player)
    if player == 0 then
      PhoneMessage(83, constant.ID_NONE, constant.ARMY_WF, 6, SpriteID.CO_WF_Austin_Happy)
    else
      PhoneMessage(84, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nelly_Happy)
    end
  end
end
