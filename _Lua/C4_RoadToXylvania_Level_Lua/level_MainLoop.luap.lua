function level_MainLoop(owner)
  local DebugText = true
  local SkipMes = false
  local check_B1 = true
  local check_B2 = true
  local check_end = true
  local check_pre = true
  WesternFrontier = FriendlyArmy
  Xylvania = EnemyArmy
  Legion = EnemyArmy
  MinLevelTime = 720
  MaxLevelTime = 1320
  TechniqueWeighting = 10
  messages.Add("WF_Intro_01", 1, 8, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_Intro_02", 17, 5, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("WF_Fort_01a", 3, 5, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_Fort_01b", 4, 7, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_Fort_01c", 5, 7, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_CUT01", 0, 5, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_CUT02", 6, 7, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_CUT03", 8, 7, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_CUT04", 9, 10, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_CUT05", 10, 10, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_CUT06", 11, 9, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_Failed", 13, 11, constant.ARMY_WF, SpriteID.CO_WF_Betty_Sad)
  messages.Add("WF_Victory", 15, 8, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("WF_PreVictory", 31, 9, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("XV_XSoil", 17, 9, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("LG_WeAreLG", 19, 11, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("LG_Surrender", 20, 7, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("WF_NoSurrender", 21, 8, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  messages.Add("LG_SoBeIt", 22, 6, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("XV_Spineless", 23, 9, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("XV_HowCouldYou", 25, 9, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("LG_Ingrid", 26, 9, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("XV_Lost", 27, 9, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("LG_CrushYou", 29, 6, constant.ARMY_UNDERWORLD, SpriteID.CO_X_Ingrid_Happy)
  messages.Add("WF_Issues", 30, 6, constant.ARMY_WF, SpriteID.CO_WF_Betty_Happy)
  MessagesReady = true
  while InStartCutscene do
    EndFrame()
  end
  StartScoringTimer()
  SetObjectiveData(Objective_Marker.guide, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  messages.Show("WF_Intro_01")
  while true do
    messages.Process()
    if messages.HasFinishedPlaying("WF_Intro_01") then
      messages.Show("WF_Intro_02")
    end
    if messages.HasFinishedPlaying("WF_Fort_01b") then
      messages.Show("LG_WeAreLG")
    end
    if messages.HasFinishedPlaying("LG_WeAreLG") then
      messages.Show("LG_Surrender")
    end
    if messages.HasFinishedPlaying("LG_Surrender") then
      messages.Show("WF_NoSurrender")
    end
    if messages.HasFinishedPlaying("WF_NoSurrender") then
      messages.Show("LG_SoBeIt")
    end
    if not SkipMes and messages.HasFinishedPlaying("XV_Spineless") then
      SkipMes = true
      messages.SetRead("LG_WeAreLG")
      messages.SetRead("LG_Surrender")
      messages.SetRead("WF_NoSurrender")
      messages.SetRead("LG_SoBeIt")
      ClearMessageQueue()
      WaitFor(1)
      messages.Show("WF_Fort_01c")
    end
    if messages.HasFinishedPlaying("WF_Fort_01c") then
      messages.Show("XV_HowCouldYou")
    end
    if messages.HasFinishedPlaying("XV_HowCouldYou") then
      messages.Show("LG_Ingrid")
    end
    if messages.HasFinishedPlaying("LG_Ingrid") then
      messages.Show("XV_Lost")
    end
    if messages.HasFinishedPlaying("LG_CrushYou") then
      messages.Show("WF_Issues")
    end
    if 0 < NumItemsInArea(Map_Zone.CRUSHYOU, flag.TYPE_WFRONTIER) then
      messages.Show("LG_CrushYou")
    end
    if not messages.HasBeenTriggered("WF_Fort_01a") and 7 > NumItemsInArea(Map_Zone.FORT01, flag.TYPE_XYLVANIAN) then
      messages.Show("WF_Fort_01a")
      messages.Show("WF_Fort_01b", 8)
      GoToArea(Air_Vehicle.LG_COP01, -740, -670, 10)
      GoToArea(Air_Vehicle.LG_COP02, -750, -680, 10)
    end
    if not messages.HasBeenTriggered("XV_Spineless") and (0 < NumItemsInArea(Map_Zone.FLEE01, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.FLEE02, flag.TYPE_WFRONTIER)) then
      messages.Show("XV_Spineless")
      GoToArea(Troop.XV_RFL10, -560, -630, 10)
      GoToArea(Troop.XV_RFL11, -562, -632, 10)
      GoToArea(Troop.XV_RFL12, -564, -634, 10)
      GoToArea(Troop.XV_RFL13, -566, -636, 10)
      GoToArea(Troop.XV_RFL14, -568, -638, 10)
      GoToArea(Troop.XV_RFL15, -570, -640, 10)
      AttackTarget(Air_Vehicle.LG_COP03, Troop.XV_RFL10)
      AttackTarget(Air_Vehicle.LG_COP04, Troop.XV_RFL14)
    end
    if not RespawnLegionCopters and 0 < NumItemsInArea(Map_Zone.APPROACH02, flag.TYPE_WFRONTIER) then
      RespawnLegionCopters = true
      if 0 < GetPlayerUnit() then
        if not IsDead(Air_Vehicle.LG_COP01) then
          AttackTarget(Air_Vehicle.LG_COP01, GetPlayerUnit())
        end
        if not IsDead(Air_Vehicle.LG_COP02) then
          AttackTarget(Air_Vehicle.LG_COP02, GetPlayerUnit())
        end
        if not IsDead(Air_Vehicle.LG_COP03) then
          AttackTarget(Air_Vehicle.LG_COP03, GetPlayerUnit())
        end
        if not IsDead(Air_Vehicle.LG_COP04) then
          AttackTarget(Air_Vehicle.LG_COP04, GetPlayerUnit())
        end
      end
    end
    if check_B1 and IsDead(Building.VLAD) then
      check_B1 = false
      SetObjectiveData(Objective_Marker.End, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if check_B2 and IsDead(Building.VLAD_2) then
      check_B2 = false
      SetObjectiveData(Objective_Marker.End_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
    end
    if check_end and 0 < NumItemsInArea(Map_Zone.END, flag.TYPE_WFRONTIER) then
      check_end = false
      if IsDead(Building.VLAD) and IsDead(Building.VLAD_2) then
        messages.Show("WF_Victory")
        messages.SetRead("WF_PreVictory")
      else
        messages.Show("WF_PreVictory")
      end
      SetObjectiveData(Objective.End, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective.Effigy, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.End, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.End_2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    end
    if check_pre and messages.HasFinishedPlaying("WF_PreVictory") and IsDead(Building.VLAD) and IsDead(Building.VLAD_2) then
      check_pre = false
      SetObjectiveData(Objective.Effigy, constant.OBJECTIVE_DATA_STATE, 1)
      messages.Show("WF_Victory")
      FreezePlayer()
      WaitFor(1)
      DeclareVictory(constant.ARMY_WF)
      while not messages.HasFinishedPlaying("WF_Victory") do
        messages.Process()
        EndFrame()
      end
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      WinMission()
      return
    end
    if GetPlayerUnit() == 0 then
      messages.Show("WF_Failed")
      FreezePlayer()
      WaitFor(1)
      if messages.HasFinishedPlaying("LG_WeAreLG") then
        DeclareVictory(constant.ARMY_UNDERWORLD)
      else
        DeclareVictory(constant.ARMY_XYLVANIAN)
        while not messages.HasFinishedPlaying("WF_Failed") do
          messages.Process()
          EndFrame()
        end
      end
      WaitFor(1)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      LoseMission(301)
      return
    end
    EndFrame()
  end
end
