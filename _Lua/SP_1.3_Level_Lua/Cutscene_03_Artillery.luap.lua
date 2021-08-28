function Cutscene_03_Artillery(owner)
  repeat
    EndFrame()
  until midshot > 0
  WaitFor(0.5)
  cutkiller = owner
  DebugOut("Camera West active")
  SetCamera(Camera.Mid_Camera_Artillery)
  CameraSetFOV(Camera.Mid_Camera_Artillery, 65, constant.IMMEDIATE, 25, constant.NO_WAIT)
  SetViewDistanceAdjustment(550, 30)
  SetObjectiveData(Objective_Marker.SO_Artillery_1_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective_Marker.SO_Artillery_2_OM, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  cutscene = 0
  WaitFor(1)
  PhoneMessage(104, constant.ID_NONE, 3, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  WaitFor(8)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  cutscene = 1
end
