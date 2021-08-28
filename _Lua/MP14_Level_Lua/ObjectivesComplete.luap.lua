function ObjectivesComplete(owner)
  scriptObjectivesComplete = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  repeat
    if fuelrefinery + munitionsdump + communicationstower == 3 then
      objectivescomplete = 1
      DebugOut("All Objectives Complete")
      ClearMessageQueue(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_TWO)
      PhoneMessageWithObjective(16, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessageWithObjective(16, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO, false, constant.NEW_PRIMARY_OBJECTIVE)
      PhoneMessage(47, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
      PhoneMessage(47, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
      PhoneMessage(30, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
      PhoneMessage(30, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO)
    end
    EndFrame()
  until objectivescomplete == 1
  chopperstatus = 3
  Vanish(Destroyable_Object.FakeHelipad)
  Spawn(Capture_Point.Escape)
  SetObjectiveData(Objective.Escape, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.Escape, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  while true do
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      if GetState(Capture_Point.Escape) == flag.TYPE_SOLAR or GetState(Capture_Point.Escape) == flag.TYPE_WFRONTIER then
        DebugOut("This Mission has been won!")
        ClearMessageQueue(constant.PLAYER_ONE)
        netvariable.player1.missioncomplete = 1
        break
      end
    end
    EndFrame()
  end
  while true do
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      if GetState(Capture_Point.Escape) == flag.TYPE_SOLAR or GetState(Capture_Point.Escape) == flag.TYPE_WFRONTIER then
        DebugOut("This Mission has been won!")
        ClearMessageQueue(constant.PLAYER_TWO)
        break
      end
    end
    EndFrame()
  end
end
