function Attack_4_Anti_Artillery_Strike(owner)
  WaitFor(10)
  while IsPassengerInUnit(owner, Air_Vehicle.XAirTrans1) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans2) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans3) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans4) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans5) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans6) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans7) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans8) or IsPassengerInUnit(owner, Air_Vehicle.XAirTrans9) do
    EndFrame()
  end
  if IsInRectangle(owner, -20, 400, 95, 500) then
    if IsInArea(Ground_Vehicle.WF_Artillery1, -35, 330, 45) then
      FollowUnit(owner, Ground_Vehicle.WF_Artillery1, 5, 20)
      repeat
        EndFrame()
      until GetHealthPercent(Ground_Vehicle.WF_Artillery1) <= 0
      GoToArea(owner, 175, 130, 10)
      repeat
        EndFrame()
      until IsInArea(owner, 175, 130, 12)
      GoToArea(owner, 100, 130, 20)
      return
    end
    if IsInArea(Ground_Vehicle.WF_Artillery2, -35, 330, 45) then
      FollowUnit(owner, Ground_Vehicle.WF_Artillery2, 5, 20)
      repeat
        EndFrame()
      until 0 >= GetHealthPercent(Ground_Vehicle.WF_Artillery2)
      GoToArea(owner, 20, 130, 10)
      repeat
        EndFrame()
      until IsInArea(owner, 20, 130, 12)
      GoToArea(owner, 100, 130, 20)
      return
    end
  end
  if IsInRectangle(owner, 96, 400, 200, 500) then
    if IsInArea(Ground_Vehicle.WF_Artillery1, 235, 260, 45) then
      FollowUnit(owner, Ground_Vehicle.WF_Artillery1, 5, 20)
      repeat
        EndFrame()
      until GetHealthPercent(Ground_Vehicle.WF_Artillery1) <= 0
      GoToArea(owner, 175, 130, 10)
      repeat
        EndFrame()
      until IsInArea(owner, 175, 130, 12)
      GoToArea(owner, 100, 130, 20)
      return
    end
    if IsInArea(Ground_Vehicle.WF_Artillery2, 235, 260, 45) then
      FollowUnit(owner, Ground_Vehicle.WF_Artillery2, 5, 20)
      repeat
        EndFrame()
      until 0 >= GetHealthPercent(Ground_Vehicle.WF_Artillery2)
      GoToArea(owner, 20, 130, 10)
      repeat
        EndFrame()
      until IsInArea(owner, 20, 130, 12)
      GoToArea(owner, 100, 130, 20)
      return
    end
  end
  GoToArea(owner, 100, 200, 10)
  repeat
    EndFrame()
  until IsInArea(owner, 100, 200, 12)
  GoToArea(owner, 100, 130, 20)
end
