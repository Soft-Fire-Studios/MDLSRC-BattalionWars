function GlobalVariables(owner)
  cutscene = 0
  cutsceneabort = 0
  cutsceneouttro = 0
  camtest = 0
  pows = 0
  fuelrefinery = 0
  munitionsdump = 0
  communicationstower = 0
  munitionsdumpattack = 0
  objectivescomplete = 0
  missilevetsfree = 0
  bazookavetsfree = 0
  solarpowsfree = 0
  lookoutmuntionsdump = 0
  lookoutfuelrefinery = 0
  lookoutcommunicationstower = 0
  lookoutextractionpoint = 0
  gunship1 = 0
  gunship2 = 0
  onlygotrecon = 0
  cutscenefinished = 0
  startouttro = 0
  stopcheckingWFpowstatus = 0
  stopcheckingSEpowstatus = 0
  SpawnDistance = 250
  scriptAnnounceObjectiveCommunicationsTower = 0
  scriptAnnounceObjectiveFuelRefinery = 0
  scriptAnnounceObjectiveMunitionsDump = 0
  scriptCoOpMarkers = 0
  scriptCutsceneIntro = 0
  scriptCutsceneIntroAbort = 0
  scriptCutsceneOutro = 0
  scriptCutsceneOutroAbort = 0
  scriptDespawnUnits = 0
  scriptFailedMission = 0
  scriptLookOutCommunicationsTower = 0
  scriptLookOutExtractionPoint = 0
  scriptLookOutFuelRefinery = 0
  scriptLookOutMunitionsDump = 0
  scriptObjectiveCommunicationsTower = 0
  scriptObjectiveFuelRefinery = 0
  scriptObjectiveMunitionsDump = 0
  scriptObjectivesComplete = 0
  scriptPOWCommunicationsTower = 0
  scriptPOWFuelRefinery = 0
  scriptPOWMunitionsDump = 0
  chopperstatus = 0
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    OutOfBoundsMessageInfo(478, 0, 5, SpriteID.CO_WF_Herman_Sad)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    OutOfBoundsMessageInfo(488, 3, 5, SpriteID.CO_SE_Leiqo_Sad)
  end
  netvariable.player1.missioncomplete = 0
  netvariable.player2.missioncomplete = 0
  netvariable.player1.missionfailed = 0
  netvariable.player1.skippedintro = 0
  netvariable.player2.skippedintro = 0
  netvariable.player1.skippedoutro = 0
  netvariable.player2.skippedoutro = 0
  netvariable.player1.CommunicationsTower = 0
  netvariable.player1.FuelRefinery = 0
  netvariable.player1.MunitionsDump = 0
  netvariable.player1.lookoutcomms = 0
  netvariable.player1.lookoutfuelref = 0
  netvariable.player1.lookoutmunitions = 0
  netvariable.player1.gunshipssent = 0
  netvariable.player1.spawnmunitionstanks = 0
  netvariable.player1.wfLostUnitsPOWsLeft = 0
  netvariable.player1.wfLostUnits = 0
  netvariable.player1.seLostUnitsPOWsLeft = 0
  netvariable.player1.seLostUnits = 0
  netvariable.player1.AllTroopsDead = 0
  netvariable.player2.AllTroopsDead = 0
  netvariable.player1.lockmessagewfLostUnits = 0
  netvariable.player1.lockmessageseLostUnits = 0
  netvariable.player1.lockmessagewfLostUnitsPOWsLeft = 0
  netvariable.player1.lockmessageseLostUnitsPOWsLeft = 0
  netvariable.player1.MissionProbablyLost = 0
  netvariable.player1.breakfromloop = 0
  netvariable.player2.breakfromloop = 0
end
