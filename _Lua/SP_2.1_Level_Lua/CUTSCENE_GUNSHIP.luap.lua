function CUTSCENE_GUNSHIP(owner)
  local Gunship1Ready = false
  local Gunship2Ready = false
  repeat
    if Gunship1Ready == false and IsPassengerInUnit(Troop.Tgunship03pilot) == true then
      GoToArea(Air_Vehicle.Tgunship03, 197, 587, 5, constant.ORDER_FORCED)
      Gunship1Ready = true
    end
    EndFrame()
    if Gunship2Ready == false and IsPassengerInUnit(Troop.Tgunship04pilot) == true then
      GoToArea(Air_Vehicle.Tgunship04, 219, 586, 5, constant.ORDER_FORCED)
      Gunship2Ready = true
    end
    EndFrame()
  until Gunship1Ready == true and Gunship2Ready == true
  DebugOut("BOTH GUNSHPS IN THE SKY")
end
