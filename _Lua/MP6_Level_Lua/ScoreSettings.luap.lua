function ScoreSettings(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Xylvania = FriendlyArmy
    Tundra = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 480
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Tundra = FriendlyArmy
    Xylvania = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 480
  end
end
