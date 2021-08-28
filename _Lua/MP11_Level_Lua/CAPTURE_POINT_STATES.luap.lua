function CAPTURE_POINT_STATES(owner)
  WaitFor(1)
  while true do
    repeat
      if GetState(Capture_Point.WF_Airbase_Flag) == flag.TYPE_WFRONTIER and WFairbasestate == 2 or GetState(Capture_Point.WF_Airbase_Flag) == flag.TYPE_WFRONTIER and WFairbasestate == 0 then
        WFairbasestate = 1
        SetObjectiveData(Objective_Marker.WFAirbaseWF, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.WFAirbaseAI, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.WFAirbaseN, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(34, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(35, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(36, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(37, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(64, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(65, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(66, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(67, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.WF_Airbase_Flag) == flag.TYPE_ANGLO and WFairbasestate == 1 or GetState(Capture_Point.WF_Airbase_Flag) == flag.TYPE_ANGLO and WFairbasestate == 0 then
        WFairbasestate = 2
        SetObjectiveData(Objective_Marker.WFAirbaseAI, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.WFAirbaseWF, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.WFAirbaseN, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(38, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(39, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(40, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(41, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(60, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(61, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(62, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(63, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.AI_Airbase_Flag) == flag.TYPE_WFRONTIER and AIairbasestate == 2 or GetState(Capture_Point.AI_Airbase_Flag) == flag.TYPE_WFRONTIER and AIairbasestate == 0 then
        AIairbasestate = 1
        SetObjectiveData(Objective_Marker.AIAirbaseWF, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.AIAirbaseAI, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.AIAirbaseN, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(34, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(35, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(36, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(37, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(64, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(65, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(66, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(67, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.AI_Airbase_Flag) == flag.TYPE_ANGLO and AIairbasestate == 1 or GetState(Capture_Point.AI_Airbase_Flag) == flag.TYPE_ANGLO and AIairbasestate == 0 then
        AIairbasestate = 2
        SetObjectiveData(Objective_Marker.AIAirbaseAI, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.AIAirbaseWF, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.AIAirbaseN, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(38, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(39, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(40, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(41, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(60, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(61, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(62, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(63, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.Factory_Flag) == flag.TYPE_WFRONTIER and factorystate == 2 or GetState(Capture_Point.Factory_Flag) == flag.TYPE_WFRONTIER and factorystate == 0 then
        factorystate = 1
        SetObjectiveData(Objective_Marker.Factory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Factory_Logo_WF, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Factory_Logo_AI, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(26, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(27, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(28, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(29, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(56, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(57, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(58, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(59, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.Factory_Flag) == flag.TYPE_ANGLO and factorystate == 1 or GetState(Capture_Point.Factory_Flag) == flag.TYPE_ANGLO and factorystate == 0 then
        factorystate = 2
        SetObjectiveData(Objective_Marker.Factory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Factory_Logo_WF, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Factory_Logo_AI, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        if random < 64 then
          PhoneMessage(30, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(32, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(33, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(52, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(53, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(54, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(55, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if WFPlayerFacilities2 == false then
        if WFairbasestate == 1 and AIairbasestate == 1 then
          PhoneMessage(74, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE)
          WFPlayerFacilities2 = true
        end
        EndFrame()
      end
      EndFrame()
      if AIPlayerFacilities2 == false then
        if WFairbasestate == 2 and AIairbasestate == 2 then
          PhoneMessage(75, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Pierce_Happy, constant.PLAYER_TWO)
          AIPlayerFacilities2 = true
        end
        EndFrame()
      end
      EndFrame()
    until GetMissionEnded()
  end
end
