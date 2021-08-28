function SCORE_SETTINGS(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Xylvania = FriendlyArmy
    Tundra = EnemyArmy
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Tundra = FriendlyArmy
    Xylvania = EnemyArmy
  end
end
