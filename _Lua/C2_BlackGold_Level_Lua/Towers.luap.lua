function Towers(owner)
  local loop = 0
  local tower1 = 0
  local tower2 = 0
  local tower3 = 0
  local text = 0
  while aasites < 5 do
    if GetHealthPercent(Building.Tower1) < 100 then
      SetHealthPercent(Building.Tower1, 100)
    end
    if 100 > GetHealthPercent(Building.Tower2) then
      SetHealthPercent(Building.Tower2, 100)
    end
    if 100 > GetHealthPercent(Building.Tower3) then
      SetHealthPercent(Building.Tower3, 100)
    end
    EndFrame()
  end
  SetObjectiveData(Objective.Extraction_Towers, constant.OBJECTIVE_DATA_VISIBLE, 1)
  while loop < 3 do
    if tower1 == 0 and IsDead(Building.Tower1) then
      ClearMessageQueue()
      SetObjectiveData(Objective_Marker.Tower1, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Tower1, constant.OBJECTIVE_DATA_STATE, 1)
      if levelstate == 0 then
        levelstate = 1
        WaitFor(6)
      end
      tower1 = 1
      loop = loop + 1
      tower = tower + 1
      WaitFor(1)
    end
    if tower2 == 0 and IsDead(Building.Tower2) then
      SetObjectiveData(Objective_Marker.Tower2, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Tower2, constant.OBJECTIVE_DATA_STATE, 1)
      tower2 = 1
      loop = loop + 1
      tower = tower + 1
    end
    if tower3 == 0 and IsDead(Building.Tower3) then
      SetObjectiveData(Objective_Marker.Tower3, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Tower3, constant.OBJECTIVE_DATA_STATE, 1)
      tower3 = 1
      loop = loop + 1
      tower = tower + 1
    end
    if tower == 2 and text == 0 then
      PhoneMessage(13, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
      PhoneMessage(21, constant.ID_NONE, 1, 6, SpriteID.CO_X_Vlad_Sad)
      text = 1
    end
    EndFrame()
  end
end
