function level_Omaha(owner)
  local bigNbalance = 8
  local totaltimeout = 60
  group.Add(Unit_Group.Omaha, Troop.WF_RFL01)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL02)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL03)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL04)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL05)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL06)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL07)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL08)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL09)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL10)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL11)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL12)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL13)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL14)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL15)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL16)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL17)
  group.Add(Unit_Group.Omaha, Troop.WF_RFL18)
  group.SetActive(Unit_Group.Omaha, constant.INACTIVE)
  Despawn(Air_Vehicle.WF_BMB01)
  Despawn(Air_Vehicle.WF_BMB02)
  Despawn(Air_Vehicle.WF_STRAT01)
  while InStartCutscene do
    EndFrame()
  end
  while true do
    if WF_ATP01Landed == true and WF_ATP02Landed == true and WF_ATP03Landed == true then
      DebugOut("Go!")
      break
    end
    DebugOut("Wait!")
    WaitFor(2)
  end
  WF_StormStarted = true
  group.ScatterInArea(Unit_Group.Omaha, -130, 570, 10, 10)
  local timeout = GetTime() + totaltimeout
  while true do
    if timeout < GetTime() then
      break
    end
    if IsDead(Air_Vehicle.XV_BMB01) == true and IsDead(Air_Vehicle.XV_BMB02) == true then
      WaitFor(5)
      break
    end
    EndFrame()
  end
  messages.Show("WF_FriendlyATPsLanded")
  Spawn(Air_Vehicle.WF_BMB01)
  Spawn(Air_Vehicle.WF_BMB02)
  group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_BMB01)
  group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_BMB02)
  WaitFor(2)
  if GetPlayerUnit() > 0 then
    FollowUnit(Air_Vehicle.WF_BMB01, GetPlayerUnit(), -1, 0)
    FollowUnit(Air_Vehicle.WF_BMB02, GetPlayerUnit(), -1, 0)
  end
  SetObjectiveData(Objective.BEACH, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective_Marker.BEACH, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  WaitFor(6)
  WaitFor(bigNbalance)
  WF_AllOutAttack = true
  WaitFor(2)
  Teleport(Air_Vehicle.XV_FIG03, -670, 1414, 5, 10)
  Teleport(Air_Vehicle.XV_FIG04, -700, 400, 5, 10)
  Teleport(Air_Vehicle.XV_FIG05, 500, 400, 5, 10)
  Teleport(Air_Vehicle.XV_BMB03, 500, 1400, 5, 10)
  GoToArea(Air_Vehicle.XV_FIG03, 320, 800, 5)
  GoToArea(Air_Vehicle.XV_FIG04, 460, 840, 5)
  GoToArea(Air_Vehicle.XV_FIG05, 500, 880, 5)
  group.FollowWaypoint(Unit_Group.Omaha, Waypoint.WP_STORMPATH01, 1, 1)
  enARTsDead = 0
  SetObjectiveData(Objective.ARTILLERY, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.XV_ART01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XV_ART02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  local timeout = GetTime() + totaltimeout
  while true do
    if timeout < GetTime() then
      break
    end
    if IsDead(Ground_Vehicle.XV_ART01) and IsDead(Ground_Vehicle.XV_ART02) then
      break
    end
    EndFrame()
  end
  WaitFor(6)
  WaitFor(bigNbalance)
  group.FollowWaypoint(Unit_Group.Omaha, Waypoint.WF_STORMPATH02, 1, 1)
  if not IsDead(Ground_Vehicle.XV_LTK01) or not IsDead(Ground_Vehicle.XV_LTK02) then
    messages.Show("WF_LightTanks")
    messages.Show("WF_BmbTnks", 7)
  end
  enTNKsDead = 0
  SetObjectiveData(Objective.TANKS, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.XV_LTK01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.XV_LTK02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  local timeout = GetTime() + totaltimeout
  while true do
    if timeout < GetTime() then
      break
    end
    local i = 0
    if IsDead(Ground_Vehicle.XV_LTK01) then
      SetObjectiveData(Objective_Marker.XV_LTK01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      i = i + 1
    end
    if IsDead(Ground_Vehicle.XV_LTK02) then
      SetObjectiveData(Objective_Marker.XV_LTK02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      i = i + 1
    end
    if i == 2 then
      break
    end
    EndFrame()
  end
  WaitFor(6)
  WaitFor(bigNbalance)
  group.FollowWaypoint(Unit_Group.Omaha, Waypoint.WF_STORMPATH02b, 1, 1)
  if not messages.HasBeenTriggered("WF_GunshipsFree") then
    messages.Show("WF_RescueGunships")
    messages.Show("WF_BmbPowMG", 7)
    SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_STATE, 0)
    SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_VISIBLE, 1)
    SetObjectiveData(Objective_Marker.POWs, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
    while not messages.HasBeenTriggered("WF_GunshipsFree") do
      EndFrame()
    end
  end
  SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Atp01, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Atp02, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Atp03, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Atp04, constant.OBJECTIVE_DATA_VISIBLE, 0)
  WaitFor(10)
  enMGsDead = 0
  group.FollowWaypoint(Unit_Group.Omaha, Waypoint.WF_STORMPATH03, 1, 1)
  DebugOut("Heading to base")
  while true do
    if 0 < group.NumInZone(Unit_Group.Omaha, Map_Zone.BASE) then
      break
    end
    EndFrame()
  end
  DebugOut("Scattering in base")
  group.ScatterInArea(Unit_Group.Omaha, -222, 1004, 30, 30)
  enFlagsCapped = 0
  SetObjectiveData(Objective.BASECAP, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectiveData(Objective_Marker.BASECAP0, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BASECAP1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.BASECAP2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  CapturingBase = true
  messages.Show("WF_ReachedBase")
  messages.Show("WF_StratInc", 6)
  messages.Show("WF_EnAtpInc", 12)
  messages.Show("WF_TakeEmOut", 18)
  Spawn(Air_Vehicle.WF_STRAT01)
  group.Add(Unit_Group.WF_Air, Air_Vehicle.WF_STRAT01)
  while not Teleport(Air_Vehicle.WF_STRAT01, 550, 950, 270, 50) do
    EndFrame()
  end
  WaitFor(2)
  FollowUnit(Air_Vehicle.WF_STRAT01, GetPlayerUnit(), -1, 0)
  SetActive(Air_Vehicle.WF_STRAT01, constant.ACTIVE)
  SetObjectiveData(Objective.POWs, constant.OBJECTIVE_DATA_VISIBLE, 0)
  while true do
    local unit = group.RandomInZone(Unit_Group.Omaha, Map_Zone.BASE)
    local cp = 0
    if cp == 0 then
      if GetState(Capture_Point.cp0) == flag.TYPE_WFRONTIER then
        SetObjectiveData(Objective_Marker.BASECAP0, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        DebugOut("1 capped")
        messages.Show("WF_OneCap")
      else
        cp = Capture_Point.cp0
        SetObjectiveData(Objective_Marker.BASECAP0, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    end
    if cp == 0 then
      if GetState(Capture_Point.cp1) == flag.TYPE_WFRONTIER then
        SetObjectiveData(Objective_Marker.BASECAP1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        DebugOut("2 capped")
        messages.Show("WF_TwoCap")
      else
        cp = Capture_Point.cp1
        SetObjectiveData(Objective_Marker.BASECAP1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    end
    if cp == 0 then
      if GetState(Capture_Point.cp2) == flag.TYPE_WFRONTIER then
        SetObjectiveData(Objective_Marker.BASECAP2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        DebugOut("3 capped")
      else
        cp = Capture_Point.cp2
        SetObjectiveData(Objective_Marker.BASECAP2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
    end
    if cp > 0 then
      if unit > 0 then
        EnterVehicle(unit, cp)
      end
    else
      DebugOut("All capped")
      break
    end
    DebugOut("Cap loop", "Unit:", unit, "Capture:", cp)
    WaitFor(15)
  end
  local chk_strat1 = true
  local chk_strat2 = true
  break_tag_loop = true
  messages.Show("WF_Victory")
  WaitFor(8)
  SetObjectiveData(Objective.Flg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Flg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Flg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Flg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.BASECAP0, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.BASECAP1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.BASECAP2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p4, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p5, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p6, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p7, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p8, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p9, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p10, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p11, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p12, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p13, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p14, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p15, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p16, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p17, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective_Marker.p18, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
  SetObjectiveData(Objective.Strat00, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Strat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Strat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  Spawn(Air_Vehicle.XV_STRAT01)
  Spawn(Air_Vehicle.XV_STRAT02)
  Teleport(Air_Vehicle.XV_STRAT01, -1100, 1100, 0, 20)
  Teleport(Air_Vehicle.XV_STRAT02, 1000, 1100, 0, 20)
  if GetPlayerUnit() > 0 then
    AttackTarget(Air_Vehicle.XV_STRAT01, GetPlayerUnit())
    AttackTarget(Air_Vehicle.XV_STRAT02, GetPlayerUnit())
    while true do
      if chk_strat1 and IsDead(Air_Vehicle.XV_STRAT01) then
        chk_strat1 = false
        SetObjectiveData(Objective_Marker.Strat01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      if chk_strat2 and IsDead(Air_Vehicle.XV_STRAT02) then
        chk_strat2 = false
        SetObjectiveData(Objective_Marker.Strat02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      end
      local i = 0
      if IsDead(Air_Vehicle.XV_STRAT01) then
        i = i + 1
      end
      if IsDead(Air_Vehicle.XV_STRAT02) then
        i = i + 1
      end
      if i == 0 then
        SetObjectiveData(Objective.Strat00, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Strat01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Strat02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if i == 1 then
        SetObjectiveData(Objective.Strat00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Strat01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Strat02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if i == 2 then
        SetObjectiveData(Objective.Strat00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Strat01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Strat02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Strat02, constant.OBJECTIVE_DATA_STATE, 1)
        break
      end
      EndFrame()
    end
  end
  WaitFor(2)
  messages.Show("XV_Loss")
  FreezePlayer()
end
