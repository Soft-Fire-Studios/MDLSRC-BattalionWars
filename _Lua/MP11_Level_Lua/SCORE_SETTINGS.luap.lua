function SCORE_SETTINGS(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WesternFrontier = FriendlyArmy
    AngloIsles = EnemyArmy
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    AngloIsles = FriendlyArmy
    WesternFrontier = EnemyArmy
  end
end
