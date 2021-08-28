function Scoring(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WesternFrontier = FriendlyArmy
    SolarEmpire = FriendlyArmy
    Xylvania = EnemyArmy
    TechniqueObjectives = 3
    TechniqueWeighting = 15
    MinLevelTime = 540
    MaxLevelTime = 1080
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    WesternFrontier = FriendlyArmy
    SolarEmpire = FriendlyArmy
    Xylvania = EnemyArmy
    TechniqueObjectives = 3
    TechniqueWeighting = 15
    MinLevelTime = 540
    MaxLevelTime = 1080
  end
end
