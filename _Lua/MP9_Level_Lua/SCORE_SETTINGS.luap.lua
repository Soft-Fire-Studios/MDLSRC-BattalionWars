function SCORE_SETTINGS(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WesternFrontier = FriendlyArmy
    Tundra = EnemyArmy
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Tundra = FriendlyArmy
    WesternFrontier = EnemyArmy
  end
end
