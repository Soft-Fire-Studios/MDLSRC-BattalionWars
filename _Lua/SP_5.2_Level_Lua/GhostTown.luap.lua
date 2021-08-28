function GhostTown(owner)
  scriptGhostTown = owner
  repeat
    EndFrame()
  until IsUnderPlayerCommand(Troop.TAirTransport1Pilot2, constant.PLAYER_ONE) or IsUnderPlayerCommand(Troop.TAirTransport1Pilot3, constant.PLAYER_ONE) or IsUnderPlayerCommand(Troop.TAirTransport1Pilot4, constant.PLAYER_ONE) or IsUnderPlayerCommand(Troop.TAirTransport1Pilot5, constant.PLAYER_ONE) or IsUnderPlayerCommand(Troop.TAirTransport1Pilot6, constant.PLAYER_ONE) or IsUnderPlayerCommand(Troop.TAirTransport2Pilot2, constant.PLAYER_ONE) or IsUnderPlayerCommand(Troop.TAirTransport2Pilot3, constant.PLAYER_ONE) or IsUnderPlayerCommand(Troop.TAirTransport2Pilot4, constant.PLAYER_ONE) or IsUnderPlayerCommand(Ground_Vehicle.TLightTank1, constant.PLAYER_ONE) or IsUnderPlayerCommand(Ground_Vehicle.TLightTank2, constant.PLAYER_ONE)
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.GhostTownIntroduction) then
      PhoneMessage(21, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
      break
    end
    EndFrame()
  end
  DebugOut("Ghost Town introduction done")
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.GhostTownFlamers) then
      PhoneMessage(22, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.XFlameAmbushers1, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XFlameAmbushers2, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XFlameAmbushers3, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownFlamer1, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownFlamer2, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownFlamer3, 0, 294, 5, 0, constant.ORDER_NORMAL)
      break
    end
    if IsAttacking(Troop.XFlameAmbushers1) or IsAttacking(Troop.XFlameAmbushers2) or IsAttacking(Troop.XFlameAmbushers3) or IsAttacking(Troop.GhostTownFlamer1) or IsAttacking(Troop.GhostTownFlamer2) or IsAttacking(Troop.GhostTownFlamer3) then
      PhoneMessage(22, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.XFlameAmbushers1, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XFlameAmbushers2, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XFlameAmbushers3, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownFlamer1, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownFlamer2, 0, 294, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownFlamer3, 0, 294, 5, 0, constant.ORDER_NORMAL)
      break
    end
    EndFrame()
  end
  DebugOut("Flamers sent to attack player")
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.GhostTownBazookas) or IsDead(Troop.XFlameAmbushers1) and IsDead(Troop.XFlameAmbushers2) and IsDead(Troop.XFlameAmbushers3) and IsDead(Troop.GhostTownFlamer1) and IsDead(Troop.GhostTownFlamer2) and IsDead(Troop.GhostTownFlamer3) then
      PhoneMessage(23, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.XBazookaAmbushers1, 64, 282, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XBazookaAmbushers2, 64, 290, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XBazookaAmbushers3, 64, 298, 5, 0, constant.ORDER_NORMAL)
      break
    end
    EndFrame()
    if IsAttacking(Troop.XBazookaAmbushers1) or IsAttacking(Troop.XBazookaAmbushers2) or IsAttacking(Troop.XBazookaAmbushers3) then
      PhoneMessage(23, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.XBazookaAmbushers1, 64, 282, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XBazookaAmbushers2, 64, 290, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XBazookaAmbushers3, 64, 298, 5, 0, constant.ORDER_NORMAL)
      break
    end
  end
  DebugOut("Bazooka Vets sent to attack player")
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.GhostTownUBend) then
      PhoneMessage(24, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.UBendFlamers1, 80, 411, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.UBendFlamers2, 80, 411, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.UBendFlamers3, 80, 411, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.UBendFlamers4, 80, 411, 5, 0, constant.ORDER_NORMAL)
      break
    end
    EndFrame()
    if IsAttacking(Troop.UBendFlamers1) or IsAttacking(Troop.UBendFlamers2) or IsAttacking(Troop.UBendFlamers3) or IsAttacking(Troop.UBendFlamers4) then
      PhoneMessage(24, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.UBendFlamers1, 80, 411, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.UBendFlamers2, 80, 411, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.UBendFlamers3, 80, 411, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.UBendFlamers4, 80, 411, 5, 0, constant.ORDER_NORMAL)
      break
    end
  end
  DebugOut("U-Bend flamers sent to attack player")
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.GhostTownBazookaWave2) then
      PhoneMessage(20, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.GhostTownBazookaWave2Bazooka1, 196, 303, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownBazookaWave2Bazooka2, 205, 303, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownBazookaWave2Bazooka3, 213, 303, 5, 0, constant.ORDER_NORMAL)
      break
    end
    EndFrame()
    if IsAttacking(Troop.GhostTownBazookaWave2Bazooka1) or IsAttacking(Troop.GhostTownBazookaWave2Bazooka2) or IsAttacking(Troop.GhostTownBazookaWave2Bazooka3) then
      PhoneMessage(20, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.GhostTownBazookaWave2Bazooka1, 196, 303, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownBazookaWave2Bazooka2, 205, 303, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.GhostTownBazookaWave2Bazooka3, 213, 303, 5, 0, constant.ORDER_NORMAL)
      break
    end
  end
  DebugOut("Second wave Bazooka Vets sent to attack player")
  while true do
    if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.GhostTownAmbush) then
      PhoneMessage(19, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.XFlamerAmbushers1, 224, 231, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XFlamerAmbushers2, 224, 231, 5, 0, constant.ORDER_NORMAL)
      break
    end
    EndFrame()
    if IsAttacking(Troop.XFlamerAmbushers1) or IsAttacking(Troop.XFlamerAmbushers2) then
      PhoneMessage(19, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
      GoToArea(Troop.XFlamerAmbushers1, 224, 231, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.XFlamerAmbushers2, 224, 231, 5, 0, constant.ORDER_NORMAL)
      break
    end
  end
end
