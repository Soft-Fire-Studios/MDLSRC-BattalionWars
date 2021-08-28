function level_MainLoop(owner)
  local DebugText = true
  WesternFrontier = FriendlyArmy
  Xylvania = EnemyArmy
  MinLevelTime = 700
  MaxLevelTime = 1500
  PowerObjectives = 9
  TechniqueObjectives = 20
  TechniqueWeighting = 10
  group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_FIG01)
  group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_FIG02)
  group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_FIG03)
  group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_FIG04)
  group.Add(Unit_Group.DropOff, Troop.XV_RFL07)
  group.Add(Unit_Group.DropOff, Troop.XV_RFL08)
  group.Add(Unit_Group.DropOff, Troop.XV_RFL09)
  group.Add(Unit_Group.DropOff, Troop.XV_RFL10)
  group.Add(Unit_Group.DropOff, Troop.XV_RFL11)
  group.Add(Unit_Group.DropOff, Troop.XV_RFL12)
  group.Add(Unit_Group.DropOff, Troop.XV_RFL14)
  group.Add(Unit_Group.DropOff, Troop.XV_RFL15)
  SetActive(Air_Vehicle.WF_COP01, constant.INACTIVE)
  SetActive(Air_Vehicle.WF_COP02, constant.INACTIVE)
  SetActive(Air_Vehicle.WF_COP03, constant.INACTIVE)
  Despawn(Air_Vehicle.XV_STRAT01)
  Despawn(Air_Vehicle.XV_STRAT02)
  messages.Add("WF_EnemyATPsEnRoute", 0, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_EnemyATPsStopped4", 1, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_EnemyATPsStopped3", 2, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_EnemyATPsStopped2", 3, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_EnemyATPsStopped1", 4, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_EnemyATPsStopped0", 5, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_FriendlyATPsEnRoute", 6, 8, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  messages.Add("WF_FriendlyATPsLanded", 7, 7, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  messages.Add("XV_Artillery", 8, 7, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("WF_LightTanks", 9, 6, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  messages.Add("WF_RescueGunships", 10, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_GunshipsFree", 11, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_ReachedBase", 12, 8, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  messages.Add("WF_Reinforcing", 13, 7, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  messages.Add("WF_FailAir", 14, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_FailInvasion", 15, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_Victory", 16, 7, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  messages.Add("WF_Intro01", 17, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Intro02", 18, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Intro03", 19, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Intro04", 20, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Intro05", 21, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_OneCap", 22, 5, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  messages.Add("WF_TwoCap", 23, 5, constant.ARMY_WF, SpriteID.CO_WF_Herman_Happy)
  messages.Add("WF_InvasionTen", 24, 8, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
  messages.Add("WF_InvasionSix", 25, 6, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
  messages.Add("WF_InvasionThree", 26, 7, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
  messages.Add("WF_InvasionOne", 27, 6, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
  messages.Add("XV_MisStart", 29, 10, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("WF_Victory02", 31, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_Victory03", 32, 8, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
  messages.Add("WF_Victory04", 33, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_ClearSkies", 85, 8, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("XV_BmbsDead", 86, 11, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("WF_FbmbsInc", 87, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_BmbArt", 88, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_BmbTnks", 89, 5, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_BmbPowMG", 90, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_StratInc", 91, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("XV_AceOfSpades", 92, 9, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("WF_EnAtpInc", 93, 7, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_TakeEmOut", 94, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_EnStratInc", 100, 9, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("WF_EnStratIncb", 101, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  messages.Add("XV_Tactician", 102, 9, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Happy)
  messages.Add("WF_TakeOurStrat", 103, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("XV_Loss", 104, 12, constant.ARMY_XYLVANIAN, SpriteID.CO_X_Vlad_Sad)
  messages.Add("WF_FinalVic", 105, 6, constant.ARMY_WF, SpriteID.CO_WF_Austin_Happy)
  messages.Add("WF_CantWait", 106, 10, constant.ARMY_WF, SpriteID.CO_WF_Herman_Sad)
  messages.Add("WF_PoorDisplay", 107, 10, constant.ARMY_WF, SpriteID.CO_WF_Austin_Sad)
  MessagesReady = true
  while InStartCutscene do
    EndFrame()
  end
  SetObjectiveData(Objective.ATPs, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.XV_ATP02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  FollowUnit(Air_Vehicle.WF_FIG02, GetPlayerUnit(), -1, 0)
  FollowUnit(Air_Vehicle.WF_FIG03, GetPlayerUnit(), -1, 0)
  FollowUnit(Air_Vehicle.WF_FIG04, GetPlayerUnit(), -1, 0)
  SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_VISIBLE, 1)
  StartScoringTimer()
  messages.Show("XV_MisStart")
  messages.Show("WF_EnemyATPsEnRoute", 6)
  while true do
    messages.Process()
    if messages.HasFinishedPlaying("WF_FbmbsInc") then
      messages.Show("XV_Artillery")
    end
    if messages.HasFinishedPlaying("XV_Artillery") then
      messages.Show("WF_BmbArt")
    end
    if messages.HasFinishedPlaying("WF_EnemyATPsStopped4") or messages.HasFinishedPlaying("WF_EnemyATPsStopped3") or messages.HasFinishedPlaying("WF_EnemyATPsStopped2") or messages.HasFinishedPlaying("WF_EnemyATPsStopped1") or messages.HasFinishedPlaying("WF_EnemyATPsStopped0") then
      messages.Show("WF_FriendlyATPsEnRoute")
    end
    if not messages.HasBeenTriggered("WF_ClearSkies") and messages.HasFinishedPlaying("WF_FriendlyATPsEnRoute") then
      messages.Show("WF_ClearSkies", 3)
    end
    if messages.HasFinishedPlaying("WF_FriendlyATPsLanded") then
      if IsDead(Ground_Vehicle.XV_ART01) and IsDead(Ground_Vehicle.XV_ART02) then
        messages.SetRead("WF_FbmbsInc")
        messages.SetRead("XV_Artillery")
        messages.SetRead("WF_BmbArt")
      else
        messages.Show("WF_FbmbsInc")
      end
    end
    if messages.HasFinishedPlaying("WF_ReachedBase") then
      messages.Show("WF_Reinforcing")
    end
    if group.NumDead(Unit_Group.Omaha) == 8 then
      messages.Show("WF_InvasionTen")
    end
    if group.NumDead(Unit_Group.Omaha) == 12 then
      messages.Show("WF_InvasionSix")
    end
    if group.NumDead(Unit_Group.Omaha) == 15 then
      messages.Show("WF_InvasionThree")
    end
    if group.NumDead(Unit_Group.Omaha) == 17 then
      messages.Show("WF_InvasionOne")
    end
    if messages.HasFinishedPlaying("WF_Victory") then
      messages.Show("WF_Victory02")
    end
    if messages.HasFinishedPlaying("WF_Victory02") then
      messages.Show("WF_Victory03")
    end
    if messages.HasFinishedPlaying("WF_Victory03") then
      messages.Show("WF_Victory04")
    end
    if messages.HasFinishedPlaying("WF_Victory04") then
      messages.Show("XV_AceOfSpades")
    end
    if messages.HasFinishedPlaying("XV_AceOfSpades") then
      messages.Show("WF_EnStratInc")
    end
    if messages.HasFinishedPlaying("WF_EnStratInc") then
      messages.Show("WF_EnStratIncb")
    end
    if messages.HasFinishedPlaying("WF_EnStratIncb") then
      messages.Show("XV_Tactician")
    end
    if messages.HasFinishedPlaying("XV_Tactician") and not IsDead(Air_Vehicle.WF_STRAT01) then
      messages.Show("WF_TakeOurStrat")
    end
    if messages.HasFinishedPlaying("XV_Loss") then
      messages.Show("WF_FinalVic")
    end
    if messages.HasFinishedPlaying("WF_FinalVic") then
      messages.SetRead("WF_GunshipsFree")
      WaitFor(1)
      DeclareVictory(constant.ARMY_WF)
      WaitFor(4)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + group.NumAlive(Unit_Group.Omaha)
      WaitFor(1)
      WinMission()
      return
    end
    if group.NumDead(Unit_Group.WF_Air, 100) or GetPlayerUnit() == 0 then
      messages.SetRead("WF_GunshipsFree")
      messages.Show("WF_FailAir")
      FreezePlayer()
      WaitFor(1)
      DeclareVictory(constant.ARMY_XYLVANIAN)
      while not messages.HasFinishedPlaying("WF_FailAir") do
        messages.Process()
        EndFrame()
      end
      WaitFor(5)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      LoseMission(318)
      return
    end
    if not messages.HasBeenTriggered("WF_Victory") and WF_StormStarted and group.NumDead(Unit_Group.Omaha, 100) then
      messages.SetRead("WF_FriendlyATPsEnRoute")
      messages.SetRead("WF_FriendlyATPsLanded")
      messages.SetRead("XV_Artillery")
      messages.SetRead("WF_LightTanks")
      messages.SetRead("WF_RescueGunships")
      messages.SetRead("WF_GunshipsFree")
      messages.SetRead("WF_ReachedBase")
      messages.SetRead("WF_Reinforcing")
      ClearMessageQueue()
      FreezePlayer()
      WaitFor(1)
      messages.Show("WF_FailInvasion")
      DeclareVictory(constant.ARMY_XYLVANIAN)
      while not messages.HasFinishedPlaying("WF_FailInvasion") do
        messages.Process()
        EndFrame()
      end
      WaitFor(5)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      WaitFor(1)
      LoseMission(317)
      return
    end
    EndFrame()
  end
end
