function Death_Check_P1(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    local landreset = 0
    repeat
      if netvariable.player1.p1dead == 0 and AllPlayerUnitsDead(constant.PLAYER_ONE) and netvariable.player1.POWs + netvariable.player1.POW2 ~= 2 and netvariable.player1.wait == 0 then
        DebugOut("P1 Dead")
        netvariable.player1.p1dead = 1
        EndFrame()
        EndFrame()
        EndFrame()
      elseif netvariable.player1.p1infdead == 0 and CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and netvariable.player1.POWs == 1 and netvariable.player1.POW2 == 1 and netvariable.player1.wait == 0 then
        DebugOut("P1 Lost all Infantry")
        netvariable.player1.p1infdead = 1
        netvariable.player1.p1dead = 2
        EndFrame()
        EndFrame()
        EndFrame()
        repeat
          if missionend == 1 then
            return
          else
            EndFrame()
          end
        until AllPlayerUnitsDead(constant.PLAYER_ONE)
        netvariable.player1.p1dead = 1
      elseif netvariable.player1.p1dead == 1 and AllPlayerUnitsDead(constant.PLAYER_ONE) == false and netvariable.player1.POWs + netvariable.player1.POW2 < 2 then
        DebugOut("P1 Back in the game")
        netvariable.player1.p1dead = 0
        netvariable.player1.p1infdead = 0
        EndFrame()
        EndFrame()
        EndFrame()
      elseif landreset == 0 and netvariable.player1.docks == 3 then
        netvariable.player1.p1dead = 0
        landreset = 1
        WaitFor(5)
      else
        WaitFor(1)
      end
    until missionend == 1
  end
end
