function C1M1_TSpyVanished(owner)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.SpyVanish) then
      ClearMessageQueue()
      PhoneMessage(176, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Betty_Sad)
      SetObjectiveData(Objective_Marker.ObjectiveTwo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      break
    end
    EndFrame()
  end
  WaitFor(15)
  if (not IsDead(Building.TlisteningPost0001) or not IsDead(Building.TlisteningPost0002) or not IsDead(Building.TlisteningPost0003)) and C1M1_SpyBalloons == 0 then
    PhoneMessage(47, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
  end
  EndFrame()
  return
end
