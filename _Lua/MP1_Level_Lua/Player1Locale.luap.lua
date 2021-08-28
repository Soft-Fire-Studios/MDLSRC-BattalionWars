function Player1Locale(owner)
  repeat
    EndFrame()
  until objectivezone01 > 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      netvariable.player1.Player1 = GetPlayerUnit(constant.PLAYER_ONE)
      WaitFor(0.2)
    until fuelstations == 13
  end
end
