function Melee_Cutscene_BattlestationDeath(owner)
  CutsceneBattlestationDeathDead = owner
  Despawn(Building.IL_Battlestation01_Cutscene)
  repeat
    EndFrame()
  until IsDead(Building.IL_Battlestation01)
  DebugOut("Mission Failed, no Battlestations")
  MissionFailed = 1
  FreezePlayer(constant.PLAYER_ONE)
  CameraFade(constant.FADE_OUT, constant.WAIT, 1)
  StartOutro()
  Kill(AssaultStrings)
  Despawn(Building.IL_Battlestation01)
  Spawn(Building.IL_Battlestation01_Cutscene)
  SetHealthPercent(Building.IL_Battlestation01_Cutscene, 5)
  SetCamera(Camera.Cutscene_BattlestationDeath_Shot01)
  ClearMessageQueue()
  CameraFade(constant.FADE_IN, constant.WAIT, 1)
  PhoneMessage(92, constant.ID_NONE, constant.ARMY_UNDERWORLD, 6, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
  WaitFor(1)
  CutsceneBattlestationDeathBegins = 1
  VictoryDance(constant.ARMY_SOLAR)
  DefeatLament(constant.ARMY_UNDERWORLD)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  CutsceneBattlestationDeathComplete = 1
end
