function owner_Anglo_Air_Transport_Landed(owner)
  local StopAAVehicleAttacking = 0
  local KillOwner = 0
  repeat
    EndFrame()
  until MidCutsceneEnded == true
  while true do
    if IsInArea(owner, Map_Zone.maplimit) == false and GetPrimaryActionState(Ground_Vehicle.SEaatank1) == constant.ACTION_STATE_ATTACK and StopAAVehicleAttacking == 0 then
      StopAAVehicleAttacking = 1
      FollowUnit(Ground_Vehicle.SEaatank1, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
    end
    if IsInArea(owner, Map_Zone.DespawnAngloAirTransport) and KillOwner == 0 then
      KillOwner = 1
      Kill(owner, false)
    end
    EndFrame()
  end
end
