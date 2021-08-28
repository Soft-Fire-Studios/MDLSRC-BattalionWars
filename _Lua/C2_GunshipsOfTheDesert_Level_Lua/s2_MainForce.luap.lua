function s2_MainForce(owner)
  Despawn(Air_Vehicle.WFgunship0002)
  local BazookaMessageDone = 0
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.MainForce) then
      TankReinforcements = 1
      SetObjectiveData(Objective_Marker.ObjectiveMainForce, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Secondary_MainForce, constant.OBJECTIVE_DATA_STATE, 1)
      SetActive(Ground_Vehicle.WFheavytank0001, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      SetActive(Ground_Vehicle.WFheavytank0002, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      SetActive(Ground_Vehicle.WFheavytank0003, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
      break
    end
    EndFrame()
  end
  SetActive(Air_Vehicle.WFgunship0001, constant.ACTIVE, constant.DONT_ADJUST_WEAPON)
  PhoneMessage(77, constant.ID_NONE, 0, 8, SpriteID.CO_WF_Austin_Happy)
  if not IsDead(Troop.Xbazooka0006) and BazookaMessageDone == 0 then
    BazookaMessageDone = 1
    PhoneMessage(79, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy)
  end
  if not IsDead(Troop.Xbazooka0007) and BazookaMessageDone == 0 then
    BazookaMessageDone = 1
    PhoneMessage(79, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy)
  end
  if not IsDead(Troop.Xbazooka0008) and BazookaMessageDone == 0 then
    BazookaMessageDone = 1
    PhoneMessage(79, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy)
  end
  if not IsDead(Troop.Xbazooka0009) and BazookaMessageDone == 0 then
    BazookaMessageDone = 1
    PhoneMessage(79, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Austin_Happy)
  end
  EndFrame()
  return
end
