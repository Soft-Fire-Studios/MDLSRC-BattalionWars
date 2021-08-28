function HQ_Grunts(owner)
  SetTickScriptWhenDead(owner)
  repeat
    if GetHealthPercent(Capture_Point.SE_HQ_CP) < 100 and IsPassengerInUnit(owner, Capture_Point.SE_HQ_CP) == false and NumPassengersInUnit(Capture_Point.SE_HQ_CP) == 0 then
      EnterVehicle(owner, Capture_Point.SE_HQ_CP)
      if hqflagtext == 0 then
        hqflagtext = 1
        PhoneMessage(82, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
      end
      WaitFor(7)
    elseif IsInArea(owner, Map_Zone.HQ_Spawn) then
      if IsDead(Troop.AI_Grunt_10) == false then
        AttackTarget(owner, Troop.AI_Grunt_10)
      elseif IsDead(Troop.AI_Grunt_11) == false then
        AttackTarget(owner, Troop.AI_Grunt_11)
      elseif IsDead(Troop.AI_Grunt_12) == false then
        AttackTarget(owner, Troop.AI_Grunt_12)
      elseif IsDead(Troop.AI_Grunt_13) == false then
        AttackTarget(owner, Troop.AI_Grunt_13)
      elseif IsDead(Troop.AI_Grunt_14) == false then
        AttackTarget(owner, Troop.AI_Grunt_14)
      elseif IsDead(Troop.AI_Grunt_16) == false then
        AttackTarget(owner, Troop.AI_Grunt_16)
      elseif IsDead(Troop.AI_Grunt_17) == false then
        AttackTarget(owner, Troop.AI_Grunt_17)
      elseif IsDead(Troop.AI_Grunt_18) == false then
        AttackTarget(owner, Troop.AI_Grunt_18)
      elseif IsDead(Troop.AI_Grunt_19) == false then
        AttackTarget(owner, Troop.AI_Grunt_19)
      else
        if IsDead(Troop.AI_Grunt_20) == false then
          AttackTarget(owner, Troop.AI_Grunt_20)
        else
        end
      end
      WaitFor(5)
    else
      WaitFor(1)
    end
    WaitFor(1)
  until missionend == 1
end
