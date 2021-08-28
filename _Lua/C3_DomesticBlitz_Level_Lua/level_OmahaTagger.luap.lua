function level_OmahaTagger(owner)
  local Current = 0
  local AllTags
  local function SetObjectives(i)
    local list = AllTags
    while list do
      SetObjectiveData(list.objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, i)
      list = list.next
    end
  end
  local function SetObjectiveByID(id, i)
    local list = AllTags
    while list do
      if list.unit == id then
        SetObjectiveData(list.objective, constant.OBJECTIVE_MARKER_DATA_VISIBLE, i)
      end
      list = list.next
    end
  end
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL01,
    objective = Objective_Marker.p1
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL02,
    objective = Objective_Marker.p2
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL03,
    objective = Objective_Marker.p3
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL04,
    objective = Objective_Marker.p4
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL05,
    objective = Objective_Marker.p5
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL06,
    objective = Objective_Marker.p6
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL07,
    objective = Objective_Marker.p7
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL08,
    objective = Objective_Marker.p8
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL09,
    objective = Objective_Marker.p9
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL10,
    objective = Objective_Marker.p10
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL11,
    objective = Objective_Marker.p11
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL12,
    objective = Objective_Marker.p12
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL13,
    objective = Objective_Marker.p13
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL14,
    objective = Objective_Marker.p14
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL15,
    objective = Objective_Marker.p15
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL16,
    objective = Objective_Marker.p16
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL17,
    objective = Objective_Marker.p17
  }
  AllTags = {
    next = AllTags,
    unit = Troop.WF_RFL18,
    objective = Objective_Marker.p18
  }
  SetObjectiveData(Objective.OMAHADUDES, constant.OBJECTIVE_DATA_STATE, 0)
  SetObjectives(0)
  while true do
    enATPsDead = 0
    if IsDead(Air_Vehicle.XV_ATP02) then
      enATPsDead = enATPsDead + 1
    end
    if IsDead(Air_Vehicle.XV_ATP03) then
      enATPsDead = enATPsDead + 1
    end
    if IsDead(Air_Vehicle.XV_ATP04) then
      enATPsDead = enATPsDead + 1
    end
    if IsDead(Air_Vehicle.XV_ATP05) then
      enATPsDead = enATPsDead + 1
    end
    if enATPsDead == 0 then
      SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Atp01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      if XV_AllAPTsDead then
        SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_STATE, 1)
        messages.Show("WF_EnemyATPsStopped0")
        break
      end
    end
    if enATPsDead == 1 then
      SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Atp02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      if XV_AllAPTsDead then
        SetObjectiveData(Objective.Atp01, constant.OBJECTIVE_DATA_STATE, 1)
        messages.Show("WF_EnemyATPsStopped1")
        break
      end
    end
    if enATPsDead == 2 then
      SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Atp03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      if XV_AllAPTsDead then
        SetObjectiveData(Objective.Atp02, constant.OBJECTIVE_DATA_STATE, 1)
        messages.Show("WF_EnemyATPsStopped2")
        break
      end
    end
    if enATPsDead == 3 then
      SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.Atp04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      if XV_AllAPTsDead then
        SetObjectiveData(Objective.Atp03, constant.OBJECTIVE_DATA_STATE, 1)
        messages.Show("WF_EnemyATPsStopped3")
        break
      end
    end
    if enATPsDead == 4 then
      SetObjectiveData(Objective.Atp00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Atp04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      if XV_AllAPTsDead then
        SetObjectiveData(Objective.Atp04, constant.OBJECTIVE_DATA_STATE, 1)
        messages.Show("WF_EnemyATPsStopped4")
        break
      end
    end
    EndFrame()
  end
  enOMHsDead = 0
  while true do
    if break_tag_loop then
      break
    end
    if enBMBsDead == -1 then
    else
      enBMBsDead = 0
      if IsDead(Air_Vehicle.XV_BMB01) then
        enBMBsDead = enBMBsDead + 1
      end
      if IsDead(Air_Vehicle.XV_BMB02) then
        enBMBsDead = enBMBsDead + 1
      end
      if enBMBsDead == 0 then
        SetObjectiveData(Objective.Bm00, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Bm01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Bm02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enBMBsDead == 1 then
        SetObjectiveData(Objective.Bm00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Bm01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Bm02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enBMBsDead == 2 then
        messages.Show("XV_BmbsDead")
        SetObjectiveData(Objective.Bm00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Bm01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Bm02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Bm02, constant.OBJECTIVE_DATA_STATE, 1)
        enBMBsDead = -1
      end
    end
    if enARTsDead == -1 then
    else
      enARTsDead = 0
      if IsDead(Ground_Vehicle.XV_ART01) then
        enARTsDead = enARTsDead + 1
        SetObjectiveData(Objective_Marker.XV_ART01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      else
        SetObjectiveData(Objective_Marker.XV_ART01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Ground_Vehicle.XV_ART02) then
        enARTsDead = enARTsDead + 1
        SetObjectiveData(Objective_Marker.XV_ART02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      else
        SetObjectiveData(Objective_Marker.XV_ART02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if enARTsDead == 0 then
        SetObjectiveData(Objective.Art00, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Art01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Art02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enARTsDead == 1 then
        SetObjectiveData(Objective.Art00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Art01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Art02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enARTsDead == 2 then
        SetObjectiveData(Objective.Art00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Art01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Art02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Art02, constant.OBJECTIVE_DATA_STATE, 1)
        enARTsDead = -1
      end
    end
    if enTNKsDead == -1 then
    else
      enTNKsDead = 0
      if IsDead(Ground_Vehicle.XV_LTK01) then
        enTNKsDead = enTNKsDead + 1
        SetObjectiveData(Objective_Marker.XV_LTK01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      else
        SetObjectiveData(Objective_Marker.XV_LTK01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Ground_Vehicle.XV_LTK02) then
        enTNKsDead = enTNKsDead + 1
        SetObjectiveData(Objective_Marker.XV_LTK02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      else
        SetObjectiveData(Objective_Marker.XV_LTK02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if enTNKsDead == 0 then
        SetObjectiveData(Objective.Tn00, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Tn01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Tn02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enTNKsDead == 1 then
        SetObjectiveData(Objective.Tn00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Tn01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Tn02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enTNKsDead == 2 then
        SetObjectiveData(Objective.Tn00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Tn01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Tn02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Tn02, constant.OBJECTIVE_DATA_STATE, 1)
        enTNKsDead = -1
      end
    end
    if enMGsDead == -1 then
    else
      enMGsDead = 0
      if IsDead(Building.XV_MGNEST03) then
        enMGsDead = enMGsDead + 1
        SetObjectiveData(Objective_Marker.MGN01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      else
        SetObjectiveData(Objective_Marker.MGN01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Building.XV_MGNEST04) then
        enMGsDead = enMGsDead + 1
        SetObjectiveData(Objective_Marker.MGN02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      else
        SetObjectiveData(Objective_Marker.MGN02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Building.XV_MGNEST05) then
        enMGsDead = enMGsDead + 1
        SetObjectiveData(Objective_Marker.MGN03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      else
        SetObjectiveData(Objective_Marker.MGN03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Building.XV_MGNEST06) then
        enMGsDead = enMGsDead + 1
        SetObjectiveData(Objective_Marker.MGN04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      else
        SetObjectiveData(Objective_Marker.MGN04, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if IsDead(Building.XV_MGNEST07) then
        enMGsDead = enMGsDead + 1
        SetObjectiveData(Objective_Marker.MGN05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        PowerObjectivesCompleted = PowerObjectivesCompleted + 1
      else
        SetObjectiveData(Objective_Marker.MGN05, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      end
      if enMGsDead == 0 then
        SetObjectiveData(Objective.Mg00, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Mg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg04, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg05, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enMGsDead == 1 then
        SetObjectiveData(Objective.Mg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Mg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg04, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg05, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enMGsDead == 2 then
        SetObjectiveData(Objective.Mg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Mg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg04, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg05, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enMGsDead == 3 then
        SetObjectiveData(Objective.Mg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg03, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Mg04, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg05, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enMGsDead == 4 then
        SetObjectiveData(Objective.Mg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg04, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Mg05, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enMGsDead == 5 then
        SetObjectiveData(Objective.Mg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg04, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Mg05, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Mg05, constant.OBJECTIVE_DATA_STATE, 1)
        enMGsDead = -1
      end
    end
    if enFlagsCapped == -1 then
    else
      enFlagsCapped = 0
      if GetState(Capture_Point.cp0) == flag.TYPE_WFRONTIER then
        enFlagsCapped = enFlagsCapped + 1
      end
      if GetState(Capture_Point.cp1) == flag.TYPE_WFRONTIER then
        enFlagsCapped = enFlagsCapped + 1
      end
      if GetState(Capture_Point.cp2) == flag.TYPE_WFRONTIER then
        enFlagsCapped = enFlagsCapped + 1
      end
      if enFlagsCapped == 0 then
        SetObjectiveData(Objective.Flg00, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Flg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enFlagsCapped == 1 then
        SetObjectiveData(Objective.Flg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg01, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Flg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enFlagsCapped == 2 then
        SetObjectiveData(Objective.Flg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg02, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Flg03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      end
      if enFlagsCapped == 3 then
        SetObjectiveData(Objective.Flg00, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg01, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg02, constant.OBJECTIVE_DATA_VISIBLE, 0)
        SetObjectiveData(Objective.Flg03, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective.Flg03, constant.OBJECTIVE_DATA_STATE, 1)
        enFlagsCapped = -1
      end
    end
    if WF_StormStarted then
      local numdead = group.NumDead(Unit_Group.Omaha)
      SetObjectiveData(Objective.om00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om05, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om06, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om07, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om08, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om11, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om12, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om13, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om14, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om15, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om16, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om17, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.om18, constant.OBJECTIVE_DATA_VISIBLE, 0)
      if numdead == 0 then
        SetObjectiveData(Objective.om18, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 1 then
        SetObjectiveData(Objective.om17, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 2 then
        SetObjectiveData(Objective.om16, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 3 then
        SetObjectiveData(Objective.om15, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 4 then
        SetObjectiveData(Objective.om14, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 5 then
        SetObjectiveData(Objective.om13, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 6 then
        SetObjectiveData(Objective.om12, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 7 then
        SetObjectiveData(Objective.om11, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 8 then
        SetObjectiveData(Objective.om10, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 9 then
        SetObjectiveData(Objective.om09, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 10 then
        SetObjectiveData(Objective.om08, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 11 then
        SetObjectiveData(Objective.om07, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 12 then
        SetObjectiveData(Objective.om06, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 13 then
        SetObjectiveData(Objective.om05, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 14 then
        SetObjectiveData(Objective.om04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 15 then
        SetObjectiveData(Objective.om03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 16 then
        SetObjectiveData(Objective.om02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 17 then
        SetObjectiveData(Objective.om01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if numdead == 18 then
        SetObjectiveData(Objective.om00, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      local id = 0
      if Current > 0 then
        if IsDead(Current) then
          SetObjectiveByID(Current, 0)
          Current = 0
        end
      else
        id = group.FirstNotDeadAfterIndex(Unit_Group.Omaha, 0)
      end
      if id > 0 then
        SetObjectiveByID(id, 1)
        Current = id
      end
    end
    WaitFor(1)
  end
end
