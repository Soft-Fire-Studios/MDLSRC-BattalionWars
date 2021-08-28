function Their_Finest_Hour_SE_Bridge_Defenders(owner)
  while true do
    if GetPrimaryActionState(owner) ~= constant.ACTION_STATE_ATTACK then
      GoToArea(owner, GetObjectXPosition(Waypoint.SE_Bridge), GetObjectZPosition(Waypoint.SE_Bridge), 10, 0, constant.ORDER_NORMAL)
    end
    WaitFor(2)
    EndFrame()
  end
end
