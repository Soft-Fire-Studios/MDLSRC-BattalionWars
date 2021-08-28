function PlayerInMineZone(owner)
  while missionend == 0 do
    if TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) then
      GoToArea(Air_Vehicle.XylvanianGunship01, 9, -138, 10, 0, constant.ORDER_FORCED)
      playerinminezone = 1
    else
      playerinminezone = 0
    end
    WaitFor(0.2)
    EndFrame()
  end
end
