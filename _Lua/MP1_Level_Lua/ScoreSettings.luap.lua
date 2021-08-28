function ScoreSettings(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    Legion = FriendlyArmy
    SolarEmpire = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 600
    TechniqueObjectives = 1
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    SolarEmpire = FriendlyArmy
    Legion = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 600
  end
end
