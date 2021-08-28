function SE_Grunts(owner)
  local loop = 0
  while loop == 0 do
    if 0 < NumItemsInArea(Map_Zone.SEGrunts, flag.TYPE_WFRONTIER) then
      PhoneMessage(45, 0, 3, 6, SpriteID.CO_SE_Leiqo_Happy)
      loop = 1
    end
    EndFrame()
  end
  loop = 0
  while loop == 0 do
    if GetPlayerUnit() ~= 0 and GetMovementState(GetPlayerUnit()) ~= constant.MOVEMENT_STATE_SWIMMING then
      if GetActionState(Troop.SE_Grunt1) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.SE_Grunt1, GetPlayerUnit(), -1, 0)
      end
      if GetActionState(Troop.SE_Grunt2) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.SE_Grunt2, GetPlayerUnit(), -1, 0)
      end
      if GetActionState(Troop.SE_Grunt3) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.SE_Grunt3, GetPlayerUnit(), -1, 0)
      end
      if GetActionState(Troop.SE_Grunt4) ~= constant.ACTION_STATE_ATTACK then
        FollowUnit(Troop.SE_Grunt4, GetPlayerUnit(), -1, 0)
      end
    end
    WaitFor(3)
  end
end
