function Gambit_Part_1_Staff_Bearer_Invincibility(owner)
  local x = GetObjectXPosition(owner)
  local z = GetObjectZPosition(owner)
  repeat
    EndFrame()
  until cutsceneStart == 1
  while true do
    if RemoveStaffBearerInvulnerability == 0 then
      SetHealthPercent(owner, 100)
    end
    if owner == Ground_Vehicle.SEtankbattle01 and not IsDead(Ground_Vehicle.SEtankbattle01) then
      StaffBearerXCoords = GetObjectXPosition(Troop.Sstaffbearer01)
      StaffBearerZCoords = GetObjectZPosition(Troop.Sstaffbearer01)
    end
    if StrikeForce01Done == 0 then
      if IsInArea(owner, x, z, 2) then
        EndFrame()
      else
        GoToArea(owner, x, z, 2, 0, constant.ORDER_FORCED)
        WaitFor(1)
      end
    end
    EndFrame()
  end
end
