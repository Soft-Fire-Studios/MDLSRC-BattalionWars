function Gambit_Part_1_Global_Variables(owner)
  OutOfBoundsMessageInfo(490, 3, 5, SpriteID.CO_SE_Leiqo_Helmet_Sad)
  cutsceneStart = 0
  cutscenePlayerLoses = 0
  cutscenePlayerLosesBegin = 0
  cutscenePlayerWins = 0
  cutscenePlayerWinsBegin = 0
  cutsceneEndIsOver = 0
  cutsceneBombed = 0
  cutsceneBombedBegin = 0
  cutsceneStaffBearer = 0
  cutsceneStaffBearerBegin = 0
  cutsceneMidGameTank = 0
  cutsceneMidGameTankBegin = 0
  cutsceneMidGameInfantry = 0
  cutsceneMidGameInfantryBegin = 0
  cutsceneMidGameGunship = 0
  cutsceneMidGameGunshipBegin = 0
  cutsceneMidGameBattlestation = 0
  cutsceneMidGameBattlestationBegin = 0
  cutsceneMidGameTower = 0
  cutsceneMidGameTowerBegin = 0
  DialogJumpDone = 0
  DialogLookDone = 0
  LookDone = 0
  DialogShootDone = 0
  DialogFenceDone = 0
  DialogSquadDone = 0
  DialogStrikeTeamTimer = 0
  StrikeForce01Done = 0
  ILheavytank01Done = 0
  ILbazooka01Done = 0
  ILgunship01Done = 0
  ILgates01Done = 0
  JumpOverLedgeDone = 0
  CommandingTimer = 0
  ShootingTimer = 0
  TowerTimer = 0
  TroopsAttackPulley = 0
  DialogJumpAcidDone = 0
  DialogCallDone = 0
  DialogSendDone = 0
  DialogCallAgainDone = 0
  SolarArmyMoveTroopsOverTrench = 0
  RemoveStaffBearerInvulnerability = 0
  StaffBearerIsDead = 0
  StaffBearerXCoords = 0
  StaffBearerZCoords = 0
  ILBattlestattionXCoords = 0
  ILBattlestattionZCoords = 0
  SGunshipSpawned = 0
  PlayerEnteredDrain = 0
  StaffBearerUnderPlayerCommand = 0
  PlayerAtHazard = 0
  DrainGateBlownUp = 0
  LastBattleMove = 0
  TroopsUnderPlayersCommands = 0
  TroopsSendDone = 0
  TroopsCalledDone = 0
  BlockageCleared = 0
  Hill01Done = 0
  Hill02Done = 0
  Hill03Done = 0
  Tower01PlayerDone = 0
  Tower01UnitDone = 0
  MissionOver = 0
  HealthOfPlayer = 0
  FollowReminderDone = 0
  Sstrikebazooka01X = GetObjectXPosition(Troop.Sstrikebazooka01)
  Sstrikebazooka01Z = GetObjectZPosition(Troop.Sstrikebazooka01)
  DebugOut("Sstrikebazooka01 X = ", Sstrikebazooka01X, " Z = ", Sstrikebazooka01Z)
  Sstrikebazooka02X = GetObjectXPosition(Troop.Sstrikebazooka02)
  Sstrikebazooka02Z = GetObjectZPosition(Troop.Sstrikebazooka02)
  DebugOut("Sstrikebazooka02 X = ", Sstrikebazooka02X, " Z = ", Sstrikebazooka02Z)
  Sstrikebazooka03X = GetObjectXPosition(Troop.Sstrikebazooka03)
  Sstrikebazooka03Z = GetObjectZPosition(Troop.Sstrikebazooka03)
  DebugOut("Sstrikebazooka03 X = ", Sstrikebazooka03X, " Z = ", Sstrikebazooka03Z)
  Sstrikebazooka04X = GetObjectXPosition(Troop.Sstrikebazooka04)
  Sstrikebazooka04Z = GetObjectZPosition(Troop.Sstrikebazooka04)
  DebugOut("Sstrikebazooka04 X = ", Sstrikebazooka04X, " Z = ", Sstrikebazooka04Z)
  Sstrikebazooka05X = GetObjectXPosition(Troop.Sstrikebazooka05)
  Sstrikebazooka05Z = GetObjectZPosition(Troop.Sstrikebazooka05)
  DebugOut("Sstrikebazooka05 X = ", Sstrikebazooka05X, " Z = ", Sstrikebazooka05Z)
  Sstrikemissile01X = GetObjectXPosition(Troop.Sstrikemissile01)
  Sstrikemissile01Z = GetObjectZPosition(Troop.Sstrikemissile01)
  DebugOut("Sstrikemissile01 X = ", Sstrikemissile01X, " Z = ", Sstrikemissile01Z)
  Sstrikemissile02X = GetObjectXPosition(Troop.Sstrikemissile02)
  Sstrikemissile02Z = GetObjectZPosition(Troop.Sstrikemissile02)
  DebugOut("Sstrikemissile02 X = ", Sstrikemissile02X, " Z = ", Sstrikemissile02Z)
  Sstrikehose01X = GetObjectXPosition(Troop.Sstrikehose01)
  Sstrikehose01Z = GetObjectZPosition(Troop.Sstrikehose01)
  DebugOut("Sstrikehose01 X = ", Sstrikehose01X, " Z = ", Sstrikehose01Z)
  Sstrikehose02X = GetObjectXPosition(Troop.Sstrikehose02)
  Sstrikehose02Z = GetObjectZPosition(Troop.Sstrikehose02)
  DebugOut("Sstrikehose02 X = ", Sstrikehose02X, " Z = ", Sstrikehose02Z)
  Sstaffbearer01X = GetObjectXPosition(Troop.Sstaffbearer01)
  Sstaffbearer01Z = GetObjectZPosition(Troop.Sstaffbearer01)
  DebugOut("Sstaffbearer01 X = ", Sstaffbearer01X, " Z = ", Sstaffbearer01Z)
  Stankbattle01X = GetObjectXPosition(Ground_Vehicle.SEtankbattle01)
  Stankbattle01Z = GetObjectZPosition(Ground_Vehicle.SEtankbattle01)
  DebugOut("Stankbattle01 X = ", Stankbattle01X, " Z = ", Stankbattle01Z)
  ILBattlestattionXCoords = GetObjectXPosition(Ground_Vehicle.ILbattlestation01)
  ILBattlestattionZCoords = GetObjectZPosition(Ground_Vehicle.ILbattlestation01)
  PauseTutorial_LockOnDone = 0
  PauseTutorial_CombatRollStart = 0
  PauseTutorial_CombatRollDone = 0
  PauseTutorial_SquadWaitDone = 0
  PauseTutorial_SquadAttackDone = 0
  PauseTutorial_CombatRollRepeatStart = 0
  PauseTutorial_CombatRollRepeatDone = 0
  PauseTutorial_GateAttackDone = 0
end
