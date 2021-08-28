function Scoring(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    SolarEmpire = FriendlyArmy
    AngloIsles = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 600
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    AngloIsles = FriendlyArmy
    SolarEmpire = EnemyArmy
    MinLevelTime = 0
    MaxLevelTime = 600
  end
end
