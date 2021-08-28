function level_MainLoop(owner)
  group.Add(Unit_Group.WF_ART, Ground_Vehicle.WF_ART01)
  group.Add(Unit_Group.WF_ART, Ground_Vehicle.WF_ART02)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_BAZ01)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_BAZ02)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_BAZ03)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_BAZ04)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_BAZ05)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_FLM01)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_FLM02)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_FLM03)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_FLM04)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_FLM05)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_RFL01)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_RFL02)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_RFL03)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_RFL04)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_RFL05)
  group.Add(Unit_Group.LG_GROUND_UNITS, Troop.LG_RFL06)
  group.Add(Unit_Group.LG_GROUND_UNITS, Ground_Vehicle.LG_HTK01)
  group.Add(Unit_Group.LG_GROUND_UNITS, Ground_Vehicle.LG_HTK02)
  group.Add(Unit_Group.LG_GROUND_UNITS, Ground_Vehicle.LG_HTK03)
  group.Add(Unit_Group.LG_GROUND_UNITS, Air_Vehicle.LG_COP01)
  group.Add(Unit_Group.LG_GROUND_UNITS, Air_Vehicle.LG_COP02)
  group.Add(Unit_Group.LG_GROUND_UNITS, Air_Vehicle.LG_COP03)
  group.Add(Unit_Group.LG_GROUND_UNITS, Air_Vehicle.LG_COP04)
  group.Add(Unit_Group.XV_RFLSTART02, Troop.XV_RFL01)
  group.Add(Unit_Group.XV_RFLSTART02, Troop.XV_RFL02)
  group.Add(Unit_Group.XV_RFLSTART02, Troop.XV_RFL03)
  group.Add(Unit_Group.XV_RFLSTART02, Troop.XV_RFL04)
  group.Add(Unit_Group.XV_RFLSTART02, Troop.XV_RFL05)
  group.Add(Unit_Group.XV_RFLSTART02, Troop.XV_RFL06)
  group.Add(Unit_Group.XV_RFLSTART01, Troop.XV_RFL07)
  group.Add(Unit_Group.XV_RFLSTART01, Troop.XV_RFL08)
  group.Add(Unit_Group.XV_RFLSTART01, Troop.XV_RFL09)
  group.Add(Unit_Group.XV_RFLSTART01, Troop.XV_RFL10)
  group.Add(Unit_Group.XV_RFLSTART01, Troop.XV_RFL11)
  group.Add(Unit_Group.XV_RFLSTART01, Troop.XV_RFL12)
  group.Add(Unit_Group.WF_STRONGH, Ground_Vehicle.WF_HTK01)
  group.Add(Unit_Group.WF_STRONGH, Ground_Vehicle.WF_HTK02)
  group.Add(Unit_Group.WF_STRONGH, Ground_Vehicle.WF_HTK03)
  group.Add(Unit_Group.WF_STRONGH, Ground_Vehicle.WF_ART01)
  group.Add(Unit_Group.WF_STRONGH, Ground_Vehicle.WF_ART02)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_MIS05)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_MIS06)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_MIS07)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_MIS08)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_MIS11)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_RFL01)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_RFL02)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_RFL03)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_RFL04)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_RFL05)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_RFL06)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_RFL07)
  group.Add(Unit_Group.WF_LASTPUSH, Troop.WF_RFL08)
  group.Spawn(Unit_Group.WF_LASTPUSH, false)
  messages.Add("LG_FreeAtLast", 0, 8, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("XV_TurnedOnUs", 1, 10, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("WF_AirTrans", 2, 10, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_ArtStart", 3, 6, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_ArtLost", 4, 10, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
  messages.Add("WF_WeLost", 5, 7, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
  messages.Add("LG_WeWon", 6, 10, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("WF_WeWon", 7, 5, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("LG_WeLost", 8, 8, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Sad)
  messages.Add("WF_Reinforce", 9, 5, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
  messages.Add("LG_Puny", 10, 8, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("LG_Intro01", 14, 7, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("LG_Intro02", 15, 8, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("LG_Intro03", 16, 6, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("LG_Intro04", 17, 7, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("LG_Intro05", 18, 10, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  Legion = FriendlyArmy
  WesternFrontier = EnemyArmy
  Xylvania = EnemyArmy
  MinLevelTime = 360
  MaxLevelTime = 960
  TechniqueWeighting = 10
  local FAVsSpawned = false
  local lastpush = false
  local tank = false
  while InStartCutscene do
    EndFrame()
  end
  StartScoringTimer()
  messages.Show("LG_FreeAtLast")
  SetObjectiveData(Objective.Fort01, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.Fort01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  while true do
    messages.Process()
    if messages.HasFinishedPlaying("WF_Reinforce") then
      messages.Show("LG_Puny")
    end
    if 0 < group.NumInZone(Unit_Group.LG_GROUND_UNITS, Map_Zone.Four) and not messages.HasBeenTriggered("XV_TurnedOnUs") then
      messages.Show("XV_TurnedOnUs")
      group.ScatterInArea(Unit_Group.XV_RFLSTART01, -790, -160, 50, 80)
    end
    if 0 < group.NumInZone(Unit_Group.LG_GROUND_UNITS, Map_Zone.Five) and not messages.HasBeenTriggered("WF_AirTrans") then
      messages.Show("WF_AirTrans")
      group.ScatterInArea(Unit_Group.XV_RFLSTART02, -790, -160, 50, 80)
      SetObjectiveData(Objective.Fort01, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.Fort01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Fort02, constant.OBJECTIVE_DATA_STATE, 0)
      SetObjectiveData(Objective_Marker.Fort02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    if 0 < group.NumInZone(Unit_Group.LG_GROUND_UNITS, Map_Zone.Three) and not messages.HasBeenPlayed("WF_ArtLost") then
      messages.Show("WF_ArtStart")
    end
    if group.NumDead(Unit_Group.WF_ART, 100) then
      messages.Show("WF_ArtLost")
      if not messages.HasBeenTriggered("WF_Reinforce") then
        messages.Show("WF_Reinforce", 8)
        WaitFor(2)
        group.Spawn(Unit_Group.WF_LASTPUSH, true)
        group.ScatterInArea(Unit_Group.WF_LASTPUSH, -745, -670, 50, 25)
      end
    end
    if not tank and 0 < group.NumInZone(Unit_Group.LG_GROUND_UNITS, Map_Zone.One) then
      tank = true
      GoToArea(Ground_Vehicle.WF_HTK04, -795, -285, 10)
    end
    if not messages.HasBeenTriggered("WF_Reinforce") and (0 < NumItemsInArea(Map_Zone.Seven, flag.TYPE_UNDERWORLD) or 0 < NumItemsInArea(Map_Zone.Two, flag.TYPE_UNDERWORLD)) then
      messages.Show("WF_Reinforce")
      WaitFor(2)
      group.Spawn(Unit_Group.WF_LASTPUSH, true)
      group.ScatterInArea(Unit_Group.WF_LASTPUSH, -745, -670, 50, 25)
    end
    if group.NumDead(Unit_Group.WF_STRONGH, 100) and group.NumDead(Unit_Group.WF_LASTPUSH, 100) then
      messages.SetRead("WF_ArtLost")
      messages.SetRead("WF_Reinforce")
      messages.SetRead("LG_Puny")
      ClearMessageQueue()
      WaitFor(1)
      messages.Show("WF_WeLost")
      FreezePlayer()
      WaitFor(1)
      DeclareVictory(constant.ARMY_UNDERWORLD)
      while not messages.HasFinishedPlaying("WF_WeLost") do
        messages.Process()
        EndFrame()
      end
      messages.Show("LG_WeWon")
      while not messages.HasFinishedPlaying("LG_WeWon") do
        messages.Process()
        EndFrame()
      end
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      WinMission()
    end
    if group.NumDead(Unit_Group.LG_GROUND_UNITS, 100) then
      messages.SetRead("WF_ArtLost")
      messages.SetRead("WF_Reinforce")
      messages.SetRead("LG_Puny")
      ClearMessageQueue()
      WaitFor(1)
      messages.Show("WF_WeWon")
      FreezePlayer()
      WaitFor(1)
      if messages.HasFinishedPlaying("WF_AirTrans") then
        DeclareVictory(constant.ARMY_WF)
      else
        DeclareVictory(constant.ARMY_XYLVANIAN)
        while not messages.HasFinishedPlaying("WF_WeWon") do
          messages.Process()
          EndFrame()
        end
      end
      messages.Show("LG_WeLost")
      while not messages.HasFinishedPlaying("LG_WeLost") do
        messages.Process()
        EndFrame()
      end
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      LoseMission(301)
    end
    EndFrame()
  end
end
