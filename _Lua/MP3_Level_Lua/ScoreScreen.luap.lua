function ScoreScreen(owner)
  FriendlyArmy = 1
  EnemyArmy = 2
  LevelStartTime = 0
  LevelStopTime = 0
  LevelPauseTimer = 0
  DebugScoring = false
  MinLevelTime = 0
  MaxLevelTime = 1
  WesternFrontier = 0
  Tundra = 0
  Xylvania = 0
  SolarEmpire = 0
  Legion = 0
  AngloIsles = 0
  PowerObjectives = 0
  TechniqueObjectives = 0
  PowerObjectivesCompleted = 0
  TechniqueObjectivesCompleted = 0
  TechniqueWeighting = 0
  TechniqueHack = 0
  PauseTimerActive = 0
  RatingForGradeB = 75
  RatingForGradeA = 85
  RatingForGradeS = 95
  PerfectPowerFactor = 0
  MinPowerFactor = 0
  PerfectTechniqueFactor = 0
  MaxTechniqueFactor = 0
  netvariable.player1.Power = -1
  netvariable.player1.Technique = -1
  netvariable.player1.MissionTime = -1
  netvariable.player2.Power = -1
  netvariable.player2.Technique = -1
  netvariable.player2.MissionTime = -1
  netvariable.player1.combinedSpeed = -1
  netvariable.player1.combinedPower = -1
  netvariable.player1.combinedTechnique = -1
  netvariable.player1.combinedRating = -1
  netvariable.player1.combinedMissionTime = -1
  E3HACK = false
  function StartScoringTimer()
    LevelStartTime = GetTime()
  end
  function StopScoringTimer()
    LevelStopTime = GetTime()
  end
  function CalculatePower()
    local AliveHealth = GetEnemyHealthTotals(constant.TOTAL_ALIVE_HEALTH)
    local DeadHealth = GetEnemyHealthTotals(constant.TOTAL_DEAD_HEALTH)
    SetMissionPowerObjectives(PowerObjectives, PowerObjectivesCompleted)
    local power_hth = Measure(DeadHealth, 0, AliveHealth)
    if PowerObjectives > 0 then
      local power_obj = Measure(PowerObjectivesCompleted, 0, PowerObjectives)
      power_hth = 0.4 * power_obj + 0.6 * power_hth
    end
    return power_hth
  end
  function CalculateTechnique()
    local AliveHealth = GetFriendlyHealthTotals(constant.TOTAL_ALIVE_HEALTH)
    local DeadHealth = GetFriendlyHealthTotals(constant.TOTAL_DEAD_HEALTH)
    SetMissionTechObjectives(TechniqueObjectives, TechniqueObjectivesCompleted)
    local tech_hth = 1 - Measure(DeadHealth, 0, AliveHealth)
    if TechniqueObjectives > 0 then
      local tech_obj = Measure(TechniqueObjectivesCompleted, 0, TechniqueObjectives)
      tech_hth = 0.4 * tech_obj + 0.6 * tech_hth
    end
    return tech_hth
  end
  function SetupArmyAllegiances()
    SetArmyAllegianceForScoring(constant.ARMY_WF, WesternFrontier)
    SetArmyAllegianceForScoring(constant.ARMY_TUNDRAN, Tundra)
    SetArmyAllegianceForScoring(constant.ARMY_XYLVANIAN, Xylvania)
    SetArmyAllegianceForScoring(constant.ARMY_SOLAR, SolarEmpire)
    SetArmyAllegianceForScoring(constant.ARMY_UNDERWORLD, Legion)
    SetArmyAllegianceForScoring(constant.ARMY_ANGLO, AngloIsles)
  end
  function GetGradeFromTotalScore(TotalScore)
    local Rating = GRADE.C
    if TotalScore >= RatingForGradeB then
      Rating = GRADE.B
    end
    if TotalScore >= RatingForGradeA then
      Rating = GRADE.A
    end
    if TotalScore >= RatingForGradeS then
      Rating = GRADE.S
    end
    return Rating
  end
  function GetMissionRatings()
    local EndTime = GetTime()
    SetupArmyAllegiances()
    if LevelStopTime > 0 then
      EndTime = LevelStopTime
    end
    local MissionTime = EndTime - (LevelStartTime + LevelPauseTimer)
    local Speed = (1 - Measure(MissionTime, MinLevelTime, MaxLevelTime)) * 100
    local Power = CalculatePower() * 100
    local Technique = CalculateTechnique() * 100
    if MissionTime > MinLevelTime and MissionTime < MinLevelTime + 1 then
      Speed = 100
    end
    SetMissionMinMaxTime(MinLevelTime, MaxLevelTime)
    SetMissionTime(MissionTime)
    if 0 < TechniqueHack then
      if Technique >= TechniqueHack then
        Technique = Technique + TechniqueWeighting
      end
    elseif Technique > 50 then
      Technique = Technique + TechniqueWeighting
    end
    if Speed > 99 and Speed < 100 then
      Speed = 99
    end
    if Power > 99 and Power < 100 then
      Power = 99
    end
    if Technique > 99 and Technique < 100 then
      Technique = 99
    end
    if Speed > 100 then
      Speed = 100
    end
    if Power > 100 then
      Power = 100
    end
    if Technique > 100 then
      Technique = 100
    end
    local SPT = Speed + Power + Technique
    local TotalScore = rint(SPT / 3)
    local Rating = GetGradeFromTotalScore(TotalScore)
    if DebugScoring then
      local grade = "C"
      if Rating == GRADE.B then
        grade = "B"
      end
      if Rating == GRADE.A then
        grade = "A"
      end
      if Rating == GRADE.S then
        grade = "S"
      end
      DebugOut("\n")
      DebugOut("    The Good Guys      vs.      The Bad Guys    ")
      DebugOut("-------------------------------------------------")
      if WesternFrontier == FriendlyArmy then
        DebugOut("    Western Frontier   |")
      end
      if WesternFrontier == EnemyArmy then
        DebugOut("                                 |     Western Frontier")
      end
      if Tundra == FriendlyArmy then
        DebugOut("           Tundra           |")
      end
      if Tundra == EnemyArmy then
        DebugOut("                                 |          Tundra")
      end
      if SolarEmpire == FriendlyArmy then
        DebugOut("      Solar Empire       |")
      end
      if SolarEmpire == EnemyArmy then
        DebugOut("                                 |       Solar Empire")
      end
      if Xylvania == FriendlyArmy then
        DebugOut("          Xylvania          |")
      end
      if Xylvania == EnemyArmy then
        DebugOut("                                 |         Xylvania")
      end
      if Legion == FriendlyArmy then
        DebugOut("           Legion            |")
      end
      if Legion == EnemyArmy then
        DebugOut("                                 |          Legion")
      end
      if AngloIsles == FriendlyArmy then
        DebugOut("           Anglo Isles     |")
      end
      if AngloIsles == EnemyArmy then
        DebugOut("                                 |          Anglo Isles")
      end
      DebugOut([[


]], [[

 The mission took]], MissionTime, "seconds to complete.", [[

 The fastest rated time is]], MinLevelTime, [[

 The slowest rated time is]], MaxLevelTime, "\n", [[

 There were]], PowerObjectives, "Power objectives,", PowerObjectivesCompleted, "of these were completed.", [[

 There were]], TechniqueObjectives, "Technique objectives,", TechniqueObjectivesCompleted, "of these were completed.\n", [[

 Technique was weighted by]], TechniqueWeighting, "\n", [[

 Speed     =]], Speed, [[

 Power     =]], Power, [[

 Technique =]], Technique, [[

 SPT       =]], SPT, "out of 300", [[

 Grade     =]], grade, [[


]])
    end
    return Speed, Power, Technique, Rating
  end
  function GetCoopMissionRatingsRaw()
    local EndTime = GetTime()
    SetupArmyAllegiances()
    if LevelStopTime > 0 then
      EndTime = LevelStopTime
    end
    local MissionTime = EndTime - (LevelStartTime + LevelPauseTimer)
    local Power = CalculatePower() * 100
    local Technique = CalculateTechnique() * 100
    return Power, Technique, MissionTime
  end
  function GetCoopMissionRatingsCombined()
    local MissionTime = (netvariable.player1.MissionTime + netvariable.player2.MissionTime) / 2
    local Speed = (1 - Measure(MissionTime, MinLevelTime, MaxLevelTime)) * 100
    local Power = (netvariable.player1.Power + netvariable.player2.Power) / 2
    local Technique = (netvariable.player1.Technique + netvariable.player2.Technique) / 2
    if MissionTime > MinLevelTime and MissionTime < MinLevelTime + 1 then
      Speed = 100
    end
    if TechniqueHack > 0 then
      if Technique >= TechniqueHack then
        Technique = Technique + TechniqueWeighting
      end
    elseif Technique > 50 then
      Technique = Technique + TechniqueWeighting
    end
    if Speed > 99 and Speed < 100 then
      Speed = 99
    end
    if Power > 99 and Power < 100 then
      Power = 99
    end
    if Technique > 99 and Technique < 100 then
      Technique = 99
    end
    if Speed > 100 then
      Speed = 100
    end
    if Power > 100 then
      Power = 100
    end
    if Technique > 100 then
      Technique = 100
    end
    local SPT = Speed + Power + Technique
    local TotalScore = rint(SPT / 3)
    local Rating = GetGradeFromTotalScore(TotalScore)
    if DebugScoring then
      local grade = "C"
      if Rating == GRADE.B then
        grade = "B"
      end
      if Rating == GRADE.A then
        grade = "A"
      end
      if Rating == GRADE.S then
        grade = "S"
      end
      DebugOut("\n")
      DebugOut("    The Good Guys      vs.      The Bad Guys    ")
      DebugOut("-------------------------------------------------")
      if WesternFrontier == FriendlyArmy then
        DebugOut("    Western Frontier   |")
      end
      if WesternFrontier == EnemyArmy then
        DebugOut("                                 |     Western Frontier")
      end
      if Tundra == FriendlyArmy then
        DebugOut("           Tundra           |")
      end
      if Tundra == EnemyArmy then
        DebugOut("                                 |          Tundra")
      end
      if SolarEmpire == FriendlyArmy then
        DebugOut("      Solar Empire       |")
      end
      if SolarEmpire == EnemyArmy then
        DebugOut("                                 |       Solar Empire")
      end
      if Xylvania == FriendlyArmy then
        DebugOut("          Xylvania          |")
      end
      if Xylvania == EnemyArmy then
        DebugOut("                                 |         Xylvania")
      end
      if Legion == FriendlyArmy then
        DebugOut("           Legion            |")
      end
      if Legion == EnemyArmy then
        DebugOut("                                 |          Legion")
      end
      if AngloIsles == FriendlyArmy then
        DebugOut("           Anglo Isles     |")
      end
      if AngloIsles == EnemyArmy then
        DebugOut("                                 |          Anglo Isles")
      end
      DebugOut([[


]], [[

 The mission took]], MissionTime, "seconds to complete.", [[

 The fastest rated time is]], MinLevelTime, [[

 The slowest rated time is]], MaxLevelTime, "\n", [[

 There were]], PowerObjectives, "Power objectives,", PowerObjectivesCompleted, "of these were completed.", [[

 There were]], TechniqueObjectives, "Technique objectives,", TechniqueObjectivesCompleted, "of these were completed.\n", [[

 Technique was weighted by]], TechniqueWeighting, "\n", [[

 Speed     =]], Speed, [[

 Power     =]], Power, [[

 Technique =]], Technique, [[

 SPT       =]], SPT, "out of 300", [[

 Grade     =]], grade, [[


]])
    end
    return Speed, Power, Technique, Rating, MissionTime
  end
  function WinMission()
    local Speed, Power, Technique, Rating
    Speed, Power, Technique, Rating = GetMissionRatings()
    SetCurrentMissionCompleted()
    SetMissionComplete(constant.MISSIONOVER_PLAYER1_WINS, Speed, Power, Technique, Rating)
  end
  function WinMissionMP()
    local Speed, Power, Technique, Rating
    Speed, Power, Technique, Rating = GetMissionRatings()
    SetMissionRatings(Speed, Power, Technique, Rating)
  end
  function WinMissionCOOP()
    local Power, Technique, MissionTime
    Power, Technique, MissionTime = GetCoopMissionRatingsRaw()
    DebugOut("Setting up network variables...")
    if IsNetworkPlayer(constant.PLAYER_ONE) then
      netvariable.player1.Power = Power
      netvariable.player1.Technique = Technique
      netvariable.player1.MissionTime = MissionTime
      DebugOut("Player 1 variables assigned")
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) then
      netvariable.player2.Power = Power
      netvariable.player2.Technique = Technique
      netvariable.player2.MissionTime = MissionTime
      DebugOut("Player 2 variables assigned")
    end
    if IsNetworkHost() then
      while netvariable.player2.Power == -1 do
        EndFrame()
      end
    end
    if IsNetworkHost() then
      netvariable.player1.combinedSpeed, netvariable.player1.combinedPower, netvariable.player1.combinedTechnique, netvariable.player1.combinedRating, netvariable.player1.combinedMissionTime = GetCoopMissionRatingsCombined()
      while netvariable.player1.combinedRating == -1 do
        EndFrame()
      end
    end
    DebugOut("Average Speed rating is", netvariable.player1.combinedSpeed)
    DebugOut("Average Power rating is", netvariable.player1.combinedPower)
    DebugOut("Average Technique rating is", netvariable.player1.combinedTechnique)
    DebugOut("Average Rating rating is", netvariable.player1.combinedRating)
    SetMissionRatings(netvariable.player1.combinedSpeed, netvariable.player1.combinedPower, netvariable.player1.combinedTechnique, netvariable.player1.combinedRating)
    SetMissionMinMaxTime(MinLevelTime, MaxLevelTime)
    SetMissionTime(netvariable.player1.combinedMissionTime)
  end
  function LoseMission(FailString)
    SetMissionComplete(constant.MISSIONOVER_LOSE, FailString)
  end
end
