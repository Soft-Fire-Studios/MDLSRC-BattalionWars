function RAT_Gulag_East_Defences(owner)
  scriptGulagEastDefences = owner
  local MiddleDone = 0
  local BottomDone = 0
  while missionend == 0 do
    if MiddleDone == 0 then
      if IsInArea(GetPlayerUnit(), Map_Zone.GE_Middle) then
        MiddleDone = 1
        if not IsDead(Air_Vehicle.Xgunship01) or not IsDead(Air_Vehicle.Xgunship02) or not IsDead(Air_Vehicle.Xgunship03) or not IsDead(Air_Vehicle.Xgunship04) then
          WaitFor(1)
          PhoneMessage(48, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
          DebugOut("Infantry at GE Middle")
        end
      end
      WaitFor(1)
      EndFrame()
    end
    if BottomDone == 0 then
      if IsInArea(Ground_Vehicle.T_Battlestation, Map_Zone.GE_Bottom) then
        BottomDone = 1
        if not IsDead(Air_Vehicle.Xgunship01) or not IsDead(Air_Vehicle.Xgunship06) then
          PhoneMessage(47, constant.ID_NONE, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Vlad_Happy, constant.PLAYER_ONE)
          DebugOut("Infantry at GE Bottom")
          GoToArea(Air_Vehicle.Xgunship01, -250, 265, 5, 0, constant.ORDER_NORMAL)
          WaitFor(1)
          GoToArea(Air_Vehicle.Xgunship06, -260, 240, 5, 0, constant.ORDER_NORMAL)
        end
      end
      WaitFor(1)
      EndFrame()
    end
    if BottomDone == 1 and MiddleDone == 1 then
      break
    end
    EndFrame()
  end
end
