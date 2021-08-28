function MGNestEject(owner)
  local mgnest01troop = 0
  local mgnest02troop = 0
  local mgnest01 = Building.TundranMGNest01
  local mgnest02 = Building.TundranMGNest02
  local p1 = GetPlayerUnit(constant.PLAYER_ONE)
  repeat
    WaitFor(0.1)
  until IsDead(Troop.XylvanianBazookaVet01) and IsDead(Troop.XylvanianBazookaVet02) and IsDead(Troop.XylvanianBazookaVet03) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.EjectMG)
  if mgnest01 ~= GetPlayerUnit(constant.PLAYER_ONE) and GetUnitInSeat(mgnest01, 0) ~= 0 then
    mgnest01troop = GetUnitInSeat(mgnest01, 0)
    ExitVehicle(GetUnitInSeat(mgnest01, 0))
    FollowUnit(mgnest01troop, p1, -1, constant.ORDER_NORMAL)
  end
  if mgnest02 ~= GetPlayerUnit(constant.PLAYER_ONE) and GetUnitInSeat(mgnest02, 0) ~= 0 then
    mgnest01troop = GetUnitInSeat(mgnest02, 0)
    ExitVehicle(GetUnitInSeat(mgnest02, 0))
    FollowUnit(mgnest01troop, p1, -1, constant.ORDER_NORMAL)
  end
end
