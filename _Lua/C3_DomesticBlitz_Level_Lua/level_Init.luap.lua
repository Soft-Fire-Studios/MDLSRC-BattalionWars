function level_Init(owner)
  CurrentObjective = 1
  InStartCutscene = true
  break_tag_loop = false
  InEndCutscene = false
  MessagesReady = false
  XV_ATP02Dead = false
  XV_ATP03Dead = false
  XV_ATP04Dead = false
  XV_ATP05Dead = false
  XV_AllAPTsDead = false
  CapturingBase = false
  WF_ATP01Landed = false
  WF_ATP02Landed = false
  WF_ATP03Landed = false
  WF_StormStarted = false
  WF_AllOutAttack = false
  WF_ATP1Spawn = false
  WF_ATP2Spawn = false
  WF_ATP3Spawn = false
  XV_ATP1Spawn = false
  XV_ATP2Spawn = false
  XV_ATP3Spawn = false
  XV_ATP1NumSpawn = 0
  XV_ATP2NumSpawn = 0
  XV_ATP3NumSpawn = 0
  enATPsDead = 0
  enBMBsDead = -1
  enTNKsDead = -1
  enARTsDead = -1
  enOMHsDead = -1
  enMGsDead = -1
  enFlagsCapped = -1
  OutOfBoundsMessageInfo(59, 0, 5, SpriteID.CO_WF_Austin_Happy)
end
