function Cutscene_Die(owner)
  WaitFor(1)
  while cutscene == 0 do
    if GetCurrentMissionAttempted() == true and (ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED)) then
      Kill(cutscenes)
      cutscene = 1
      DebugOut("Killed cutscene")
      ClearMessageQueue()
    end
    EndFrame()
  end
  DebugOut("Cam Change")
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  SetCamera(Camera.Player)
  StoreSummaryMessage(0, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(1, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(2, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(3, 0, SpriteID.CO_WF_Herman_Happy)
  StoreSummaryMessage(4, 0, SpriteID.CO_WF_Herman_Happy)
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  LevelState = 2
  Spawn(Ground_Vehicle.XLTank0)
  Despawn(Air_Vehicle.XAirTransOpen)
  Despawn(Air_Vehicle.XAirTrans0)
  Despawn(Air_Vehicle.XAirTrans1)
  GoToArea(Air_Vehicle.XAirTransOpen, 230.075, 272.443, 20, nil, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.XAirTrans0, 173.377, 812.23, 20, nil, constant.ORDER_FORCED)
  GoToArea(Air_Vehicle.XAirTrans1, 59.882, 854.378, 20, nil, constant.ORDER_FORCED)
  WaitFor(1)
  Spawn(Air_Vehicle.XAirTransOpen)
  Spawn(Air_Vehicle.XAirTrans0)
  Spawn(Air_Vehicle.XAirTrans1)
  Teleport(Troop.WF_Bazooka1, 163, 132, 90, 5)
  GoToArea(Troop.WF_Bazooka1, 163, 132, 5)
  StartScoringTimer()
end
