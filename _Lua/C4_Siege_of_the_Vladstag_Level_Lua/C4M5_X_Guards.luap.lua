function C4M5_X_Guards(owner)
  local Xcoord = 0
  local Zcoord = 0
  Xcoord = GetObjectXPosition(owner)
  Zcoord = GetObjectZPosition(owner)
  while true do
    if IsInArea(owner, Xcoord, Zcoord, 20) then
      WaitFor(10)
    elseif NumItemsInArea(GetObjectXPosition(owner), GetObjectZPosition(owner), 200, flag.TYPE_WFRONTIER) == 0 then
      DebugOut(owner, " is returning to , X = ", Xcoord, "    Z = ", Zcoord)
      GoToArea(owner, Xcoord, Zcoord, 20, 0, constant.ORDER_NORMAL)
      WaitFor(10)
    end
    EndFrame()
  end
  return
end
