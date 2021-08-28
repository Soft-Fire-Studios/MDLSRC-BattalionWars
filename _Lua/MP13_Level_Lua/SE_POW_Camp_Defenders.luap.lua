function SE_POW_Camp_Defenders(owner)
  while true do
    if NumItemsInArea(Map_Zone.SE_POW_Camp_S, flag.TYPE_WFRONTIER) > 0 or 0 < NumItemsInArea(Map_Zone.SE_POW_Camp_S, flag.TYPE_TUNDRAN) then
      DebugOut("players in SW of S POW Camp")
      WaitFor(1)
      GoToArea(Unit_Group.South, 490, -95, 35)
      SetUnitAI(Troop.Entity0179, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Troop.Entity0179, constant.AI_MOVE_STYLE, constant.MOVESTYLE_ATTACK_ON_SIGHT)
      SetUnitAI(Troop.Entity0180, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Troop.Entity0180, constant.AI_MOVE_STYLE, constant.MOVESTYLE_ATTACK_ON_SIGHT)
      break
    elseif 0 < NumItemsInArea(Map_Zone.SE_POW_Camp_E, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.SE_POW_Camp_E, flag.TYPE_TUNDRAN) then
      DebugOut("players in S POW Camp")
      WaitFor(1)
      GoToArea(Unit_Group.South, 555, -65, 35)
      SetUnitAI(Troop.Entity0179, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Troop.Entity0179, constant.AI_MOVE_STYLE, constant.MOVESTYLE_ATTACK_ON_SIGHT)
      SetUnitAI(Troop.Entity0180, constant.AI_ATTACK_STYLE, constant.ATTACKSTYLE_AGGRESSIVE)
      SetUnitAI(Troop.Entity0180, constant.AI_MOVE_STYLE, constant.MOVESTYLE_ATTACK_ON_SIGHT)
      break
    else
      EndFrame()
    end
  end
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) and netvariable.player1.p1dead == 0 then
    PhoneMessage(46, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) and netvariable.player2.p2dead == 0 then
    PhoneMessage(45, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nelly_Happy, constant.PLAYER_TWO)
  end
end
