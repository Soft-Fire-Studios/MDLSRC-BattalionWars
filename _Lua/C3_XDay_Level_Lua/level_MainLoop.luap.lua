function level_MainLoop(owner)
  local DebugText = false
  local wavestamp = 0
  local wavelimit = 130
  local mg_obj = false
  local heli_attack = false
  local any_beach_left = false
  local skip_art = false
  WesternFrontier = FriendlyArmy
  Xylvania = EnemyArmy
  MinLevelTime = 490
  MaxLevelTime = 1000
  PowerObjectives = 2
  TechniqueObjectives = 3
  TechniqueWeighting = 10
  DebugScoring = true
  group.Add(Unit_Group.StratDef, Air_Vehicle.WF_FIG01)
  group.Add(Unit_Group.StratDef, Air_Vehicle.WF_FIG02)
  group.Add(Unit_Group.StratDef, Troop.WF_MIS01)
  group.Add(Unit_Group.StratDef, Troop.WF_MIS02)
  group.Add(Unit_Group.StratDef, Troop.WF_MIS03)
  group.Add(Unit_Group.StratDef, Troop.WF_MIS04)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL05)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL06)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL07)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL08)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL09)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL10)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL11)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL12)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL13)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_RFL14)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_ATP_CRW02)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_ATP_CRW04)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_ATP_CRW05)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_CGN01)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_CGN02)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_CGN03)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_CGN04)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_MTR01)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_MTR02)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_MTR03)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_MTR04)
  group.Add(Unit_Group.PlayerUnits, Ground_Vehicle.WF_LTK01)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_LTK01_CRW01)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_LTK01_CRW02)
  group.Add(Unit_Group.PlayerUnits, Ground_Vehicle.WF_LTK02)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_LTK02_CRW01)
  group.Add(Unit_Group.PlayerUnits, Troop.WF_LTK02_CRW02)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL01)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL02)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL03)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL04)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL05)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL06)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL07)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL08)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL09)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL10)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL11)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL12)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL13)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL14)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL15)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL16)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL17)
  group.Add(Unit_Group.Beachhead, Troop.XV_RFL18)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL05)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL06)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL07)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL08)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL09)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL10)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL11)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL12)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL13)
  group.Add(Unit_Group.Overlord, Troop.WF_RFL14)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL01)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL02)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL03)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL04)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL05)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL06)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL07)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL08)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL09)
  group.Add(Unit_Group.XV_1stWaveRFL, Troop.XV_RFL10)
  group.Add(Unit_Group.XV_2ndWaveRFL, Troop.XV_RFL11)
  group.Add(Unit_Group.XV_2ndWaveRFL, Troop.XV_RFL12)
  group.Add(Unit_Group.XV_2ndWaveRFL, Troop.XV_RFL13)
  group.Add(Unit_Group.XV_2ndWaveRFL, Troop.XV_RFL14)
  group.Add(Unit_Group.XV_2ndWaveRFL, Troop.XV_RFL15)
  group.Add(Unit_Group.XV_2ndWaveRFL, Troop.XV_RFL16)
  group.Add(Unit_Group.XV_2ndWaveRFL, Troop.XV_RFL17)
  group.Add(Unit_Group.XV_2ndWaveRFL, Troop.XV_RFL18)
  group.Spawn(Unit_Group.XV_2ndWaveRFL, false)
  group.Add(Unit_Group.XV_STRAT, Air_Vehicle.XV_FIG01)
  group.Add(Unit_Group.XV_STRAT, Air_Vehicle.XV_FIG02)
  group.Add(Unit_Group.XV_STRAT, Air_Vehicle.XV_FIG03)
  group.Add(Unit_Group.XV_STRAT, Air_Vehicle.XV_FIG04)
  group.Spawn(Unit_Group.XV_STRAT, false)
  Despawn(Air_Vehicle.XV_STRAT01)
  group.Add(Unit_Group.HeliDefenders, Troop.XV_GAS01)
  group.Add(Unit_Group.HeliDefenders, Troop.XV_GAS02)
  group.Add(Unit_Group.HeliDefenders, Troop.XV_GAS03)
  group.Add(Unit_Group.HeliDefenders, Troop.XV_GAS04)
  group.Add(Unit_Group.HeliDefenders, Troop.XV_GAS05)
  group.Add(Unit_Group.HeliDefenders, Troop.XV_GAS06)
  Despawn(Air_Vehicle.WF_ATP03)
  messages.Add("WF_FigTut01", 0, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_FigTut02", 1, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Beach_Secure", 2, 4, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("XV_Helipad_Retort", 4, 8, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("WF_StratCirc", 5, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_Awesome_Strat", 6, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_RescueVets", 7, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Free_Pilots", 9, 10, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("XV_Launch_Strat", 10, 11, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("XV_Strat_Dead", 11, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Victory", 12, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("XV_Defeat", 13, 9, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("WF_Strat_Advice", 14, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Capture_HFlag", 16, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Art_Advice", 17, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Pilots_Free", 20, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("XV_Victory", 21, 11, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("WF_Defeat", 22, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_NoStratDef", 30, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_Intro01", 31, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_Intro02", 32, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_Intro03", 33, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_Intro04", 34, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_Intro05", 35, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_Intro06", 37, 4, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_MisStart", 38, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("XV_MisStart", 39, 8, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("WF_CapHPad2", 41, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_ReinInc", 44, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_NewStratInc", 52, 10, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("XV_NewStratInc", 53, 10, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  MessagesReady = true
  while InStartCutscene do
    EndFrame()
  end
  StartScoringTimer()
  SetObjectiveData(Objective_Marker.Art01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Art02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  group.Spawn(Unit_Group.XV_2ndWaveRFL, true)
  messages.Show("WF_MisStart")
  messages.Show("XV_MisStart", 7)
  while true do
    messages.Process()
    local num_art_dead = 0
    if IsDead(Ground_Vehicle.XV_ART01) then
      SetObjectiveData(Objective_Marker.Art01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      num_art_dead = num_art_dead + 1
    end
    if IsDead(Ground_Vehicle.XV_ART02) then
      SetObjectiveData(Objective_Marker.Art02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      num_art_dead = num_art_dead + 1
    end
    SetObjectiveData(Objective.Art00, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Art01, constant.OBJECTIVE_DATA_VISIBLE, 0)
    SetObjectiveData(Objective.Art02, constant.OBJECTIVE_DATA_VISIBLE, 0)
    if num_art_dead == 0 then
      SetObjectiveData(Objective.Art00, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if num_art_dead == 1 then
      SetObjectiveData(Objective.Art01, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if num_art_dead == 2 and not skip_art then
      skip_art = true
      SetObjectiveData(Objective.Art02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Art02, constant.OBJECTIVE_DATA_STATE, 1)
    end
    if not BeachCleared and 8 > NumItemsInArea(Map_Zone.BEACH, flag.TYPE_XYLVANIAN) and IsDead(Ground_Vehicle.XV_ART01) and IsDead(Ground_Vehicle.XV_ART02) then
      BeachCleared = true
      DebugOut("Beach Cleared")
      messages.Show("WF_Beach_Secure")
      SetObjectiveData(Objective.AssaultBeach, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Helipad, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Helipad, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    if not heli_attack and 0 < NumItemsInArea(Map_Zone.HELIPAD, flag.TYPE_WFRONTIER) then
      heli_attack = true
      for i = 1, GetNumMatchingInGroup(Unit_Group.HeliDefenders) do
        AttackTarget(GetGroupMember(Unit_Group.HeliDefenders, i), GetPlayerUnit())
      end
      for i = 1, GetNumMatchingInGroup(Unit_Group.Beachhead) do
        if not IsDead(GetGroupMember(Unit_Group.Beachhead, i)) and IsInArea(GetGroupMember(Unit_Group.Beachhead, i), Map_Zone.BEACH) then
          group.Add(Unit_Group.Beachhead2, GetGroupMember(Unit_Group.Beachhead, i))
        end
      end
      group.ScatterInArea(Unit_Group.Beachhead2, -270, -400, 60, 40)
      SetObjectiveData(Objective.AssaultBase, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.Guide, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.MisVetPOWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.MisVetPOWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if not HeliPadUndefended and 2 > NumItemsInArea(Map_Zone.HELIPAD, flag.TYPE_XYLVANIAN) then
      HeliPadUndefended = true
      DebugOut("Helipad Cleared")
      messages.Show("WF_Capture_HFlag")
    end
    if not HeliPadCaptured and GetState(Capture_Point.Helipad) == flag.TYPE_WFRONTIER then
      HeliPadCaptured = true
      DebugOut("HeliPad Captured")
      SetObjectiveData(Objective.Helipad, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Helipad, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if 0 < NumItemsInArea(Map_Zone.EndBeach, flag.TYPE_WFRONTIER) then
      messages.Show("WF_Art_Advice")
    end
    if messages.HasFinishedPlaying("WF_Pilots_Free") then
      messages.Show("WF_FigTut01")
    end
    if messages.HasFinishedPlaying("WF_FigTut01") then
      messages.Show("WF_FigTut02")
    end
    if not messages.HasBeenTriggered("XV_NewStratInc") and messages.HasFinishedPlaying("WF_FigTut02") and StratLaunched then
      messages.Show("XV_NewStratInc", 5)
    end
    if messages.HasFinishedPlaying("XV_NewStratInc") then
      messages.Show("WF_Strat_Advice")
    end
    if messages.HasFinishedPlaying("WF_Beach_Secure") then
      messages.Show("WF_CapHPad2")
    end
    if messages.HasFinishedPlaying("WF_CapHPad2") then
      messages.Show("XV_Helipad_Retort")
    end
    if messages.HasFinishedPlaying("XV_Launch_Strat") then
      messages.Show("WF_NewStratInc")
    end
    if messages.HasFinishedPlaying("WF_ReinInc") then
      messages.Show("WF_Awesome_Strat")
    end
    if 0 < NumItemsInArea(Map_Zone.STRATMES, flag.TYPE_WFRONTIER) then
      messages.Show("WF_Awesome_Strat")
    end
    if messages.HasFinishedPlaying("WF_Awesome_Strat") then
      messages.Show("WF_StratCirc")
    end
    if messages.HasFinishedPlaying("WF_StratCirc") then
      messages.Show("WF_RescueVets")
    end
    if 4 < NumItemsInArea(Map_Zone.MAINBASE, flag.TYPE_WFRONTIER) then
      messages.Show("WF_Free_Pilots")
      SetObjectiveData(Objective.PilotPOWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if 4 < NumItemsInArea(Map_Zone.LSTRAT01, flag.TYPE_WFRONTIER) or 4 < NumItemsInArea(Map_Zone.LSTRAT02, flag.TYPE_WFRONTIER) or 4 < NumItemsInArea(Map_Zone.LSTRAT03, flag.TYPE_WFRONTIER) then
      messages.Show("XV_Launch_Strat")
      SetObjectiveData(Objective_Marker.Guide, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if GetPlayerUnit() == 0 then
      messages.SetRead("WF_Pilots_Free")
      messages.Show("WF_Defeat")
      FreezePlayer()
      WaitFor(1)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      WaitFor(1)
      while not messages.HasFinishedPlaying("WF_Defeat") do
        messages.Process()
        EndFrame()
      end
      messages.Show("XV_Victory")
      while not messages.HasFinishedPlaying("XV_Victory") do
        messages.Process()
        EndFrame()
      end
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      LoseMission(301)
    end
    if group.NumDead(Unit_Group.StratDef, 100) then
      messages.Show("WF_NoStratDef")
      while not messages.HasFinishedPlaying("WF_NoStratDef") do
        messages.Process()
        EndFrame()
      end
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      LoseMission(319)
    end
    if messages.HasFinishedPlaying("XV_Strat_Dead") then
      if IsDead(Ground_Vehicle.XV_ART01) then
        PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      end
      if IsDead(Ground_Vehicle.XV_ART02) then
        PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      end
      if 5 < NumItemsInWorld(flag.TYPE_XYLVANIAN) then
        PowerObjectives = PowerObjectives + 1
      end
      if 10 < NumItemsInWorld(flag.TYPE_XYLVANIAN) then
        PowerObjectives = PowerObjectives + 1
      end
      if NumItemsInWorld(flag.TYPE_XYLVANIAN) > 15 then
        PowerObjectives = PowerObjectives + 1
      end
      if IsDead(Ground_Vehicle.WF_LTK01) then
        TechniqueObjectives = TechniqueObjectives + 1
      end
      if IsDead(Ground_Vehicle.WF_LTK02) then
        TechniqueObjectives = TechniqueObjectives + 1
      end
      if IsDead(Ground_Vehicle.WF_LTK03) then
        TechniqueObjectives = TechniqueObjectives + 1
      end
      messages.Show("WF_Victory")
      WaitFor(4)
      while not messages.HasFinishedPlaying("WF_Victory") do
        messages.Process()
        EndFrame()
      end
      messages.Show("XV_Defeat")
      while not messages.HasFinishedPlaying("XV_Defeat") do
        messages.Process()
        EndFrame()
      end
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WinMission()
    end
    EndFrame()
  end
end
