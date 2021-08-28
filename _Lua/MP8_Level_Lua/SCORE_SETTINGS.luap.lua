function SCORE_SETTINGS(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WesternFrontier = FriendlyArmy
    Xylvania = EnemyArmy
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Xylvania = FriendlyArmy
    WesternFrontier = EnemyArmy
  end
end
