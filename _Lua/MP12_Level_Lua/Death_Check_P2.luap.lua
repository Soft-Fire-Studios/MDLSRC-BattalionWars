function Death_Check_P2(owner)
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    local landreset = 0
    repeat
      if netvariable.player2.p2dead == 0 and AllPlayerUnitsDead(constant.PLAYER_TWO) and netvariable.player1.POWs + netvariable.player1.POW2 ~= 2 and netvariable.player1.wait == 0 then
        DebugOut("P2 Dead")
        netvariable.player2.p2dead = 1
        EndFrame()
        EndFrame()
        EndFrame()
      elseif netvariable.player2.p2infdead == 0 and CountRemainingPlayerTroops(constant.PLAYER_TWO) == 0 and netvariable.player1.POWs == 1 and netvariable.player1.POW2 == 1 and netvariable.player1.wait == 0 then
        DebugOut("P2 Lost all Infantry")
        netvariable.player2.p2infdead = 1
        netvariable.player2.p2dead = 2
        EndFrame()
        EndFrame()
        EndFrame()
        repeat
          if missionend == 1 then
            return
          else
            EndFrame()
          end
        until AllPlayerUnitsDead(constant.PLAYER_TWO)
        netvariable.player2.p2dead = 1
      elseif netvariable.player2.p2dead == 1 and AllPlayerUnitsDead(constant.PLAYER_TWO) == false and netvariable.player1.POWs + netvariable.player1.POW2 < 2 then
        DebugOut("P2 Back in the game")
        netvariable.player2.p2dead = 0
        netvariable.player2.p2infdead = 0
        EndFrame()
        EndFrame()
        EndFrame()
      elseif landreset == 0 and netvariable.player1.docks == 3 then
        netvariable.player2.p2dead = 0
        landreset = 1
        WaitFor(5)
      else
        WaitFor(1)
      end
    until missionend == 1
  end
end
