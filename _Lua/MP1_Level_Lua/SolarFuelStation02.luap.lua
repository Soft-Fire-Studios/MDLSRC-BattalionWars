function SolarFuelStation02(owner)
  repeat
    EndFrame()
  until objectivezone01 > 0
  DebugOut("*SolarFuelStation02* - 1.")
  local tower1 = 0
  local tower2 = 0
  local tower3 = 0
  local tower4 = 0
  local tower5 = 0
  local tower6 = 0
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 90
    repeat
      if IsDead(Building.S02B01) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower1 = 1
        Kill(Building.S02B01)
      else
        EndFrame()
      end
      if IsDead(Building.S02B02) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower1 = 1
        Kill(Building.S02B02)
      else
        EndFrame()
      end
      if IsDead(Building.S02B03) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower1 = 1
        Kill(Building.S02B03)
      else
        EndFrame()
      end
      if IsDead(Building.S02B04) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower1 = 1
        Kill(Building.S02B04)
      else
        EndFrame()
      end
      if IsDead(Building.S02B05) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower1 = 1
        Kill(Building.S02B05)
      else
        EndFrame()
      end
      if IsDead(Building.S02B06) == false and tower1 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) then
        tower1 = 1
        Kill(Building.S02B06)
      else
        EndFrame()
      end
    until tower1 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 70
    repeat
      if IsDead(Building.S02B01) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower2 = 1
        Kill(Building.S02B01)
      else
        EndFrame()
      end
      if IsDead(Building.S02B02) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower2 = 1
        Kill(Building.S02B02)
      else
        EndFrame()
      end
      if IsDead(Building.S02B03) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower2 = 1
        Kill(Building.S02B03)
      else
        EndFrame()
      end
      if IsDead(Building.S02B04) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower2 = 1
        Kill(Building.S02B04)
      else
        EndFrame()
      end
      if IsDead(Building.S02B05) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower2 = 1
        Kill(Building.S02B05)
      else
        EndFrame()
      end
      if IsDead(Building.S02B06) == false and tower2 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) then
        tower2 = 1
        Kill(Building.S02B06)
      else
        EndFrame()
      end
    until tower2 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 50
    repeat
      if IsDead(Building.S02B01) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower3 = 1
        Kill(Building.S02B01)
      else
        EndFrame()
      end
      if IsDead(Building.S02B02) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower3 = 1
        Kill(Building.S02B02)
      else
        EndFrame()
      end
      if IsDead(Building.S02B03) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower3 = 1
        Kill(Building.S02B03)
      else
        EndFrame()
      end
      if IsDead(Building.S02B04) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower3 = 1
        Kill(Building.S02B04)
      else
        EndFrame()
      end
      if IsDead(Building.S02B05) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower3 = 1
        Kill(Building.S02B05)
      else
        EndFrame()
      end
      if IsDead(Building.S02B06) == false and tower3 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) then
        tower3 = 1
        Kill(Building.S02B06)
      else
        EndFrame()
      end
    until tower3 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 30
    repeat
      if IsDead(Building.S02B01) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower4 = 1
        Kill(Building.S02B01)
      else
        EndFrame()
      end
      if IsDead(Building.S02B02) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower4 = 1
        Kill(Building.S02B02)
      else
        EndFrame()
      end
      if IsDead(Building.S02B03) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower4 = 1
        Kill(Building.S02B03)
      else
        EndFrame()
      end
      if IsDead(Building.S02B04) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower4 = 1
        Kill(Building.S02B04)
      else
        EndFrame()
      end
      if IsDead(Building.S02B05) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower4 = 1
        Kill(Building.S02B05)
      else
        EndFrame()
      end
      if IsDead(Building.S02B06) == false and tower4 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) then
        tower4 = 1
        Kill(Building.S02B06)
      else
        EndFrame()
      end
    until tower4 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 10
    repeat
      if IsDead(Building.S02B01) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B01) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower5 = 1
        Kill(Building.S02B01)
      else
        EndFrame()
      end
      if IsDead(Building.S02B02) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B02) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower5 = 1
        Kill(Building.S02B02)
      else
        EndFrame()
      end
      if IsDead(Building.S02B03) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B03) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower5 = 1
        Kill(Building.S02B03)
      else
        EndFrame()
      end
      if IsDead(Building.S02B04) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) and (GetRange(netvariable.player1.Player1, Building.S02B04) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower5 = 1
        Kill(Building.S02B04)
      else
        EndFrame()
      end
      if IsDead(Building.S02B05) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B05) < GetRange(netvariable.player1.Player1, Building.S02B06) or IsDead(Building.S02B06)) then
        tower5 = 1
        Kill(Building.S02B05)
      else
        EndFrame()
      end
      if IsDead(Building.S02B06) == false and tower5 == 0 and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B01) or IsDead(Building.S02B01)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B02) or IsDead(Building.S02B02)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B03) or IsDead(Building.S02B03)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B04) or IsDead(Building.S02B04)) and (GetRange(netvariable.player1.Player1, Building.S02B06) < GetRange(netvariable.player1.Player1, Building.S02B05) or IsDead(Building.S02B05)) then
        tower5 = 1
        Kill(Building.S02B06)
      else
        EndFrame()
      end
    until tower5 == 1
  end
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    repeat
      EndFrame()
    until IsDead(owner)
  end
end
