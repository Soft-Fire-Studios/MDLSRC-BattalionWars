function ObjectiveWesternFrontierReinforcementsFollowPlayer(owner)
  while missionend == 0 do
    if follow == 1 then
      if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) == false then
        FollowUnit(owner, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
        WaitFor(5)
      elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MineZoneWarning01) then
        GoToArea(owner, 99, 47, 10, 0, constant.ORDER_FORCED)
        repeat
          WaitFor(0.5)
        until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) == false
      elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MineZoneWarning02) then
        GoToArea(owner, -233, -62, 10, 0, constant.ORDER_FORCED)
        repeat
          WaitFor(0.5)
        until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) == false
      end
    end
    EndFrame()
  end
end
