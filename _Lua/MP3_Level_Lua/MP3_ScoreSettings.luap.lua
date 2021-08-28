function MP3_ScoreSettings(owner)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    WesternFrontier = FriendlyArmy
    Tundra = EnemyArmy
    MinLevelTime = 300
    MaxLevelTime = 480
    PerfectPowerFactor = 10
    MinPowerFactor = 2
    PerfectTechniqueFactor = 50
    MaxTechniqueFactor = 200
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    Tundra = FriendlyArmy
    WesternFrontier = EnemyArmy
    MinLevelTime = 300
    MaxLevelTime = 480
    PerfectPowerFactor = 10
    MinPowerFactor = 2
    PerfectTechniqueFactor = 50
    MaxTechniqueFactor = 200
  end
end
