function Death_Check_P1(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      if netvariable.player1.p1dead == 0 and AllPlayerUnitsDead(constant.PLAYER_ONE) and powsfreed == 0 and netvariable.player1.wait == 0 then
        DebugOut("P1 Dead")
        netvariable.player1.p1dead = 1
        EndFrame()
        EndFrame()
        EndFrame()
      elseif netvariable.player1.p1infdead == 0 and CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and powsfreed == 2 and netvariable.player1.wait == 0 then
        DebugOut("P1 Lost all Infantry")
        netvariable.player1.p1infdead = 1
        netvariable.player1.p1dead = 1
        EndFrame()
        EndFrame()
        EndFrame()
      elseif netvariable.player1.p1dead == 1 and AllPlayerUnitsDead(constant.PLAYER_ONE) == false then
        DebugOut("P1 Back in the game")
        netvariable.player1.p1dead = 0
        netvariable.player1.p1infdead = 0
        Player1IsDead = 0
        EndFrame()
        EndFrame()
        EndFrame()
      else
        WaitFor(1)
      end
    until missionend == 1
  end
end
