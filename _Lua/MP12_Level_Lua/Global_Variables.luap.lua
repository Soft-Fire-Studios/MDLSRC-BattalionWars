function Global_Variables(owner)
  scriptoob = 0
  freezedelay = 0.5
  missioncomplete = 0
  missionend = 0
  airbase = 0
  introcutscene = 0
  midtrocutscene = 0
  cutscene = 0
  mid = 0
  mortars = 0
  fightertext = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(489, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Aqira_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(484, constant.ARMY_TUNDRAN, 8, SpriteID.CO_T_Nova_Sad)
  end
  playeroneco = SpriteID.CO_SE_Aqira_Happy
  playertwoco = SpriteID.CO_T_Nova_Happy
  playeronearmy = constant.ARMY_SOLAR
  playertwoarmy = constant.ARMY_TUNDRAN
  netvariable.player1.transports = 0
  netvariable.player1.cutsceneskippedmidtro = 0
  netvariable.player2.cutsceneskippedmidtro = 0
  netvariable.player1.cutsceneskippedoutro = 0
  netvariable.player2.cutsceneskippedoutro = 0
  netvariable.player1.cutsceneskipped = 0
  netvariable.player2.cutsceneskipped = 0
  netvariable.player1.deadtrans = 0
  netvariable.player2.deadtrans = 0
  netvariable.player1.pow1spawn = 0
  netvariable.player1.pow2spawn = 0
  netvariable.player1.wait = 0
  netvariable.player1.docks = 0
  netvariable.player1.bridge = 0
  netvariable.player1.hq = 0
  netvariable.player1.POWs = 0
  netvariable.player1.POW2 = 0
  netvariable.player2.mid = 0
  netvariable.player1.p1dead = 0
  netvariable.player2.p2dead = 0
  netvariable.player1.p1infdead = 0
  netvariable.player2.p2infdead = 0
  star = 0
  text = 0
  script1 = 0
  script2 = 0
  script3 = 0
  script4 = 0
  script5 = 0
  script6 = 0
  script7 = 0
  script8 = 0
  script0 = 0
  script10 = 0
  netvariable.player1.winmission = 0
  function coopMarkerFriend(player)
    if player == 0 then
      PhoneMessage(65, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy)
    else
      PhoneMessage(66, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    end
  end
  function coopMarkerEnemy(player)
    if player == 0 then
      PhoneMessage(68, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy)
    else
      PhoneMessage(69, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    end
  end
  function coopMarkerCapturePoint(player)
    if player == 0 then
      PhoneMessage(71, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy)
    else
      PhoneMessage(72, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    end
  end
  function coopMarkerMGN(player)
    if player == 0 then
      PhoneMessage(74, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy)
    else
      PhoneMessage(75, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    end
  end
  function coopMarkerPlace(player)
    if player == 0 then
      PhoneMessage(77, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy)
    else
      PhoneMessage(78, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    end
  end
  function coopMarkerYes(player)
    if player == 0 then
      PhoneMessage(80, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy)
    else
      PhoneMessage(81, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    end
  end
  function coopMarkerNo(player)
    if player == 0 then
      PhoneMessage(83, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Happy)
    else
      PhoneMessage(84, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy)
    end
  end
end
