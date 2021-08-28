function CAPTURE_POINT_STATES(owner)
  WaitFor(1)
  while true do
    repeat
      if GetState(Capture_Point.P1_Factory_Flag) == flag.TYPE_UNDERWORLD and SEfactorystate == 2 or GetState(Capture_Point.P1_Factory_Flag) == flag.TYPE_UNDERWORLD and SEfactorystate == 0 then
        SEfactorystate = 1
        SetObjectiveData(Objective_Marker.P1_Factory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.P1_Factory_Logo_N, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.P1_Factory_Logo_IL, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        if random < 64 then
          PhoneMessage(38, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(39, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(40, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(41, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(60, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(61, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(62, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(63, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.P1_Factory_Flag) == flag.TYPE_SOLAR and SEfactorystate == 1 or GetState(Capture_Point.P1_Factory_Flag) == flag.TYPE_SOLAR and SEfactorystate == 0 then
        SEfactorystate = 2
        SetObjectiveData(Objective_Marker.P1_Factory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.P1_Factory_Logo_N, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.P1_Factory_Logo_IL, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(34, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(35, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(36, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(37, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(64, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(65, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(66, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(67, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.P2_Factory_Flag) == flag.TYPE_UNDERWORLD and ILfactorystate == 2 or GetState(Capture_Point.P2_Factory_Flag) == flag.TYPE_UNDERWORLD and ILfactorystate == 0 then
        ILfactorystate = 1
        SetObjectiveData(Objective_Marker.P2_Factory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.P2_Factory_Logo_SE, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.P2_Factory_Logo_N, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(38, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(39, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(40, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(41, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(60, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(61, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(62, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(63, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.P2_Factory_Flag) == flag.TYPE_SOLAR and ILfactorystate == 1 or GetState(Capture_Point.P2_Factory_Flag) == flag.TYPE_SOLAR and ILfactorystate == 0 then
        ILfactorystate = 2
        SetObjectiveData(Objective_Marker.P2_Factory_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.P2_Factory_Logo_SE, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.P2_Factory_Logo_N, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(34, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(35, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(36, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(37, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(64, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(65, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(66, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(67, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.Airbase_Flag) == flag.TYPE_SOLAR and airbasestate == 1 or GetState(Capture_Point.Airbase_Flag) == flag.TYPE_SOLAR and airbasestate == 0 then
        airbasestate = 2
        SetObjectiveData(Objective_Marker.Airbase_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Airbase_Logo_SE, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        SetObjectiveData(Objective_Marker.Airbase_Logo_U, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        if random < 64 then
          PhoneMessage(26, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(27, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(28, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        else
          PhoneMessage(29, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(56, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(57, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(58, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        else
          PhoneMessage(59, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if GetState(Capture_Point.Airbase_Flag) == flag.TYPE_UNDERWORLD and airbasestate == 2 or GetState(Capture_Point.Airbase_Flag) == flag.TYPE_UNDERWORLD and airbasestate == 0 then
        airbasestate = 1
        SetObjectiveData(Objective_Marker.Airbase_Logo, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Airbase_Logo_SE, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
        SetObjectiveData(Objective_Marker.Airbase_Logo_U, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        if random < 64 then
          PhoneMessage(30, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        elseif random < 128 then
          PhoneMessage(31, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        elseif random < 192 then
          PhoneMessage(32, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        else
          PhoneMessage(33, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
        end
        EndFrame()
        if random < 64 then
          PhoneMessage(52, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        elseif random < 128 then
          PhoneMessage(53, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        elseif random < 192 then
          PhoneMessage(54, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        else
          PhoneMessage(55, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
        end
        EndFrame()
      end
      EndFrame()
      if SEPlayerFacilities2 == false then
        if SEfactorystate == 2 and ILfactorystate == 2 then
          PhoneMessage(74, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
          SEPlayerFacilities2 = true
        end
        EndFrame()
      end
      EndFrame()
      if ILPlayerFacilities2 == false then
        if SEfactorystate == 1 and ILfactorystate == 1 then
          PhoneMessage(75, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_TWO)
          ILPlayerFacilities2 = true
        end
        EndFrame()
      end
      EndFrame()
    until GetMissionEnded()
  end
end
