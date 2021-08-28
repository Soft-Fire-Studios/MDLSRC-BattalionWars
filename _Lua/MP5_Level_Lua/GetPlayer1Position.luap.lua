function GetPlayer1Position(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      netvariable.player1.Player1 = GetPlayerUnit(constant.PLAYER_ONE)
      WaitFor(0.2)
    until SeaFortDead == 2
  end
end
