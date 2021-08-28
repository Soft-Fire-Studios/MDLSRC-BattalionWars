function Gambit_Part_1_Cutscene_PlayerLoses(owner)
  cutscenePlayerLoses = owner
  DebugOut("Cutscene Player Loses ID", cutscenePlayerLoses)
  while true do
    if cutscenePlayerLosesBegin == 1 then
      cutscenePlayerLosesBegin = 2
      StartOutro()
      FreezePlayer(constant.PLAYER_ONE)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_OUT, constant.WAIT, 1)
      SetCamera(Camera.CutscenePlayerLoses0001, constant.PLAYER_ONE)
      CameraSetWaypoint(Camera.CutscenePlayerLoses0001, Waypoint.CutscenePlayerLoses0001)
      CameraSetTarget(Camera.CutscenePlayerLoses0001, Waypoint.CutscenePlayerLoses0001Target)
      CameraSetFOV(Camera.CutscenePlayerLoses0001, 75, constant.IMMEDIATE, 10, constant.NO_WAIT)
      ClearMessageQueue(constant.PLAYER_ONE)
      CameraFade(constant.FADE_IN, constant.WAIT, 1)
      PhoneMessage(85, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_ONE)
      CameraSetFOV(Camera.CutscenePlayerLoses0001, 50, constant.SMOOTH, 2, constant.NO_WAIT)
      repeat
        EndFrame()
      until GetNumItemsInMessageQueue(constant.PLAYER_ONE) <= 0
      ClearMessageQueue(constant.PLAYER_ONE)
      EndOutro()
      cutsceneEndIsOver = 1
    end
    EndFrame()
  end
end
