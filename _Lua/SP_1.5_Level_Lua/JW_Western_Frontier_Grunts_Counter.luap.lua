function JW_Western_Frontier_Grunts_Counter(owner)
  local dead1 = 0
  local dead2 = 0
  local dead3 = 0
  local dead4 = 0
  local dead5 = 0
  local dead6 = 0
  local dead7 = 0
  local dead8 = 0
  local dead9 = 0
  local dead10 = 0
  local dead11 = 0
  local dead12 = 0
  local text1 = 0
  local text2 = 0
  repeat
    EndFrame()
  until TransportLandingCutsceneEnd == 1
  WesternFrontierGruntsAlive = 13
  DebugOut("Begin Grunt Death Check")
  repeat
    if dead1 == 0 and IsDead(Troop.WesternFrontierGrunt01) then
      DebugOut("WF Grunt 1 dead, adding him to WF Dead")
      dead1 = 1
    end
    if dead2 == 0 and IsDead(Troop.WesternFrontierGrunt02) then
      DebugOut("WF Grunt 2 dead, adding him to WF Dead")
      dead2 = 1
    end
    if dead3 == 0 and IsDead(Troop.WesternFrontierGrunt03) then
      DebugOut("WF Grunt 3 dead, adding him to WF Dead")
      dead3 = 1
    end
    if dead4 == 0 and IsDead(Troop.WesternFrontierGrunt04) then
      DebugOut("WF Grunt 4 dead, adding him to WF Dead")
      dead4 = 1
    end
    EndFrame()
    if dead5 == 0 and IsDead(Troop.WesternFrontierGrunt05) then
      DebugOut("WF Grunt 5 dead, adding him to WF Dead")
      dead5 = 1
    end
    if dead6 == 0 and IsDead(Troop.WesternFrontierGrunt06) then
      DebugOut("WF Grunt 6 dead, adding him to WF Dead")
      dead6 = 1
    end
    if dead7 == 0 and IsDead(Troop.WesternFrontierGrunt07) then
      DebugOut("WF Grunt 7 dead, adding him to WF Dead")
      dead7 = 1
    end
    if dead8 == 0 and IsDead(Troop.WesternFrontierGrunt08) then
      DebugOut("WF Grunt 8 dead, adding him to WF Dead")
      dead8 = 1
    end
    EndFrame()
    if dead9 == 0 and IsDead(Troop.WesternFrontierGrunt09) then
      DebugOut("WF Grunt 9 dead, adding him to WF Dead")
      dead9 = 1
    end
    if dead10 == 0 and IsDead(Troop.WesternFrontierGrunt10) then
      DebugOut("WF Grunt 10 dead, adding him to WF Dead")
      dead10 = 1
    end
    if dead11 == 0 and IsDead(Troop.WesternFrontierGrunt11) then
      DebugOut("WF Grunt 11 dead, adding him to WF Dead")
      dead11 = 1
    end
    if dead12 == 0 and IsDead(Troop.WesternFrontierGrunt12) then
      DebugOut("WF Grunt 12 dead, adding him to WF Dead")
      dead12 = 1
    end
    EndFrame()
    if 12 - (dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12) ~= WesternFrontierGruntsAlive then
      DebugOut("Removing Every Objective from the Objectives Screen")
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts18, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts17, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts16, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts15, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts14, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts13, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts12, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts11, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts10, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts09, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts08, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts07, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts06, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts05, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts04, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts03, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts02, constant.OBJECTIVE_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts01, constant.OBJECTIVE_DATA_VISIBLE, 0)
    end
    if dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 0 and WesternFrontierGruntsAlive ~= 12 then
      WesternFrontierGruntsAlive = 12
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts12, constant.OBJECTIVE_DATA_VISIBLE, 1)
      DebugOut("Objective Screen Display All Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 11 and WesternFrontierGruntsAlive ~= 1 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 1
      DebugOut("Objective Screen Displayed 1 Grunt Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 10 and WesternFrontierGruntsAlive ~= 2 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts02, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 2
      DebugOut("Objective Screen Displayed 2 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 9 and WesternFrontierGruntsAlive ~= 3 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts03, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 3
      DebugOut("Objective Screen Displayed 3 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 8 and WesternFrontierGruntsAlive ~= 4 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts04, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 4
      DebugOut("Objective Screen Displayed 4 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 7 and WesternFrontierGruntsAlive ~= 5 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts05, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 5
      DebugOut("Objective Screen Displayed 5 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 6 and WesternFrontierGruntsAlive ~= 6 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts06, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 6
      DebugOut("Objective Screen Displayed 6 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 5 and WesternFrontierGruntsAlive ~= 7 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts07, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 7
      DebugOut("Objective Screen Displayed 7 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 4 and WesternFrontierGruntsAlive ~= 8 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts08, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 8
      DebugOut("Objective Screen Displayed 8 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 3 and WesternFrontierGruntsAlive ~= 9 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts09, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 9
      DebugOut("Objective Screen Displayed 9 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 2 and WesternFrontierGruntsAlive ~= 10 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts10, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 10
      DebugOut("Objective Screen Displayed 10 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 1 and WesternFrontierGruntsAlive ~= 11 then
      SetObjectiveData(Objective.PrimaryObjectiveEscortWesternFrontierGrunts11, constant.OBJECTIVE_DATA_VISIBLE, 1)
      WesternFrontierGruntsAlive = 11
      DebugOut("Objective Screen Displayed 11 Grunts Alive")
    elseif dead1 + dead2 + dead3 + dead4 + dead5 + dead6 + dead7 + dead8 + dead9 + dead10 + dead11 + dead12 == 12 and WesternFrontierGruntsAlive ~= 0 then
      WesternFrontierGruntsAlive = 0
      DebugOut("Objective Screen Displayed 0 Grunts Alive")
    else
      EndFrame()
    end
    if text1 == 0 and WesternFrontierGruntsAlive == 8 then
      text1 = 1
      PhoneMessage(61, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
    end
    if text2 == 0 and WesternFrontierGruntsAlive == 4 then
      text2 = 1
      PhoneMessage(62, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
    end
    EndFrame()
  until missionend == 1 or WesternFrontierGruntsAlive == 0 or aatowers == 1
  DebugOut("Grunt Death Check Ends")
end
