function PrimaryObjective01ProtectTheArtillery(owner)
  local artillery01 = 0
  local artillery02 = 0
  local artillery03 = 0
  local artilleryobjective01 = 0
  local artilleryobjective02 = 0
  local artilleryobjective03 = 0
  local artillery = 0
  while missionend == 0 do
    if artillery01 == 0 and IsDead(Ground_Vehicle.WFArtillery01) then
      SetObjectiveData(Objective_Marker.ArtilleryMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      artillery = artillery + 1
      artillery01 = 1
      DebugOut("*PrimaryObjective01ProtectTheArtillery* - 1. Artillery01 has been destroyed")
    end
    EndFrame()
    if artillery02 == 0 and IsDead(Ground_Vehicle.WFArtillery02) then
      SetObjectiveData(Objective_Marker.ArtilleryMarker02, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      artillery = artillery + 1
      artillery02 = 1
      DebugOut("*PrimaryObjective01ProtectTheArtillery* - 2. Artillery02 has been destroyed")
    end
    EndFrame()
    if artillery03 == 0 and IsDead(Ground_Vehicle.WFArtillery03) then
      SetObjectiveData(Objective_Marker.ArtilleryMarker03, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      artillery = artillery + 1
      artillery03 = 1
      DebugOut("*PrimaryObjective01ProtectTheArtillery* - 3. Artillery03 has been destroyed")
    end
    EndFrame()
    if artillery == 1 and artilleryobjective01 == 0 then
      SetObjectiveData(Objective.ProtectTheArtillery03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.ProtectTheArtillery02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      if Objective01 == 0 then
        PhoneMessage(16, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      else
        SetObjectiveData(Objective.ProtectTheArtillery02, constant.OBJECTIVE_DATA_STATE, 1)
      end
      artilleryobjective01 = 1
      DebugOut("*PrimaryObjective01ProtectTheArtillery* - 4. 1 Artillery has been destroyed. Objective Complete")
    end
    EndFrame()
    if artillery == 2 and artilleryobjective02 == 0 then
      SetObjectiveData(Objective.ProtectTheArtillery03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.ProtectTheArtillery02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.ProtectTheArtillery01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      if Objective01 == 0 then
        PhoneMessage(17, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      else
        SetObjectiveData(Objective.ProtectTheArtillery01, constant.OBJECTIVE_DATA_STATE, 1)
      end
      artilleryobjective02 = 1
      DebugOut("*PrimaryObjective01ProtectTheArtillery* - 5. 2 Artillery have been destroyed. Objective Complete")
    end
    EndFrame()
    if artillery == 3 and artilleryobjective03 == 0 then
      SetObjectiveData(Objective.ProtectTheArtillery03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.ProtectTheArtillery02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.ProtectTheArtillery01, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.ProtectTheArtillery00, constant.OBJECTIVE_DATA_VISIBLE, 1)
      if Objective01 == 0 then
        WaitFor(2)
        if Objective01 == 0 then
          Kill(phonemessages)
          missionend = 1
          FreezePlayer(constant.PLAYER_ONE)
          DeclareVictory(constant.ARMY_TUNDRAN)
          ClearMessageQueue()
          PhoneMessage(18, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
          repeat
            EndFrame()
          until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          LoseMission(194)
        else
          SetObjectiveData(Objective.ProtectTheArtillery00, constant.OBJECTIVE_DATA_STATE, 1)
          break
        end
        DebugOut("*PrimaryObjective01ProtectTheArtillery* - 6. 3 Artillery have been destroyed. Objective Complete")
      end
    end
    EndFrame()
  end
end
