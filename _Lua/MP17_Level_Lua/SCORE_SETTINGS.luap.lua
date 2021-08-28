function SCORE_SETTINGS(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SolarEmpire = FriendlyArmy
    Legion = EnemyArmy
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Legion = FriendlyArmy
    SolarEmpire = EnemyArmy
  end
end
