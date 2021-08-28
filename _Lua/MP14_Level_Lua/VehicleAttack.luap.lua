function VehicleAttack(owner)
  repeat
    EndFrame()
  until cutscenefinished == 1
  repeat
    EndFrame()
  until NumPassengersInUnit(owner) > 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    AttackTarget(owner, GetPlayerUnit(constant.PLAYER_ONE))
  end
end
