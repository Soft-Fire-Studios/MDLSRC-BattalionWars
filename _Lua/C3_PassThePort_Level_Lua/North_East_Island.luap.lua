function North_East_Island(owner)
  local loop = 0
  while loop == 0 do
    if GetGroupHealthPercent(Unit_Group.entrance) == 0 then
      DebugOut("entrance down")
      ClearMessageQueue()
      PhoneMessage(21, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
      if IsInArea(Air_Vehicle.bomber, Map_Zone.entrance) then
        EndFrame()
      else
        GoToArea(Ground_Vehicle.xtank5, 265, 450, 15)
        GoToArea(Ground_Vehicle.xtank6, 300, 5, 15)
      end
      AttackTarget(Air_Vehicle.gship1, GetPlayerUnit())
      WaitFor(2)
      AttackTarget(Air_Vehicle.gship2, GetPlayerUnit())
      WaitFor(3)
      AttackTarget(Air_Vehicle.gship4, GetPlayerUnit())
      WaitFor(3)
      AttackTarget(Air_Vehicle.gship5, GetPlayerUnit())
      loop = 1
    elseif 0 < NumItemsInArea(Map_Zone.entrance, flag.TYPE_WFRONTIER) then
      DebugOut("player units in entrance")
      ClearMessageQueue()
      PhoneMessage(21, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
      if IsInArea(Air_Vehicle.bomber, Map_Zone.entrance) then
        EndFrame()
      else
        GoToArea(Ground_Vehicle.xtank5, 265, 450, 15)
        GoToArea(Ground_Vehicle.xtank6, 300, 5, 15)
        GoToArea(Ground_Vehicle.Entity0023, 330, 11, 15)
      end
      AttackTarget(Air_Vehicle.gship1, GetPlayerUnit())
      WaitFor(2)
      AttackTarget(Air_Vehicle.gship2, GetPlayerUnit())
      WaitFor(3)
      AttackTarget(Air_Vehicle.gship4, GetPlayerUnit())
      WaitFor(3)
      AttackTarget(Air_Vehicle.gship5, GetPlayerUnit())
      loop = 1
    else
      if 0 < NumItemsInArea(Map_Zone.ne, flag.TYPE_WFRONTIER) then
        DebugOut("player units at back of base")
        ClearMessageQueue()
        PhoneMessage(21, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
        GoToArea(Ground_Vehicle.xtank5, 435, 285, 15)
        GoToArea(Ground_Vehicle.xtank6, 470, 290, 15)
        AttackTarget(Air_Vehicle.gship1, GetPlayerUnit())
        WaitFor(2)
        AttackTarget(Air_Vehicle.gship2, GetPlayerUnit())
        WaitFor(3)
        AttackTarget(Air_Vehicle.gship4, GetPlayerUnit())
        WaitFor(3)
        AttackTarget(Air_Vehicle.gship5, GetPlayerUnit())
        loop = 1
      else
      end
    end
    if IsInArea(Air_Vehicle.bomber, Map_Zone.netext) then
      WaitFor(1)
      if IsInArea(Air_Vehicle.bomber, Map_Zone.netext) then
        DebugOut("bomber in / near NE Island")
        ClearMessageQueue()
        AttackTarget(Air_Vehicle.gship4, Air_Vehicle.bomber)
        AttackTarget(Air_Vehicle.gship5, Air_Vehicle.bomber)
        AttackTarget(Air_Vehicle.gship1, GetPlayerUnit())
        AttackTarget(Air_Vehicle.gship2, GetPlayerUnit())
        PhoneMessage(47, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
        PhoneMessage(48, constant.ID_NONE, 1, 7, SpriteID.CO_X_Ingrid_Sad)
        loop = 2
      end
    end
    EndFrame()
  end
  while loop == 2 do
    if GetGroupHealthPercent(Unit_Group.entrance) == 0 then
      ClearMessageQueue()
      PhoneMessage(21, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
      GoToArea(Ground_Vehicle.xtank5, 265, 450, 15)
      GoToArea(Ground_Vehicle.xtank6, 300, 5, 15)
      GoToArea(Ground_Vehicle.Entity0023, 330, 11, 15)
      loop = 1
    elseif 0 < NumItemsInArea(Map_Zone.entrance, flag.TYPE_WFRONTIER) then
      ClearMessageQueue()
      PhoneMessage(21, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
      GoToArea(Ground_Vehicle.xtank5, 265, 450, 15)
      GoToArea(Ground_Vehicle.xtank6, 300, 5, 15)
      GoToArea(Ground_Vehicle.Entity0023, 330, 11, 15)
      loop = 1
    else
      if 0 < NumItemsInArea(Map_Zone.ne, flag.TYPE_WFRONTIER) then
        ClearMessageQueue()
        PhoneMessage(21, constant.ID_NONE, 1, 7, SpriteID.CO_X_Vlad_Sad)
        GoToArea(Ground_Vehicle.xtank5, 435, 285, 15)
        GoToArea(Ground_Vehicle.xtank6, 470, 290, 15)
        loop = 1
      else
      end
    end
    EndFrame()
  end
end
