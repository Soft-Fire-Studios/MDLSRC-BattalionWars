function RocketObjectives(owner)
  Despawn(Troop.RuinsTroop1)
  Despawn(Troop.RuinsTroop2)
  Despawn(Troop.TransferMonkey)
  Despawn(Building.TopHillRocketsBomb)
  Despawn(Building.RuinsRocketsBombDupe)
  Despawn(Building.OuterIslandRocketsBombDupe)
  Despawn(Building.TopHillRocketsBombDupe)
  Despawn(Building.OuterIslandRocketsBomb)
  scriptRocketObjectives = owner
  local killtroopsmessage1 = 0
  local killtroopsmessage2 = 0
  local killtroopsmessage3 = 0
  repeat
    EndFrame()
  until admiralrescued == 1
  SetObjectiveData(Objective.RocketObjective03, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    if (IsInArea(Troop.Admiral, Map_Zone.RuinsRockets) or IsInArea(Troop.Admiral, Map_Zone.RuinsRocketsAlt)) and ruinsrockets == 0 then
      munitionsexpertcutscenestart = 1
    end
    if IsInArea(Troop.Admiral, Map_Zone.TopHillRockets) and tophillrockets == 0 and secondsilocutscenestart == 0 then
      if killtroopsmessage2 == 0 then
        if IsDead(Troop.ReconRunGrunt1) == false or IsDead(Troop.ReconRunGrunt2) == false or IsDead(Troop.ReconRunGrunt3) == false then
          ClearMessageQueue()
          PhoneMessage(85, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
        end
        killtroopsmessage2 = 1
      end
      if IsDead(Troop.ReconRunGrunt1) and IsDead(Troop.ReconRunGrunt2) and IsDead(Troop.ReconRunGrunt3) then
        secondsilocutscenestart = 1
      end
    end
    if IsInArea(Troop.Admiral, Map_Zone.OuterIslandRockets) and bottomhillrockets == 0 and thirdsilocutscenestart == 0 then
      if killtroopsmessage3 == 0 then
        if IsDead(Troop.ReconRunGrunt7) == false or IsDead(Troop.ReconRunGrunt8) == false or IsDead(Troop.ReconRunGrunt9) == false then
          ClearMessageQueue()
          PhoneMessage(85, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
        end
        killtroopsmessage3 = 1
      end
      if IsDead(Troop.ReconRunGrunt7) and IsDead(Troop.ReconRunGrunt8) and IsDead(Troop.ReconRunGrunt9) then
        thirdsilocutscenestart = 1
      end
    end
    EndFrame()
  until ruinsrockets == 1 and tophillrockets == 1 and bottomhillrockets == 1
  DebugOut("Rockets have been eliminated")
  PhoneMessageWithObjective(22, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.PRIMARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(23, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Aqira_Happy, constant.PLAYER_ONE, false, constant.NEW_PRIMARY_OBJECTIVE)
  battleshipcutscenestart = 1
end
