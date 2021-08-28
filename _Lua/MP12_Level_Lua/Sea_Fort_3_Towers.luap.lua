function Sea_Fort_3_Towers(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    local tower1 = 0
    local tower2 = 0
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 66
    repeat
      if IsDead(Building.SF3_Tower_1) == false and tower1 == 0 and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_1) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_2) or IsDead(Building.SF3_Tower_2)) and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_1) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_3) or IsDead(Building.SF3_Tower_3)) then
        tower1 = 1
        Kill(Building.SF3_Tower_1)
      else
        EndFrame()
      end
      if IsDead(Building.SF3_Tower_2) == false and tower1 == 0 and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_2) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_1) or IsDead(Building.SF3_Tower_1)) and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_2) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_3) or IsDead(Building.SF3_Tower_3)) then
        tower1 = 1
        Kill(Building.SF3_Tower_2)
      else
        EndFrame()
      end
      if IsDead(Building.SF3_Tower_3) == false and tower1 == 0 and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_3) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_1) or IsDead(Building.SF3_Tower_1)) and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_3) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_2) or IsDead(Building.SF3_Tower_2)) then
        tower1 = 1
        Kill(Building.SF3_Tower_3)
      else
        EndFrame()
      end
    until tower1 == 1
    repeat
      EndFrame()
    until GetHealthPercent(owner) < 33
    repeat
      if IsDead(Building.SF3_Tower_1) == false and tower2 == 0 and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_1) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_2) or IsDead(Building.SF2_Tower_2)) and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_1) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_3) or IsDead(Building.SF2_Tower_3)) then
        tower2 = 1
        Kill(Building.SF3_Tower_1)
      else
        EndFrame()
      end
      if IsDead(Building.SF3_Tower_2) == false and tower2 == 0 and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_2) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_1) or IsDead(Building.SF3_Tower_1)) and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_2) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_3) or IsDead(Building.SF3_Tower_3)) then
        tower2 = 1
        Kill(Building.SF3_Tower_2)
      else
        EndFrame()
      end
      if IsDead(Building.SF3_Tower_3) == false and tower2 == 0 and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_3) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_1) or IsDead(Building.SF3_Tower_1)) and (GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_3) < GetRange(GetPlayerUnit(constant.PLAYER_ONE), Building.SF3_Tower_2) or IsDead(Building.SF3_Tower_2)) then
        tower2 = 1
        Kill(Building.SF3_Tower_3)
      else
        EndFrame()
      end
    until tower2 == 1
  end
end
