function level_MainLoop(owner)
  local wavestamp = 0
  local wavelimit = 200
  local mg_obj = false
  local base_capped = false
  local mg_obj_limit = 0
  local skip_2a = false
  local skip_2b = false
  local skip_2c = false
  local skip_3 = false
  local rec_dead = 0
  local ltk_a = false
  local ltk_b = false
  local ltk_dead = 0
  local traction = 0
  local stop01 = true
  local stop02 = true
  local stop03 = true
  local stop04 = true
  local stop05 = true
  local stop06 = true
  local stop07 = true
  local stop08 = true
  local stop09 = true
  local stop10 = true
  WesternFrontier = FriendlyArmy
  Tundra = EnemyArmy
  MinLevelTime = 540
  MaxLevelTime = 1100
  TechniqueWeighting = 5
  TechniqueObjectives = 4
  TechniqueObjectivesCompleted = 2
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_SS_RFL01)
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_SS_RFL02)
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_SS_RFL03)
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_SS_RFL05)
  group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_SS_RFL06)
  group.Add(Unit_Group.WF_CharlieCompany, Troop.WF_CC_RFL01)
  group.Add(Unit_Group.WF_CharlieCompany, Troop.WF_CC_RFL05)
  group.Add(Unit_Group.WF_CharlieCompany, Troop.WF_CC_RFL06)
  group.Add(Unit_Group.TN_Ambushers, Troop.TN_AMBUSH_RFL01)
  group.Add(Unit_Group.TN_Ambushers, Troop.TN_AMBUSH_RFL02)
  group.Add(Unit_Group.TN_Ambushers, Troop.TN_AMBUSH_RFL03)
  group.Add(Unit_Group.TN_Ambushers, Troop.TN_AMBUSH_RFL05)
  group.Add(Unit_Group.TN_Ambushers, Troop.TN_AMBUSH_RFL06)
  group.Add(Unit_Group.TN_Ambushers, Troop.TN_AMBUSH_RFL07)
  group.Add(Unit_Group.TN_InfantryWave_01, Troop.TN_WAVE_01_RFL01)
  group.Add(Unit_Group.TN_InfantryWave_01, Troop.TN_WAVE_01_RFL02)
  group.Add(Unit_Group.TN_InfantryWave_01, Troop.TN_WAVE_01_RFL03)
  group.Add(Unit_Group.TN_InfantryWave_01, Troop.TN_WAVE_01_RFL04)
  group.Add(Unit_Group.TN_InfantryWave_01, Troop.TN_WAVE_01_RFL05)
  group.Add(Unit_Group.TN_InfantryWave_01, Troop.TN_WAVE_01_RFL06)
  group.Add(Unit_Group.TN_InfantryWave_01, Troop.TN_WAVE_01_RFL07)
  group.Add(Unit_Group.TN_InfantryWave_01, Troop.TN_WAVE_01_RFL08)
  group.Add(Unit_Group.TN_InfantryWave_02, Troop.TN_WAVE_02_RFL01)
  group.Add(Unit_Group.TN_InfantryWave_02, Troop.TN_WAVE_02_RFL02)
  group.Add(Unit_Group.TN_InfantryWave_02, Troop.TN_WAVE_02_RFL03)
  group.Add(Unit_Group.TN_InfantryWave_02, Troop.TN_WAVE_02_RFL04)
  group.Add(Unit_Group.TN_InfantryWave_02, Troop.TN_WAVE_02_RFL05)
  group.Add(Unit_Group.TN_InfantryWave_02, Troop.TN_WAVE_02_RFL06)
  group.Add(Unit_Group.TN_InfantryWave_02, Troop.TN_WAVE_02_RFL07)
  group.Add(Unit_Group.TN_InfantryWave_02, Troop.TN_WAVE_02_RFL08)
  group.Add(Unit_Group.TN_InfantryWave_03, Troop.TN_WAVE_03_RFL01)
  group.Add(Unit_Group.TN_InfantryWave_03, Troop.TN_WAVE_03_RFL02)
  group.Add(Unit_Group.TN_InfantryWave_03, Troop.TN_WAVE_03_RFL03)
  group.Add(Unit_Group.TN_InfantryWave_03, Troop.TN_WAVE_03_RFL04)
  group.Add(Unit_Group.TN_InfantryWave_03, Troop.TN_WAVE_03_RFL05)
  group.Add(Unit_Group.TN_InfantryWave_03, Troop.TN_WAVE_03_RFL06)
  group.Add(Unit_Group.TN_InfantryWave_03, Troop.TN_WAVE_03_RFL07)
  group.Add(Unit_Group.TN_InfantryWave_03, Troop.TN_WAVE_03_RFL08)
  group.Add(Unit_Group.TN_InfantryWave_04, Troop.TN_WAVE_04_RFL01)
  group.Add(Unit_Group.TN_InfantryWave_04, Troop.TN_WAVE_04_RFL02)
  group.Add(Unit_Group.TN_InfantryWave_04, Troop.TN_WAVE_04_RFL03)
  group.Add(Unit_Group.TN_InfantryWave_04, Troop.TN_WAVE_04_RFL04)
  group.Add(Unit_Group.TN_InfantryWave_04, Troop.TN_WAVE_04_RFL05)
  group.Add(Unit_Group.TN_InfantryWave_04, Troop.TN_WAVE_04_RFL06)
  group.Add(Unit_Group.TN_ReconWave_01, Ground_Vehicle.TN_RECONWAVE01_RCN01)
  group.Add(Unit_Group.TN_ReconWave_01, Ground_Vehicle.TN_TRANSPORTWAVE01_LTP01)
  group.Add(Unit_Group.TN_ReconWave_01, Ground_Vehicle.TN_TRANSPORTWAVE01_LTP02)
  group.Add(Unit_Group.TN_ReconWave_02, Ground_Vehicle.TN_RECONWAVE02_RCN01)
  group.Add(Unit_Group.TN_ReconWave_02, Ground_Vehicle.TN_TRANSPORTWAVE02_LTP01)
  group.Add(Unit_Group.TN_ReconWave_02, Ground_Vehicle.TN_TRANSPORTWAVE02_LTP02)
  group.Add(Unit_Group.TN_River, Ground_Vehicle.TN_RIVER_LTP01)
  group.Add(Unit_Group.TN_River, Ground_Vehicle.TN_RIVER_LTP02)
  group.Add(Unit_Group.TN_ParaTransport, Air_Vehicle.TN_ATN01)
  group.Add(Unit_Group.TN_ParaTransport, Troop.TN_ATN01_CRW01)
  group.SetActive(Unit_Group.WF_CharlieCompany, constant.INACTIVE)
  group.Spawn(Unit_Group.TN_InfantryWave_01, false)
  group.Spawn(Unit_Group.TN_InfantryWave_02, false)
  group.Spawn(Unit_Group.TN_InfantryWave_03, false)
  group.Spawn(Unit_Group.TN_ReconWave_01, false)
  group.Spawn(Unit_Group.TN_ReconWave_02, false)
  group.Spawn(Unit_Group.TN_River, false)
  group.Spawn(Unit_Group.TN_ParaTransport, false)
  group.Spawn(Unit_Group.WF_IntroFighter, false)
  group.Spawn(Unit_Group.IntroSkirmish, false)
  group.Spawn(Unit_Group.IntroRecon, false)
  Despawn(Ground_Vehicle.TN_LTK01)
  Despawn(Ground_Vehicle.TN_LTK02)
  messages.Add("WF_CO_Intro", 0, 4, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_IntroCut01", 1, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_IntroCut02", 2, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("TN_CO_Intro", 4, 7, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Sad)
  messages.Add("WF_Cover", 5, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_MishIntro", 7, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_NellyBusiness", 8, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_RiverCrossing", 9, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_IncAtRiver1", 11, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_RiverDone", 12, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_BazWeakness", 13, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_GetToWB", 14, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_EnterBase", 15, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_GarrisonMG", 18, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_InfWave1Dead", 19, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("TN_RcnWave1Attack", 20, 9, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("WF_RcnWave1Attack", 21, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_RcnWave1Dead", 24, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("TN_InfWave2Attack", 25, 7, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("WF_InfWave2Dead", 26, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("TN_InfWave3Attack", 27, 8, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("WF_InfRcnAttack", 28, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("TN_MakeItEasy", 29, 5, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("WF_Punishment", 30, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("TN_ThreatBase", 31, 8, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("WF_AirIncoming", 32, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_LostMG", 37, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_AttakingCP", 38, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_ReinforceOTW", 39, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("TN_Underestimated", 40, 6, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Sad)
  messages.Add("WF_Underestimated", 41, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("TN_Tactics", 42, 9, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("WF_Tactics", 43, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_LostCP", 44, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("TN_POW", 45, 7, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("Teach_CSTICK", 46, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_ZBUTTON1", 47, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_ZBUTTON2", 48, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_IncAtRiver2", 49, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_MsgLOG", 50, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_LoadMG1", 51, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_LoadMG2", 52, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_Global", 53, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_BadMGChoice", 56, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_Sentry", 57, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_Sentry2", 58, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_AdvancedWPN1", 60, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("Teach_AdvancedWPN2", 61, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_LtkInc01", 74, 6, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("WF_LtkInc02", 78, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_LtkInc03", 79, 3, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("Teach_UnLoadMG", 17, 5, constant.ARMY_TUNDRAN, SpriteID.CO_T_Nelly_Happy)
  messages.Add("TN_InfWave1Attack", 55, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_SuperTraction", 80, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  MessagesReady = true
  local AllInfantryWavesDead = function()
    if group.NumDead(Unit_Group.TN_InfantryWave_01, 100) and group.NumDead(Unit_Group.TN_InfantryWave_02, 100) and group.NumDead(Unit_Group.TN_InfantryWave_03, 100) and group.NumDead(Unit_Group.TN_InfantryWave_04, 100) and group.NumDead(Unit_Group.TN_ReconWave_01) > 0 and 0 < group.NumDead(Unit_Group.TN_ReconWave_02) then
      return true
    else
      return false
    end
  end
  local function AllMGsGarrisoned()
    if mg_obj_limit > 0 and GetTime() > mg_obj_limit then
      return true
    end
    if 0 < GetUnitInSeat(Building.WF_STATICGUN_002, 0) and 0 < GetUnitInSeat(Building.WF_STATICGUN_003, 0) and messages.HasFinishedPlaying("Teach_LoadMG2") then
      return true
    end
    return false
  end
  local AllMGsGarrisoned_HACK = function()
    if 0 < GetUnitInSeat(Building.WF_STATICGUN_002, 0) and 0 < GetUnitInSeat(Building.WF_STATICGUN_003, 0) then
      return true
    end
    return false
  end
  local BazookaInMG = function()
    local mg1 = 0
    local mg2 = 0
    mg1 = GetUnitInSeat(Building.WF_STATICGUN_002, 0)
    mg2 = GetUnitInSeat(Building.WF_STATICGUN_003, 0)
    if mg1 > 0 and TestFlags(mg1, flag.GTYPE_VET_ANTI_ARMOUR, constant.GTYPE) then
      return true
    end
    if mg2 > 0 and TestFlags(mg2, flag.GTYPE_VET_ANTI_ARMOUR, constant.GTYPE) then
      return true
    end
    return false
  end
  while InStartCutscene do
    EndFrame()
  end
  Despawn(Troop.WF_CC_BAZ03)
  StartScoringTimer()
  FollowUnit(Unit_Group.WF_PlayerUnits, Troop.WF_SS_RFL01, 5, 15, constant.ORDER_FORCED)
  SetObjectiveData(Objective.GetToTheRiver, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.GetToTheRiver, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  messages.Show("WF_MishIntro")
  while true do
    messages.Process()
    if 0 < GetPlayerUnit() then
      if not messages.HasBeenPlayed("WF_RiverCrossing") and (IsInArea(GetPlayerUnit(), Map_Zone.CROSSRIVER) or IsInArea(GetPlayerUnit(), Map_Zone.River)) then
        messages.Show("WF_RiverCrossing")
      end
      if not messages.HasBeenPlayed("WF_IncAtRiver1") and IsInArea(GetPlayerUnit(), Map_Zone.River) then
        messages.Show("WF_IncAtRiver1")
      end
    end
    if messages.HasFinishedPlaying("WF_IncAtRiver1") then
      messages.Show("WF_IncAtRiver2")
    end
    if messages.HasFinishedPlaying("WF_IncAtRiver2") then
      messages.Show("Teach_CSTICK")
    end
    if messages.HasFinishedPlaying("Teach_CSTICK") then
      messages.Show("Teach_ZBUTTON1")
    end
    if messages.HasFinishedPlaying("Teach_ZBUTTON1") then
      messages.Show("Teach_ZBUTTON2")
    end
    if messages.HasFinishedPlaying("Teach_ZBUTTON2") then
      messages.Show("Teach_AdvancedWPN1")
    end
    if messages.HasFinishedPlaying("Teach_AdvancedWPN1") then
      messages.Show("Teach_AdvancedWPN2")
    end
    if skip_2c and messages.HasFinishedPlaying("Teach_AdvancedWPN2") then
      messages.Show("WF_RiverDone")
    end
    if messages.HasFinishedPlaying("WF_RiverDone") then
      messages.Show("WF_BazWeakness")
    end
    if messages.HasFinishedPlaying("WF_BazWeakness") then
      messages.Show("WF_GetToWB")
    end
    if messages.HasFinishedPlaying("Teach_LoadMG1") then
      messages.Show("Teach_LoadMG2")
    end
    if messages.HasFinishedPlaying("TN_InfWave1Attack") and not messages.HasBeenTriggered("Teach_UnLoadMG") then
      messages.Show("Teach_UnLoadMG", 7)
    end
    if messages.HasFinishedPlaying("WF_EnterBase") then
      messages.Show("Teach_Sentry")
    end
    if messages.HasFinishedPlaying("Teach_Sentry") then
      messages.Show("Teach_Sentry2")
    end
    if messages.HasFinishedPlaying("Teach_Sentry2") then
      messages.Show("WF_GarrisonMG")
    end
    if messages.HasFinishedPlaying("WF_InfWave1Dead") then
      messages.Show("TN_RcnWave1Attack")
    end
    if messages.HasFinishedPlaying("TN_RcnWave1Attack") then
      messages.Show("WF_RcnWave1Attack")
    end
    if messages.HasFinishedPlaying("WF_InfWave2Dead") then
      messages.Show("TN_InfWave3Attack")
    end
    if messages.HasFinishedPlaying("TN_InfWave3Attack") then
      messages.Show("WF_InfRcnAttack")
    end
    if messages.HasFinishedPlaying("WF_InfRcnAttack") then
      messages.Show("TN_MakeItEasy")
    end
    if messages.HasFinishedPlaying("WF_Punishment") then
      messages.Show("TN_ThreatBase")
    end
    if messages.HasFinishedPlaying("TN_ThreatBase") then
      messages.Show("WF_AirIncoming")
    end
    if messages.HasFinishedPlaying("WF_ReinforceOTW") then
      messages.Show("WF_LtkInc01")
    end
    if messages.HasFinishedPlaying("WF_LtkInc01") then
      messages.Show("WF_LtkInc02")
    end
    if messages.HasFinishedPlaying("WF_LtkInc02") and not messages.HasBeenTriggered("WF_LtkInc03") then
      messages.Show("WF_LtkInc03")
    end
    if 0 < GetPlayerUnit() and TestFlags(GetPlayerUnit(), flag.GTYPE_LIGHT_TANK, constant.GTYPE) and messages.HasFinishedPlaying("WF_LtkInc03") and traction == 0 then
      traction = GetTime() + 5
    end
    if traction > 0 and traction < GetTime() then
      messages.Show("WF_SuperTraction")
    end
    if CheckCapturePoint(Capture_Point.OUTPOST_CAPTURE_POINT, constant.ARMY_TUNDRAN, 50, 50) then
      messages.Show("WF_AttakingCP")
    end
    if mg_obj and messages.HasFinishedPlaying("WF_GarrisonMG") then
      messages.Show("Teach_LoadMG1")
    end
    if IsDead(Building.WF_STATICGUN_002) or IsDead(Building.WF_STATICGUN_003) then
      messages.Show("WF_LostMG")
    end
    if not messages.HasBeenTriggered("Teach_BadMGChoice") and messages.HasFinishedPlaying("TN_InfWave1Attack") and BazookaInMG() then
      messages.Show("Teach_BadMGChoice", 3)
    end
    if not messages.HasBeenTriggered("Teach_LoadMG1") and AllMGsGarrisoned_HACK() then
      messages.SetRead("WF_GarrisonMG")
      messages.SetRead("Teach_LoadMG1")
      messages.SetRead("Teach_LoadMG2")
    end
    if messages.HasBeenTriggered("WF_IncAtRiver1") then
      if not skip_2a and IsDead(Ground_Vehicle.TN_RIVER_LTP01) then
        skip_2a = true
        SetObjectiveData(Objective_Marker.RiverRecon01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        rec_dead = rec_dead + 1
      end
      if not skip_2b and IsDead(Ground_Vehicle.TN_RIVER_LTP02) then
        skip_2b = true
        SetObjectiveData(Objective_Marker.RiverRecon02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        rec_dead = rec_dead + 1
      end
      if rec_dead == 0 then
        SetObjectiveData(Objective.RiverRecon00, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RiverRecon01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RiverRecon02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if rec_dead == 1 then
        SetObjectiveData(Objective.RiverRecon00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RiverRecon01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RiverRecon02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if not skip_2c and rec_dead == 2 then
        skip_2c = true
        SetObjectiveData(Objective.RiverRecon00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RiverRecon01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.RiverRecon02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.RiverRecon02, constant.OBJECTIVE_DATA_STATE, 1)
        if not messages.HasBeenTriggered("WF_EnterBase") then
          SetObjectiveData(Objective_Marker.DefendOutpostFront, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.DefendOutpostFront, constant.OBJECTIVE_DATA_VISIBLE, 1)
        end
      end
    end
    if CurrentObjective == 1 and 0 < GetPlayerUnit() then
      if not messages.HasBeenPlayed("WF_Cover") and 0 < group.NumInState(Unit_Group.TN_Ambushers, constant.ACTION_STATE_ATTACK) then
        messages.Show("WF_Cover")
      end
      if not messages.HasBeenPlayed("WF_Cover") and group.GetTargeted(Unit_Group.TN_Ambushers) then
        messages.Show("WF_Cover")
      end
      if IsInArea(GetPlayerUnit(), Map_Zone.Outpost) then
        CurrentObjective = 2
        messages.SetRead("WF_IncAtRiver1")
        messages.SetRead("WF_IncAtRiver2")
        messages.SetRead("Teach_CSTICK")
        messages.SetRead("Teach_ZBUTTON1")
        messages.SetRead("Teach_ZBUTTON2")
        messages.SetRead("Teach_AdvancedWPN1")
        messages.SetRead("Teach_AdvancedWPN2")
        messages.SetRead("WF_RiverDone")
        messages.SetRead("WF_BazWeakness")
        messages.SetRead("WF_GetToWB")
        ClearMessageQueue()
        SetObjectiveData(Objective_Marker.RiverRecon01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.RiverRecon02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        WaitFor(1)
        messages.Show("WF_EnterBase")
        group.SetActive(Unit_Group.WF_CharlieCompany, constant.ACTIVE)
        group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_CC_RFL01)
        group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_CC_RFL05)
        group.Add(Unit_Group.WF_PlayerUnits, Troop.WF_CC_RFL06)
        SetObjectiveData(Objective.DefendOutpostFront, constant.OBJECTIVE_DATA_STATE, 1)
        SetObjectiveData(Objective_Marker.DefendOutpostRear, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.DefendOutpostRear, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
    end
    if CurrentObjective == 2 then
      if not mg_obj and not messages.HasBeenPlayed("TN_InfWave1Attack") and not messages.HasBeenPlayed("Teach_LoadMG1") and not AllMGsGarrisoned() and 0 < group.NumInZone(Unit_Group.WF_PlayerUnits, Map_Zone.MGNestArea) then
        mg_obj = true
        SetObjectiveData(Objective.DefendOutpostRear, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if mg_obj_limit == 0 and mg_obj then
        mg_obj_limit = GetTime() + 60
      end
      local enMGsDone = 0
      if not messages.HasBeenTriggered("TN_InfWave1Attack") and mg_obj then
        if 0 < GetUnitInSeat(Building.WF_STATICGUN_002, 0) then
          enMGsDone = enMGsDone + 1
          SetObjectiveData(Objective_Marker.MGtwo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        else
          SetObjectiveData(Objective_Marker.MGtwo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        end
        if 0 < GetUnitInSeat(Building.WF_STATICGUN_003, 0) then
          enMGsDone = enMGsDone + 1
          SetObjectiveData(Objective_Marker.MGthree, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        else
          SetObjectiveData(Objective_Marker.MGthree, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        end
        if enMGsDone == 0 then
          SetObjectiveData(Objective.MGzero, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.MGone, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.MGtwo, constant.OBJECTIVE_DATA_VISIBLE, 0)
        end
        if enMGsDone == 1 then
          SetObjectiveData(Objective.MGzero, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.MGone, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.MGtwo, constant.OBJECTIVE_DATA_VISIBLE, 0)
        end
        if enMGsDone == 2 then
          SetObjectiveData(Objective.MGzero, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.MGone, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.MGtwo, constant.OBJECTIVE_DATA_VISIBLE, 1)
        end
      end
      if not messages.HasBeenPlayed("TN_InfWave1Attack") and AllMGsGarrisoned() then
        WaitFor(2)
        if AllMGsGarrisoned_HACK() then
          messages.Show("TN_InfWave1Attack")
        else
          messages.SetRead("TN_InfWave1Attack")
          messages.Show("Teach_UnLoadMG")
        end
        group.Spawn(Unit_Group.TN_InfantryWave_01, true)
        wavestamp = GetTime()
        SetObjectiveData(Objective.DefendWB, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.ObjFront, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ObjRear, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.MGtwo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.MGthree, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if enMGsDone == 0 then
          SetObjectiveData(Objective.MGzero, constant.OBJECTIVE_DATA_STATE, 1)
        end
        if enMGsDone == 1 then
          SetObjectiveData(Objective.MGone, constant.OBJECTIVE_DATA_STATE, 1)
          TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
        end
        if enMGsDone == 2 then
          SetObjectiveData(Objective.MGtwo, constant.OBJECTIVE_DATA_STATE, 1)
          TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 2
        end
      end
      if messages.HasBeenPlayed("TN_InfWave1Attack") and (group.NumDead(Unit_Group.TN_InfantryWave_01, 100) or GetTime() > wavestamp + wavelimit) then
        CurrentObjective = 3
        messages.Show("WF_InfWave1Dead")
        messages.Show("Teach_MsgLOG", 30)
        group.Spawn(Unit_Group.TN_ReconWave_01, true)
        WaitFor(1)
        if 0 < NumItemsInArea(Map_Zone.SPAWNHACK, constant.ARMY_WF) then
          group.FollowWaypoint(Unit_Group.TN_ReconWave_01, Waypoint.NEW_START_WP)
        else
          Teleport(Ground_Vehicle.TN_RECONWAVE01_RCN01, -234, -10, 150, 10)
          Teleport(Ground_Vehicle.TN_TRANSPORTWAVE01_LTP01, -243, 7, 150, 10)
          Teleport(Ground_Vehicle.TN_TRANSPORTWAVE01_LTP02, -253, 22, 150, 10)
          group.FollowWaypoint(Unit_Group.TN_ReconWave_01, Waypoint.Entity0005)
        end
        wavestamp = GetTime()
        SetObjectiveData(Objective_Marker.ObjFront, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.ObjRear, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
    end
    if CurrentObjective == 3 then
      if not skip_3 and IsInArea(Ground_Vehicle.TN_TRANSPORTWAVE01_LTP01, Map_Zone.River) then
        skip_3 = true
        SetObjectiveData(Objective.DefendOutpostFront, constant.OBJECTIVE_DATA_STATE, 1)
      end
      if group.NumDead(Unit_Group.TN_ReconWave_01, 100) or GetTime() > wavestamp + wavelimit + 60 then
        CurrentObjective = 4
        if 0 < group.NumDead(Unit_Group.TN_ReconWave_01) then
          messages.Show("WF_RcnWave1Dead")
        end
        messages.Show("TN_InfWave2Attack", 6)
        messages.Show("Teach_Global", 25)
        group.Spawn(Unit_Group.TN_InfantryWave_02, true)
        wavestamp = GetTime()
        SetObjectiveData(Objective_Marker.ObjFront, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.ObjRear, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    end
    if CurrentObjective == 4 and (group.NumDead(Unit_Group.TN_InfantryWave_02, 100) or GetTime() > wavestamp + wavelimit) then
      CurrentObjective = 5
      messages.Show("WF_InfWave2Dead")
      group.Spawn(Unit_Group.TN_InfantryWave_03, true)
      group.Spawn(Unit_Group.TN_ReconWave_02, true)
      WaitFor(1)
      if 0 < NumItemsInArea(Map_Zone.SPAWNHACK, constant.ARMY_WF) then
        group.FollowWaypoint(Unit_Group.TN_ReconWave_02, Waypoint.NEW_START_WP)
      else
        Teleport(Ground_Vehicle.TN_RECONWAVE02_RCN01, -234, -10, 150, 10)
        Teleport(Ground_Vehicle.TN_TRANSPORTWAVE02_LTP01, -243, 7, 150, 10)
        Teleport(Ground_Vehicle.TN_TRANSPORTWAVE02_LTP02, -253, 22, 150, 10)
        group.FollowWaypoint(Unit_Group.TN_ReconWave_02, Waypoint.Entity0005)
      end
      wavestamp = GetTime()
      SetObjectiveData(Objective_Marker.ObjFront, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.ObjRear, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    if CurrentObjective == 5 and (group.NumDead(Unit_Group.TN_InfantryWave_03, 100) and group.NumDead(Unit_Group.TN_ReconWave_02, 100) or GetTime() > wavestamp + wavelimit) then
      CurrentObjective = 6
      messages.Show("WF_Punishment")
      tcopter_spawned = true
      WaitFor(2)
      group.Spawn(Unit_Group.TN_InfantryWave_04, true)
      wavestamp = GetTime()
      SetObjectiveData(Objective_Marker.ObjFront, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective_Marker.ObjRear, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if CurrentObjective == 6 and (group.NumDead(Unit_Group.TN_InfantryWave_04, 100) or GetTime() > wavestamp + wavelimit) then
      CurrentObjective = 7
      wavestamp = GetTime()
      Spawn(Air_Vehicle.WF_INTRO_ATP01)
      Spawn(Ground_Vehicle.TN_LTK01)
      Spawn(Ground_Vehicle.TN_LTK02)
      Spawn(Ground_Vehicle.WF_INTRO_LTK01)
      SetObjectiveData(Objective_Marker.DestroyTank, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.DestroyTank2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.DefendWB, constant.OBJECTIVE_DATA_STATE, 1)
      GoToArea(Ground_Vehicle.TN_LTK01, 200, -185, 1)
      messages.Show("WF_ReinforceOTW")
      WaitFor(1)
      Teleport(Air_Vehicle.WF_INTRO_ATP01, 600, 155, 220, 20)
      LandAirUnit(Air_Vehicle.WF_INTRO_ATP01, 165, -265, constant.ORDER_FORCED)
      WaitFor(1)
    end
    if stop01 and IsInArea(Ground_Vehicle.TN_LTK01, 206, -142, 20) then
      stop01 = false
      StopAndGuard(Ground_Vehicle.TN_LTK01)
    end
    if stop02 and IsInArea(Ground_Vehicle.TN_LTK02, 201, -157, 20) then
      stop02 = false
      StopAndGuard(Ground_Vehicle.TN_LTK02)
    end
    if stop03 and IsInArea(Ground_Vehicle.TN_RIVER_LTP01, 199, -177, 20) then
      stop03 = false
      StopAndGuard(Ground_Vehicle.TN_RIVER_LTP01)
    end
    if stop04 and IsInArea(Ground_Vehicle.TN_RIVER_LTP02, 200, -199, 20) then
      stop04 = false
      StopAndGuard(Ground_Vehicle.TN_RIVER_LTP02)
    end
    if stop05 and IsInArea(Ground_Vehicle.TN_RECONWAVE01_RCN01, 200, -221, 20) then
      stop05 = false
      StopAndGuard(Ground_Vehicle.TN_RECONWAVE01_RCN01)
    end
    if stop06 and IsInArea(Ground_Vehicle.TN_RECONWAVE02_RCN01, 191, -241, 20) then
      stop06 = false
      StopAndGuard(Ground_Vehicle.TN_RECONWAVE02_RCN01)
    end
    if stop07 and IsInArea(Ground_Vehicle.TN_TRANSPORTWAVE01_LTP01, 172, -247, 20) then
      stop07 = false
      StopAndGuard(Ground_Vehicle.TN_TRANSPORTWAVE01_LTP01)
    end
    if stop08 and IsInArea(Ground_Vehicle.TN_TRANSPORTWAVE01_LTP02, 150, -244, 20) then
      stop08 = false
      StopAndGuard(Ground_Vehicle.TN_TRANSPORTWAVE01_LTP02)
    end
    if stop09 and IsInArea(Ground_Vehicle.TN_TRANSPORTWAVE02_LTP01, 129, -237, 20) then
      stop09 = false
      StopAndGuard(Ground_Vehicle.TN_TRANSPORTWAVE02_LTP01)
    end
    if stop10 and IsInArea(Ground_Vehicle.TN_TRANSPORTWAVE02_LTP02, 106, -231, 20) then
      stop10 = false
      StopAndGuard(Ground_Vehicle.TN_TRANSPORTWAVE02_LTP02)
    end
    if CurrentObjective == 7 then
      SetActive(Air_Vehicle.WF_INTRO_ATP01, constant.INACTIVE)
      if GetMovementState(Air_Vehicle.WF_INTRO_ATP01) == constant.MOVEMENT_STATE_ON_GROUND then
        WaitFor(1)
        ExitVehicle(constant.ID_NONE, Air_Vehicle.WF_INTRO_ATP01)
        WaitFor(2)
        GoToArea(Troop.WF_INTRO_ATP01_CRW01, 170, -220, 5)
        GoToArea(Troop.WF_INTRO_ATP01_CRW02, 172, -222, 5)
        GoToArea(Troop.WF_INTRO_ATP01_CRW03, 174, -224, 5)
        GoToArea(Troop.WF_INTRO_ATP01_CRW04, 176, -226, 5)
        GoToArea(Troop.WF_INTRO_ATP01_CRW05, 178, -228, 5)
        GoToArea(Troop.WF_INTRO_ATP01_CRW06, 180, -230, 5)
        GoToArea(Ground_Vehicle.WF_INTRO_LTK01, 200, -225, 1)
        WaitFor(4)
        SetActive(Troop.WF_INTRO_ATP01_CRW01, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetActive(Troop.WF_INTRO_ATP01_CRW02, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetActive(Troop.WF_INTRO_ATP01_CRW03, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetActive(Troop.WF_INTRO_ATP01_CRW04, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetActive(Troop.WF_INTRO_ATP01_CRW05, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetActive(Troop.WF_INTRO_ATP01_CRW06, constant.ACTIVE, constant.ADJUST_WEAPON)
        SetActive(Ground_Vehicle.WF_INTRO_LTK01, constant.ACTIVE, constant.ADJUST_WEAPON)
        GoToArea(Air_Vehicle.WF_INTRO_ATP01, 500, 500, 10)
      end
      if not ltk_a and IsDead(Ground_Vehicle.TN_LTK01) then
        ltk_a = true
        SetObjectiveData(Objective_Marker.DestroyTank, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        ltk_dead = ltk_dead + 1
      end
      if not ltk_b and IsDead(Ground_Vehicle.TN_LTK02) then
        ltk_b = true
        SetObjectiveData(Objective_Marker.DestroyTank2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        ltk_dead = ltk_dead + 1
      end
      if ltk_dead == 0 then
        SetObjectiveData(Objective.ltk00, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.ltk01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.ltk02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if ltk_dead == 1 then
        SetObjectiveData(Objective.ltk00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.ltk01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.ltk02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if rec_dead == 2 then
        rec_dead = 3
        SetObjectiveData(Objective.ltk00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.ltk01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.ltk02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if IsDead(Ground_Vehicle.TN_LTK01) and IsDead(Ground_Vehicle.TN_LTK02) then
        SetObjectiveData(Objective.ltk00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.ltk01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.ltk02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.ltk02, constant.OBJECTIVE_DATA_STATE, 1)
        messages.SetRead("WF_SuperTraction")
        messages.SetRead("WF_LtkInc02")
        messages.SetRead("WF_LtkInc03")
        StopScoringTimer()
        FreezePlayer()
        WaitFor(1)
        DeclareVictory(constant.ARMY_WF)
        FreezePlayer()
        messages.Show("TN_Underestimated")
        while not messages.HasFinishedPlaying("TN_Underestimated") do
          messages.Process()
          EndFrame()
        end
        FreezePlayer()
        messages.Show("WF_Underestimated")
        while not messages.HasFinishedPlaying("WF_Underestimated") do
          messages.Process()
          EndFrame()
        end
        FreezePlayer()
        messages.Show("TN_Tactics")
        while not messages.HasFinishedPlaying("TN_Tactics") do
          messages.Process()
          EndFrame()
        end
        FreezePlayer()
        messages.Show("WF_Tactics")
        while not messages.HasFinishedPlaying("WF_Tactics") do
          messages.Process()
          EndFrame()
        end
        FreezePlayer()
        WaitFor(2)
        CameraFade(constant.FADE_OUT, constant.WAIT, 1)
        WaitFor(1)
        WinMission()
        break
      end
    end
    if not base_capped and GetState(Capture_Point.OUTPOST_CAPTURE_POINT) == flag.TYPE_TUNDRAN then
      FreezePlayer()
      base_capped = true
      WaitFor(1)
      DeclareVictory(constant.ARMY_TUNDRAN)
      WaitFor(4)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.Cutscene01)
      CameraSetWaypoint(Camera.Cutscene01, Waypoint.CS_CPLOSS_TRACK01_01)
      CameraSetTarget(Camera.Cutscene01, Capture_Point.OUTPOST_CAPTURE_POINT)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      messages.Show("WF_LostCP")
      while not messages.HasFinishedPlaying("WF_LostCP") do
        messages.Process()
        EndFrame()
      end
      messages.Show("TN_POW")
      while not messages.HasFinishedPlaying("TN_POW") do
        messages.Process()
        EndFrame()
      end
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      LoseMission(315)
      break
    end
    if AllPlayerUnitsDead(0) then
      FreezePlayer()
      WaitFor(1)
      DeclareVictory(constant.ARMY_TUNDRAN)
      WaitFor(5)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      LoseMission(301)
      break
    end
    EndFrame()
  end
end
