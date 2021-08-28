function MP3_SpyBlimps(owner)
  local TBlimp01IsDead = 0
  local TBlimp02IsDead = 0
  local TBlimp03IsDead = 0
  local TBlimp04IsDead = 0
  local TBlimp05IsDead = 0
  local TBlimp06IsDead = 0
  local TBlimp07IsDead = 0
  local Blimp1DeadObjective = 0
  local Blimp2DeadObjective = 0
  local Blimp3DeadObjective = 0
  local Blimp4DeadObjective = 0
  local Blimp5DeadObjective = 0
  local Blimp6DeadObjective = 0
  SetActive(Building.Turbine01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.Turbine02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.Turbine03, constant.INACTIVE, constant.ADJUST_WEAPON)
  while true do
    if IsDead(Air_Vehicle.TBlimp01) and TBlimp01IsDead == 0 then
      TBlimp01IsDead = 1
      NumberOfBlimpsDead = NumberOfBlimpsDead + 1
      DebugOut("Number of Blimps Destroyed = ", NumberOfBlimpsDead)
      DebugOut("TBlimp01 Dead")
      SetObjectiveData(Objective_Marker.TBlimp01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.TBlimp02) and TBlimp02IsDead == 0 then
      TBlimp02IsDead = 1
      NumberOfBlimpsDead = NumberOfBlimpsDead + 1
      DebugOut("Number of Blimps Destroyed = ", NumberOfBlimpsDead)
      DebugOut("TBlimp02 Dead")
      SetObjectiveData(Objective_Marker.TBlimp02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.TBlimp03) and TBlimp03IsDead == 0 then
      TBlimp03IsDead = 1
      NumberOfBlimpsDead = NumberOfBlimpsDead + 1
      DebugOut("Number of Blimps Destroyed = ", NumberOfBlimpsDead)
      DebugOut("TBlimp03 Dead")
      SetObjectiveData(Objective_Marker.TBlimp03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.TBlimp04) and TBlimp04IsDead == 0 then
      TBlimp04IsDead = 1
      NumberOfBlimpsDead = NumberOfBlimpsDead + 1
      DebugOut("Number of Blimps Destroyed = ", NumberOfBlimpsDead)
      DebugOut("TBlimp04 Dead")
      SetObjectiveData(Objective_Marker.TBlimp04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.TBlimp05) and TBlimp05IsDead == 0 then
      TBlimp05IsDead = 1
      NumberOfBlimpsDead = NumberOfBlimpsDead + 1
      DebugOut("Number of Blimps Destroyed = ", NumberOfBlimpsDead)
      DebugOut("TBlimp05 Dead")
      SetObjectiveData(Objective_Marker.TBlimp05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.TBlimp06) and TBlimp06IsDead == 0 then
      TBlimp06IsDead = 1
      NumberOfBlimpsDead = NumberOfBlimpsDead + 1
      DebugOut("Number of Blimps Destroyed = ", NumberOfBlimpsDead)
      DebugOut("TBlimp06 Dead")
      SetObjectiveData(Objective_Marker.TBlimp06, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if IsDead(Air_Vehicle.TBlimp07) and TBlimp07IsDead == 0 then
      TBlimp07IsDead = 1
      NumberOfBlimpsDead = NumberOfBlimpsDead + 1
      DebugOut("Number of Blimps Destroyed = ", NumberOfBlimpsDead)
      DebugOut("TBlimp07 Dead")
      SetObjectiveData(Objective_Marker.TBlimp07, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if NumberOfBlimpsDead == 1 and Blimp1DeadObjective == 0 then
      Blimp1DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectiveData(Objective.P1Blimp, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1BlimpDead1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectiveData(Objective.P2Blimp, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2BlimpDead1, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if NumberOfBlimpsDead == 2 and Blimp2DeadObjective == 0 then
      Blimp2DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectiveData(Objective.P1BlimpDead1, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1BlimpDead2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectiveData(Objective.P2BlimpDead1, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2BlimpDead2, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if NumberOfBlimpsDead == 3 and Blimp3DeadObjective == 0 then
      Blimp3DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectiveData(Objective.P1BlimpDead2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1BlimpDead3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectiveData(Objective.P2BlimpDead2, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2BlimpDead3, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if NumberOfBlimpsDead == 4 and Blimp4DeadObjective == 0 then
      Blimp4DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(66, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        SetObjectiveData(Objective.P1BlimpDead3, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1BlimpDead4, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(66, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        SetObjectiveData(Objective.P2BlimpDead3, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2BlimpDead4, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if NumberOfBlimpsDead == 5 and Blimp5DeadObjective == 0 then
      Blimp5DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(67, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        SetObjectiveData(Objective.P1BlimpDead4, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1BlimpDead5, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(67, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        SetObjectiveData(Objective.P2BlimpDead4, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2BlimpDead5, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if NumberOfBlimpsDead == 6 and Blimp6DeadObjective == 0 then
      Blimp6DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        PhoneMessage(68, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
        SetObjectiveData(Objective.P1BlimpDead5, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1BlimpDead6, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        PhoneMessage(68, constant.ID_NONE, 2, 6, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        SetObjectiveData(Objective.P2BlimpDead5, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2BlimpDead6, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if NumberOfBlimpsDead == 7 and Blimp7DeadObjective == 0 then
      Blimp7DeadObjective = 1
      if IsNetworkPlayer(constant.PLAYER_ONE) then
        SetObjectiveData(Objective.P1BlimpDead6, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P1BlimpDead7, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.P1BlimpDead7, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if IsNetworkPlayer(constant.PLAYER_TWO) then
        SetObjectiveData(Objective.P2BlimpDead6, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.P2BlimpFailed, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.P2BlimpFailed, constant.OBJECTIVE_DATA_STATE, 1)
      end
      WaitFor(2)
      SetUnitInvulnerable(Building.Turbine01, false)
      SetUnitInvulnerable(Building.Turbine02, false)
      SetUnitInvulnerable(Building.Turbine03, false)
      SetActive(Building.Turbine01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Building.Turbine02, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Building.Turbine03, constant.ACTIVE, constant.ADJUST_WEAPON)
    end
    EndFrame()
  end
end
