function CAPTURE_POINT_STATES(owner)
  WaitFor(1)
  while true do
    repeat
      if GetState(Capture_Point.WFAirbaseCP) == flag.TYPE_WFRONTIER and WFairbasestate == 2 or GetState(Capture_Point.WFAirbaseCP) == flag.TYPE_WFRONTIER and WFairbasestate == 0 then
        WFairbasestate = 1
        SetObjectiveData(Objective_Marker.WFAirbaseLogo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.WFAirbaseLogoT, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.WFAirbaseLogoN, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(26, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(27, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(28, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(29, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(45, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(46, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(47, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(48, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.WFAirbaseCP) == flag.TYPE_TUNDRAN and WFairbasestate == 1 or GetState(Capture_Point.WFAirbaseCP) == flag.TYPE_TUNDRAN and WFairbasestate == 0 then
        WFairbasestate = 2
        SetObjectiveData(Objective_Marker.WFAirbaseLogo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.WFAirbaseLogoT, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.WFAirbaseLogoN, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(30, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(32, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(33, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(41, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(42, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(43, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(44, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.TAirbaseCP) == flag.TYPE_WFRONTIER and Tairbasestate == 2 or GetState(Capture_Point.TAirbaseCP) == flag.TYPE_WFRONTIER and Tairbasestate == 0 then
        Tairbasestate = 1
        SetObjectiveData(Objective_Marker.TAirbaseLogo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TAirbaseLogoN, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TAirbaseLogoWF, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        if random < 64 then
          PhoneMessage(26, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(27, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(28, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(29, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(45, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(46, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(47, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(48, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.TAirbaseCP) == flag.TYPE_TUNDRAN and Tairbasestate == 1 or GetState(Capture_Point.TAirbaseCP) == flag.TYPE_TUNDRAN and Tairbasestate == 0 then
        Tairbasestate = 2
        SetObjectiveData(Objective_Marker.TAirbaseLogo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.TAirbaseLogoWF, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TAirbaseLogoN, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(30, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(32, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(33, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(41, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(42, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(43, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(44, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if WFPlayerFacilities2 == false then
        if WFairbasestate == 1 and Tairbasestate == 1 then
          PhoneMessage(56, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
          WFPlayerFacilities2 = true
        end
        EndFrame()
      end
      EndFrame()
      if TPlayerFacilities2 == false then
        if WFairbasestate == 2 and Tairbasestate == 2 then
          PhoneMessage(57, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_TWO)
          TPlayerFacilities2 = true
        end
        EndFrame()
      end
      EndFrame()
    until GetMissionEnded()
  end
end
