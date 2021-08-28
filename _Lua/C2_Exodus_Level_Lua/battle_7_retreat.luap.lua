function battle_7_retreat(owner)
  local loop = 0
  local cpoint = 1
  while battle == 0 do
    EndFrame()
  end
  while battle == 1 do
    if hq == 1 then
      if loop == 0 and 0 < NumItemsInArea(Map_Zone.hq, flag.TYPE_XYLVANIAN) - NumItemsInArea(Map_Zone.hq, flag.TYPE_AIRCRAFT) then
        PhoneMessage(27, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
        WaitFor(2)
        loop = 1
      end
      if loop == 1 and NumItemsInArea(Map_Zone.hq, flag.TYPE_XYLVANIAN) == 0 then
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.north, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        PhoneMessage(11, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        hq = 0
        battle = 2
      end
      if GetGroupHealth(Unit_Group.xfirst) == 0 and IsDead(Air_Vehicle.xgunship1) and IsDead(Air_Vehicle.xgunship2) and IsDead(Ground_Vehicle.art1) and IsDead(Ground_Vehicle.art2) then
        SetObjectiveData(Objective.North, constant.OBJECTIVE_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.north, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        PhoneMessage(11, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        hq = 0
        battle = 2
      end
      if loop == 1 and cpoint == 0 and CheckCapturePoint(Capture_Point.tundran, constant.ARMY_XYLVANIAN, 0, 100) then
        PhoneMessage(43, constant.ID_NONE, 2, 6, SpriteID.CO_T_Nova_Sad)
        cpoint = 1
      end
    end
    EndFrame()
  end
  loop = 0
  cpoint = 0
  while battle == 2 do
    if hq == 1 then
      if loop == 0 and 0 < NumItemsInArea(Map_Zone.hq, flag.TYPE_XYLVANIAN) - NumItemsInArea(Map_Zone.hq, flag.TYPE_AIRCRAFT) then
        PhoneMessage(27, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
        loop = 1
      end
      if loop == 1 and NumItemsInArea(Map_Zone.hq, flag.TYPE_XYLVANIAN) == 0 then
        if south == 0 then
          SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        end
        PhoneMessage(27, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Betty_Happy)
        hq = 0
        battle = 2
      end
      if GetGroupHealth(Unit_Group.xsecond) == 0 then
        if south == 0 then
          SetObjectiveData(Objective.South, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective_Marker.south, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        end
        hq = 0
        battle = 3
      end
      if loop == 1 and cpoint == 0 and CheckCapturePoint(Capture_Point.tundran, constant.ARMY_XYLVANIAN, 0, 100) then
        PhoneMessage(43, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
        cpoint = 1
      end
    end
    EndFrame()
  end
  loop = 0
  cpoint = 0
  while battle == 3 do
    if cpoint == 0 and CheckCapturePoint(Capture_Point.tundran, constant.ARMY_XYLVANIAN, 0, 100) then
      PhoneMessage(43, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      cpoint = 1
    end
    EndFrame()
  end
  loop = 0
  cpoint = 0
  while battle == 4 do
    if cpoint == 0 and CheckCapturePoint(Capture_Point.tundran, constant.ARMY_XYLVANIAN, 0, 100) then
      PhoneMessage(43, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      cpoint = 1
    end
    EndFrame()
  end
  loop = 0
  cpoint = 0
  while battle == 5 do
    if cpoint == 0 and CheckCapturePoint(Capture_Point.tundran, constant.ARMY_XYLVANIAN, 0, 100) then
      PhoneMessage(43, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      cpoint = 1
    end
    EndFrame()
  end
  loop = 0
  cpoint = 0
end
