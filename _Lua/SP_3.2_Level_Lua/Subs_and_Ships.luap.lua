function Subs_and_Ships(owner)
  local rback = 0
  script12 = owner
  local loop = 1
  local skip = 0
  local bs1 = 0
  local bs2 = 0
  local text = 0
  local text2 = 0
  Despawn(Air_Vehicle.SE_Gunship_1)
  Despawn(Air_Vehicle.SE_Gunship_2)
  Despawn(Air_Vehicle.SE_Gunship_3)
  Despawn(Air_Vehicle.SE_Gunship_4)
  Despawn(Water_Vehicle.SE_Battleship_2)
  Despawn(Water_Vehicle.AI_Battleship_1)
  repeat
    EndFrame()
  until cutscene == 1
  Spawn(Water_Vehicle.AI_Battleship_1)
  repeat
    if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
      if text == 0 and (IsSubmarineSubmerged(Water_Vehicle.AI_Sub_1) or IsSubmarineSubmerged(Water_Vehicle.AI_Sub_1)) and (IsDead(Water_Vehicle.AI_Sub_1) == false or IsDead(Water_Vehicle.AI_Sub_1) == false) then
        ClearMessageQueue()
        PhoneMessage(9, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
        PhoneMessage(10, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
        text = 1
      else
        EndFrame()
      end
    end
    if text2 == 0 and (ReadControllerState(constant.CONTROL_FIRE, constant.CONTROL_JUST_PRESSED, constant.PLAYER_ONE) and (GetTargetedObject() == Building.SE_RPG_Tower_1 or GetTargetedObject() == Building.SE_RPG_Tower_2 or GetTargetedObject() == Building.SE_RPG_Tower_3 or GetTargetedObject() == Building.SE_RPG_Tower_4 or GetTargetedObject() == Building.SE_RPG_Tower_5) or IsAttacking(Water_Vehicle.AI_Sub_1) or IsAttacking(Water_Vehicle.AI_Sub_2)) then
      DebugOut("Player targetting Towers")
      ClearMessageQueue()
      PhoneMessage(12, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      text2 = 1
    else
      EndFrame()
    end
    if rback == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Back_Alley) then
      rback = 1
      if text == 0 then
        if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
          PhoneMessage(9, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
          PhoneMessage(10, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
        end
        text = 1
      end
    else
      EndFrame()
    end
  until IsInRange(GetPlayerUnit(), Water_Vehicle.AI_Frigate_1, 250) or IsInRange(GetPlayerUnit(), Water_Vehicle.AI_Frigate_2, 250) or IsInRange(GetPlayerUnit(), Water_Vehicle.SE_Battleship_1, 250)
  DebugOut("Player has passed the tutorial section")
  subtut = 1
  if rback == 1 and GetHealthPercent(Water_Vehicle.AI_Sub_1) > 99 and GetHealthPercent(Water_Vehicle.AI_Sub_2) > 99 then
    PhoneMessageWithObjective(17, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  elseif GetHealthPercent(Water_Vehicle.AI_Sub_1) > 99 and GetHealthPercent(Water_Vehicle.AI_Sub_2) > 99 and text == 1 then
    PhoneMessageWithObjective(13, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  elseif rback == 0 and text == 0 then
    PhoneMessageWithObjective(15, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  else
    PhoneMessageWithObjective(14, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  end
  DebugOut("Player is within range of the Frigates")
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  subtut = 2
  GoToArea(Water_Vehicle.SE_Battleship_1, 100, -65, 50)
  PhoneMessageWithObjective(20, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  WaitFor(2)
  PhoneMessage(28, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  DebugOut("Setting Frigates to become active")
  SetObjectiveData(Objective.Battleships, constant.OBJECTIVE_DATA_STATE, 1)
  SetObjectiveData(Objective.Frigates_22, constant.OBJECTIVE_DATA_VISIBLE, 1)
  SetActive(Water_Vehicle.AI_Frigate_1, constant.ACTIVE)
  SetActive(Water_Vehicle.AI_Frigate_2, constant.ACTIVE)
  repeat
    EndFrame()
  until IsDead(Water_Vehicle.SE_Battleship_1)
  DebugOut("player has destroyed the first SE Battleship")
  DebugOut("Spawning SE Gunships & BS2 and sending them in")
  PhoneMessage(22, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Aqira_Sad, constant.PLAYER_ONE)
  PhoneMessage(23, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  Spawn(Air_Vehicle.SE_Gunship_1)
  Spawn(Air_Vehicle.SE_Gunship_2)
  Spawn(Air_Vehicle.SE_Gunship_3)
  Spawn(Air_Vehicle.SE_Gunship_4)
  Spawn(Water_Vehicle.SE_Battleship_2)
  EndFrame()
  GoToArea(Water_Vehicle.SE_Battleship_2, 50, 30, 50)
  EndFrame()
  GoToArea(Air_Vehicle.SE_Gunship_1, 190, -30, 20)
  if IsDead(Water_Vehicle.AI_Frigate_1) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_1, Water_Vehicle.AI_Frigate_1)
  end
  GoToArea(Air_Vehicle.SE_Gunship_2, 225, -40, 20)
  if IsDead(Water_Vehicle.AI_Frigate_1) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_2, Water_Vehicle.AI_Frigate_1)
  end
  EndFrame()
  GoToArea(Air_Vehicle.SE_Gunship_3, 205, -60, 20)
  if IsDead(Water_Vehicle.AI_Frigate_2) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_3, Water_Vehicle.AI_Frigate_2)
  end
  EndFrame()
  GoToArea(Air_Vehicle.SE_Gunship_4, 190, -50, 50)
  if IsDead(Water_Vehicle.AI_Frigate_2) == false then
    AttackTarget(Air_Vehicle.SE_Gunship_4, Water_Vehicle.AI_Frigate_2)
  end
  loop = 0
  repeat
    EndFrame()
  until GetGroupHealthPercent(Unit_Group.First_Attack) < 0.1
  ClearMessageQueue()
  PhoneMessageWithObjective(24, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  PhoneMessageWithObjective(27, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  DebugOut("Player has destroyed Second Battleship and Gunships")
  subtut = 3
end
