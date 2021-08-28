function EndCutsceneFighterOrders(owner)
  repeat
    WaitFor(0.1)
    GoToArea(owner, GetObjectXPosition(Capture_Point.SE_Airbase_CP), GetObjectZPosition(Capture_Point.SE_Airbase_CP), 1, constant.ORDER_FORCED)
    EndFrame()
  until Cutscene05Finished == 1
end
