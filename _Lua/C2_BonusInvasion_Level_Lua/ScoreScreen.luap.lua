function ScoreScreen(owner)
  FriendlyArmy = 1
  EnemyArmy = 2
  LevelStartTime = 0
  LevelStopTime = 0
  DebugScoring = false
  MinLevelTime = 0
  MaxLevelTime = 1
  WesternFrontier = 0
  Tundra = 0
  Xylvania = 0
  SolarEmpire = 0
  Legion = 0
  PowerObjectives = 0
  TechniqueObjectives = 0
  PowerObjectivesCompleted = 0
  TechniqueObjectivesCompleted = 0
  TechniqueWeighting = 0
  TechniqueHack = 0
  RatingForGradeB = 75
  RatingForGradeA = 85
  RatingForGradeS = 95
  E3HACK = false
  function StartScoringTimer()
    LevelStartTime = GetTime()
    EndIntro()
  end
  function StopScoringTimer()
    LevelStopTime = GetTime()
  end
  function CalculatePower()
    local AliveHealth = 0
    local DeadHealth = 0
    if E3HACK then
      AddToGroup(Unit_Group.E3HACK, Air_Vehicle.TspyBlimp0001)
      AddToGroup(Unit_Group.E3HACK, Air_Vehicle.TspyBlimp0002)
      AddToGroup(Unit_Group.E3HACK, Air_Vehicle.TspyBlimp0007)
      AddToGroup(Unit_Group.E3HACK, Building.TargetDummy0001)
      AddToGroup(Unit_Group.E3HACK, Building.TargetDummy0002)
      AddToGroup(Unit_Group.E3HACK, Building.TargetDummy0003)
      AddToGroup(Unit_Group.E3HACK, Building.TargetDummy0004)
      AddToGroup(Unit_Group.E3HACK, Building.TargetDummy0005)
      AddToGroup(Unit_Group.E3HACK, Building.TlisteningPost0001)
      AddToGroup(Unit_Group.E3HACK, Building.TlisteningPost0002)
      AddToGroup(Unit_Group.E3HACK, Building.TlisteningPost0003)
      AddToGroup(Unit_Group.E3HACK, Building.TlisteningPost0010)
      AddToGroup(Unit_Group.E3HACK, Building.TlisteningPost0011)
      AddToGroup(Unit_Group.E3HACK, Troop.TammoDumpGuard0001)
      AddToGroup(Unit_Group.E3HACK, Troop.TammoDumpGuard0002)
      AliveHealth = GetNumMatchingInGroup(Unit_Group.E3HACK)
      for i = 1, GetNumMatchingInGroup(Unit_Group.E3HACK) do
        if IsDead(GetGroupMember(Unit_Group.E3HACK, i)) then
          DeadHealth = DeadHealth + 1
        end
      end
    else
      if WesternFrontier == EnemyArmy then
        AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_WFRONTIER, constant.TOTAL_ALIVE_HEALTH)
        DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
      end
      if Tundra == EnemyArmy then
        AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_TUNDRAN, constant.TOTAL_ALIVE_HEALTH)
        DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_TUNDRAN, constant.TOTAL_DEAD_HEALTH)
      end
      if Xylvania == EnemyArmy then
        AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_ALIVE_HEALTH)
        DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_DEAD_HEALTH)
      end
      if SolarEmpire == EnemyArmy then
        AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_SOLAR, constant.TOTAL_ALIVE_HEALTH)
        DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_SOLAR, constant.TOTAL_DEAD_HEALTH)
      end
      if Legion == EnemyArmy then
        AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_UNDERWORLD, constant.TOTAL_ALIVE_HEALTH)
        DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_UNDERWORLD, constant.TOTAL_DEAD_HEALTH)
      end
    end
    if 0 < PowerObjectives then
      local power_hth = Measure(DeadHealth, 0, AliveHealth)
      local power_obj = Measure(PowerObjectivesCompleted, 0, PowerObjectives)
      return Measure(power_hth + power_obj, 0, 2)
    end
    return Measure(DeadHealth, 0, AliveHealth)
  end
  function CalculateTechnique()
    local AliveHealth = 0
    local DeadHealth = 0
    if WesternFrontier == FriendlyArmy then
      AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_WFRONTIER, constant.TOTAL_ALIVE_HEALTH)
      DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_WFRONTIER, constant.TOTAL_DEAD_HEALTH)
    end
    if Tundra == FriendlyArmy then
      AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_TUNDRAN, constant.TOTAL_ALIVE_HEALTH)
      DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_TUNDRAN, constant.TOTAL_DEAD_HEALTH)
    end
    if Xylvania == FriendlyArmy then
      AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_ALIVE_HEALTH)
      DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_XYLVANIAN, constant.TOTAL_DEAD_HEALTH)
    end
    if SolarEmpire == FriendlyArmy then
      AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_SOLAR, constant.TOTAL_ALIVE_HEALTH)
      DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_SOLAR, constant.TOTAL_DEAD_HEALTH)
    end
    if Legion == FriendlyArmy then
      AliveHealth = AliveHealth + GetHealthTotals(flag.TYPE_UNDERWORLD, constant.TOTAL_ALIVE_HEALTH)
      DeadHealth = DeadHealth + GetHealthTotals(flag.TYPE_UNDERWORLD, constant.TOTAL_DEAD_HEALTH)
    end
    if 0 < TechniqueObjectives then
      local tech_hth = 1 - Measure(DeadHealth, 0, AliveHealth)
      local tech_obj = Measure(TechniqueObjectivesCompleted, 0, TechniqueObjectives)
      return Measure(tech_hth + 0.5 + tech_obj, 0, 2.5)
    end
    return 1 - Measure(DeadHealth, 0, AliveHealth)
  end
  function WinMission()
    local EndTime = GetTime()
    if LevelStopTime > 0 then
      EndTime = LevelStopTime
    end
    local MissionTime = EndTime - LevelStartTime
    local Speed = (1 - Measure(MissionTime, MinLevelTime, MaxLevelTime)) * 100
    local Power = CalculatePower() * 100
    local Technique = CalculateTechnique() * 100
    if 0 < TechniqueHack then
      if Technique >= TechniqueHack then
        Technique = Technique + TechniqueWeighting
      end
    elseif Technique > 50 then
      Technique = Technique + TechniqueWeighting
    end
    if Speed > 99 then
      Speed = 100
    end
    if Power > 99 then
      Power = 100
    end
    if Technique > 99 then
      Technique = 100
    end
    local Rating = GRADE.C
    local SPT = Speed + Power + Technique
    local TotalScore = rint(SPT / 3)
    if TotalScore >= RatingForGradeB then
      Rating = GRADE.B
    end
    if TotalScore >= RatingForGradeA then
      Rating = GRADE.A
    end
    if TotalScore >= RatingForGradeS then
      Rating = GRADE.S
    end
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
      DebugOut("    The Good Guys      vs.      The Bad Guys")
      DebugOut("-------------------------------------------------")
      if WesternFrontier == FriendlyArmy then
        DebugOut("   Western Frontier     |")
      end
      if WesternFrontier == EnemyArmy then
        DebugOut("                        |     Western Frontier")
      end
      if Tundra == FriendlyArmy then
        DebugOut("        Tundra          |")
      end
      if Tundra == EnemyArmy then
        DebugOut("                        |          Tundra")
      end
      if SolarEmpire == FriendlyArmy then
        DebugOut("     Solar Empire       |")
      end
      if SolarEmpire == EnemyArmy then
        DebugOut("                        |       Solar Empire")
      end
      if Xylvania == FriendlyArmy then
        DebugOut("       Xylvania         |")
      end
      if Xylvania == EnemyArmy then
        DebugOut("                        |         Xylvania")
      end
      if Legion == FriendlyArmy then
        DebugOut("        Legion          |")
      end
      if Legion == EnemyArmy then
        DebugOut("                        |          Legion")
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
    SetMissionComplete(constant.MISSIONOVER_PLAYER1_WINS, Speed, Power, Technique, Rating)
  end
  function LoseMission(FailString)
    SetMissionComplete(constant.MISSIONOVER_LOSE, FailString)
  end
end
