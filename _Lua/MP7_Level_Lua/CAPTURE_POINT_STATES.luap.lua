function CAPTURE_POINT_STATES(owner)
  WaitFor(1)
  while true do
    repeat
      if GetState(Capture_Point.XfactoryCP) == flag.TYPE_XYLVANIAN and Xfactorystate == 2 or GetState(Capture_Point.XfactoryCP) == flag.TYPE_XYLVANIAN and Xfactorystate == 0 then
        Xfactorystate = 1
        SetObjectiveData(Objective_Marker.XFactory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.XFactory_Logo_T, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.XFactory_Logo_N, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(41, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(42, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(43, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(44, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(30, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(32, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(33, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.XfactoryCP) == flag.TYPE_TUNDRAN and Xfactorystate == 1 or GetState(Capture_Point.XfactoryCP) == flag.TYPE_TUNDRAN and Xfactorystate == 0 then
        Xfactorystate = 2
        SetObjectiveData(Objective_Marker.XFactory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.XFactory_Logo_T, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.XFactory_Logo_N, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(45, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(46, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(47, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(48, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(26, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(27, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(28, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(29, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.TfactoryCP) == flag.TYPE_XYLVANIAN and Tfactorystate == 2 or GetState(Capture_Point.TfactoryCP) == flag.TYPE_XYLVANIAN and Tfactorystate == 0 then
        Tfactorystate = 1
        SetObjectiveData(Objective_Marker.TFactory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TFactory_Logo_X, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.TFactory_Logo_N, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(41, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(42, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(43, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(44, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(30, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(32, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(33, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.TfactoryCP) == flag.TYPE_TUNDRAN and Tfactorystate == 1 or GetState(Capture_Point.TfactoryCP) == flag.TYPE_TUNDRAN and Tfactorystate == 0 then
        Tfactorystate = 2
        SetObjectiveData(Objective_Marker.TFactory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.TFactory_Logo_X, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.TFactory_Logo_N, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(45, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(46, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(47, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(48, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(26, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(27, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(28, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(29, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if XPlayerFacilities2 == false then
        if Xfactorystate == 1 and Tfactorystate == 1 then
          PhoneMessage(57, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Ubel_Happy, constant.PLAYER_ONE)
          XPlayerFacilities2 = true
        end
        EndFrame()
      end
      EndFrame()
      if TPlayerFacilities2 == false then
        if Xfactorystate == 2 and Tfactorystate == 2 then
          PhoneMessage(56, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Ghost_Gorgi_Happy, constant.PLAYER_TWO)
          TPlayerFacilities2 = true
        end
        EndFrame()
      end
      EndFrame()
    until GetMissionEnded()
  end
end
