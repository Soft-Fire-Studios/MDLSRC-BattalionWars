function Death_Check_P2(owner)
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      if netvariable.player2.p2dead == 0 and AllPlayerUnitsDead(constant.PLAYER_TWO) and powsfreed == 0 and netvariable.player1.wait == 0 then
        DebugOut("P2 Dead")
        netvariable.player2.p2dead = 1
        EndFrame()
        EndFrame()
        EndFrame()
      elseif netvariable.player2.p2infdead == 0 and CountRemainingPlayerTroops(constant.PLAYER_TWO) == 0 and powsfreed == 2 and netvariable.player1.wait == 0 then
        DebugOut("P2 Lost all Infantry")
        netvariable.player2.p2infdead = 1
        netvariable.player2.p2dead = 1
        EndFrame()
        EndFrame()
        EndFrame()
      elseif netvariable.player2.p2dead == 1 and AllPlayerUnitsDead(constant.PLAYER_TWO) == false then
        DebugOut("P2 Back in the game")
        netvariable.player2.p2dead = 0
        netvariable.player2.p2infdead = 0
        Player2IsDead = 0
        EndFrame()
        EndFrame()
        EndFrame()
      else
        WaitFor(1)
      end
    until missionend == 1
  end
end
