function Palace_HQ_Attack(owner)
  Script02 = owner
  local a1 = 0
  local a2 = 0
  local a3 = 0
  local a4 = 0
  local wavetext = 0
  local counter = 0
  Despawn(Troop.SE_Palace_Grunt_1, true)
  Despawn(Troop.SE_Palace_Grunt_2, true)
  Despawn(Troop.SE_Palace_Grunt_3, true)
  Despawn(Building.SE_Fake_1, false)
  Despawn(Building.SE_Fake_2, false)
  Despawn(Building.SE_Fake_3, false)
  Despawn(Building.SE_Fake_4, false)
  Despawn(Troop.Entity260024682, true)
  Despawn(Troop.Entity260024683, true)
  Despawn(Troop.Entity260024684, true)
  Despawn(Troop.Entity260024685, true)
  Despawn(Troop.Entity260024686, true)
  Despawn(Ground_Vehicle.SE_LT2, false)
  repeat
    EndFrame()
  until cutscene == 1
  Teleport(Ground_Vehicle.SE_LT1, -90, 1310, 225, 5)
  repeat
    EndFrame()
  until 0 < mid
  repeat
    EndFrame()
  until GetObjectZPosition(GetPlayerUnit(constant.PLAYER_ONE)) > 900
  Spawn(Troop.Entity260024682)
  Spawn(Troop.Entity260024683)
  Spawn(Troop.Entity260024684)
  Spawn(Troop.Entity260024685)
  Spawn(Troop.Entity260024686)
  while true do
    if 0 < NumItemsInArea(Map_Zone.West_Bridge, flag.TYPE_SOLAR) then
      DebugOut("Player taking the West Bridge")
      GoToArea(Troop.Entity260024682, -185, 1200, 10)
      GoToArea(Troop.Entity260024683, -175, 1200, 10)
      GoToArea(Troop.Entity260024684, -170, 1200, 10)
      GoToArea(Troop.Entity260024685, -165, 1200, 10)
      GoToArea(Troop.Entity260024686, -160, 1200, 10)
      break
    else
      EndFrame()
    end
    if 0 < NumItemsInArea(Map_Zone.East_Bridge, flag.TYPE_SOLAR) then
      DebugOut("Player taking the East Bridge")
      GoToArea(Troop.Entity260024682, -25, 1200, 10)
      GoToArea(Troop.Entity260024683, -20, 1200, 10)
      GoToArea(Troop.Entity260024684, -15, 1200, 10)
      GoToArea(Troop.Entity260024685, -10, 1200, 10)
      GoToArea(Troop.Entity260024686, -5, 1200, 10)
      break
    else
      EndFrame()
    end
  end
  Spawn(Troop.SE_Palace_Grunt_1)
  Spawn(Troop.SE_Palace_Grunt_2)
  Spawn(Troop.SE_Palace_Grunt_3)
  DebugOut("Num Items in Palace", NumItemsInArea(Map_Zone.HQ, flag.TYPE_SOLAR))
  WaitFor(2)
  AttackTarget(Ground_Vehicle.SO_Artillery_1, GetPlayerUnit(constant.PLAYER_ONE))
  AttackTarget(Ground_Vehicle.SO_Artillery_2, GetPlayerUnit(constant.PLAYER_ONE))
  Despawn(Building.SE_Gun_1, false)
  Despawn(Building.SE_Gun_2, false)
  Despawn(Building.SE_Gun_3, false)
  Despawn(Building.SE_Gun_4, false)
  Spawn(Building.SE_Fake_1)
  Spawn(Building.SE_Fake_2)
  Spawn(Building.SE_Fake_3)
  Spawn(Building.SE_Fake_4)
  repeat
    EndFrame()
  until NumItemsInArea(Map_Zone.HQ, flag.TYPE_SOLAR) > 2 or IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.HQ)
  SetViewDistanceAdjustment(400, 90)
  SpawnDistance = 300
  repeat
    EndFrame()
  until IsInRange(GetPlayerUnit(), Capture_Point.Palace, 125)
  PhoneMessageWithObjective(46, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE, 0, constant.PRIMARY_OBJECTIVE_COMPLETE)
  SetObjectiveData(Objective.Assault_Vets, constant.OBJECTIVE_DATA_STATE, 1)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  DebugOut("Player has approached HQ, making Palace Grunts active and beginning Wave 1")
  if GetSpawnMode() == eModeAction.Follow then
    FollowUnit(Troop.SE_Palace_Grunt_1, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.SE_Palace_Grunt_2, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
    FollowUnit(Troop.SE_Palace_Grunt_3, GetPlayerUnit(), 5, 10, constant.ORDER_NORMAL)
  end
  SetActive(Troop.SE_Palace_Grunt_1, constant.ACTIVE)
  SetActive(Troop.SE_Palace_Grunt_2, constant.ACTIVE)
  SetActive(Troop.SE_Palace_Grunt_3, constant.ACTIVE)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Palace_Grunt_1)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Palace_Grunt_2)
  AddToGroup(Unit_Group.Player_Army, Troop.SE_Palace_Grunt_3)
  EnableWeapon(Building.SE_Gun_1, 0)
  EnableWeapon(Building.SE_Gun_2, 0)
  EnableWeapon(Building.SE_Gun_3, 0)
  EnableWeapon(Building.SE_Gun_4, 0)
  ClearMessageQueue()
  PhoneMessageWithObjective(49, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE, 0, constant.NEW_PRIMARY_OBJECTIVE)
  SetObjectiveData(Objective.Palace_HQ, constant.OBJECTIVE_DATA_VISIBLE, 1)
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  wave = 1
  PauseTutorial01 = 1
  repeat
    EndFrame()
  until PauseTutorial01 == 2
  PhoneMessage(48, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Happy, constant.PLAYER_ONE)
  repeat
    EndFrame()
  until wave == 2
  repeat
    DebugOut("The Health Percent of Wave 1 is", GetGroupHealthPercent(Unit_Group.Wave_1))
    WaitFor(1)
  until 90 > GetGroupHealthPercent(Unit_Group.Wave_1) or IsDead(Troop.AI_Grunt_1) and IsDead(Troop.AI_Grunt_2) and IsDead(Troop.AI_Grunt_3) and IsDead(Troop.AI_Grunt_4) and IsDead(Troop.AI_Grunt_5) and IsDead(Troop.AI_Grunt_6) and IsDead(Troop.AI_Grunt_7) and IsDead(Troop.AI_Grunt_8) and IsDead(Troop.AI_Grunt_9) and IsDead(Troop.AI_Grunt_10)
  DebugOut("Wave 2 Begins")
  WaitFor(10)
  PhoneMessage(51, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  repeat
    if wavetext == 0 and NumItemsInArea(Map_Zone.Grounds, flag.TYPE_ANGLO) == 0 then
      PhoneMessage(50, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
      wavetext = 1
    end
    DebugOut("The Health Percent of Wave 2 is", GetGroupHealthPercent(Unit_Group.Wave_2))
    WaitFor(1)
  until (GetGroupHealthPercent(Unit_Group.Wave_2) == 0 or IsDead(Troop.AI_Grunt_9) and IsDead(Troop.AI_Grunt_10) and IsDead(Troop.AI_Grunt_11) and IsDead(Troop.AI_Grunt_12) and IsDead(Troop.AI_Grunt_13) and IsDead(Troop.AI_Grunt_14) and IsDead(Ground_Vehicle.AI_Light_Tank_1) and IsDead(Ground_Vehicle.AI_Light_Tank_2)) and (GetGroupHealthPercent(Unit_Group.Wave_1) == 0 or IsDead(Troop.AI_Grunt_1) and IsDead(Troop.AI_Grunt_2) and IsDead(Troop.AI_Grunt_3) and IsDead(Troop.AI_Grunt_4) and IsDead(Troop.AI_Grunt_5) and IsDead(Troop.AI_Grunt_6) and IsDead(Troop.AI_Grunt_7) and IsDead(Troop.AI_Grunt_8))
  PhoneMessage(52, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    PhoneMessage(53, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
  end
  WaitFor(11)
  wave = 3
  repeat
    EndFrame()
  until GetNumItemsInMessageQueue(constant.PLAYER_ONE) == 0
  PauseTutorial02 = 1
  repeat
    EndFrame()
  until PauseTutorial02 == 2
  DebugOut("Wave 3 Begins")
  if GetCurrentMissionCompleted() ~= true or GetTutorialMode() ~= false then
    PhoneMessage(75, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  end
  PhoneMessage(82, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  repeat
    DebugOut("The Health Percent of Wave 3 is", GetGroupHealthPercent(Unit_Group.Wave_3))
    WaitFor(1)
  until GetGroupHealthPercent(Unit_Group.Wave_3) < 35 or IsDead(Troop.AI_Grunt_15) and IsDead(Troop.AI_Grunt_16) and IsDead(Troop.AI_Grunt_17) and IsDead(Troop.AI_Grunt_18) and IsDead(Troop.AI_Grunt_19) and IsDead(Troop.AI_Grunt_20) and IsDead(Troop.AI_Grunt_21) and IsDead(Troop.AI_Grunt_22) and IsDead(Troop.AI_Flame_1) and IsDead(Troop.AI_Flame_2) and IsDead(Troop.AI_Flame_3) and IsDead(Troop.AI_Flame_4) and IsDead(Ground_Vehicle.AI_Light_Tank_3) and IsDead(Ground_Vehicle.AI_Light_Tank_4)
  wave = 4
  DebugOut("Wave 3 Destroyed")
  WaitFor(2)
  PhoneMessage(79, constant.ID_NONE, constant.ARMY_ANGLO, 6, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
  PhoneMessage(80, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Sad, constant.PLAYER_ONE)
  repeat
    DebugOut("The Health Percent of Wave 3 is", GetGroupHealthPercent(Unit_Group.Wave_3))
    DebugOut("The Health Percent of Wave 4 is", GetGroupHealthPercent(Unit_Group.Wave_4))
    WaitFor(1)
  until GetGroupHealthPercent(Unit_Group.Wave_3) == 0 and GetGroupHealthPercent(Unit_Group.Wave_4) == 0 or IsDead(Troop.AI_Grunt_15) and IsDead(Troop.AI_Grunt_16) and IsDead(Troop.AI_Grunt_17) and IsDead(Troop.AI_Grunt_18) and IsDead(Troop.AI_Grunt_19) and IsDead(Troop.AI_Grunt_20) and IsDead(Troop.AI_Grunt_21) and IsDead(Troop.AI_Grunt_22) and IsDead(Troop.AI_Flame_1) and IsDead(Troop.AI_Flame_2) and IsDead(Troop.AI_Flame_3) and IsDead(Troop.AI_Flame_4) and IsDead(Ground_Vehicle.AI_Light_Tank_3) and IsDead(Ground_Vehicle.AI_Light_Tank_4) and IsDead(Troop.AI_Grunt_23) and IsDead(Troop.AI_Grunt_24) and IsDead(Troop.AI_Grunt_25) and IsDead(Troop.AI_Grunt_26) and IsDead(Troop.AI_Grunt_27) and IsDead(Troop.AI_Grunt_28) and IsDead(Troop.AI_Grunt_29) and IsDead(Troop.AI_Grunt_30) and IsDead(Troop.AI_Grunt_31) and IsDead(Troop.AI_Grunt_32) and IsDead(Troop.AI_Grunt_33) and IsDead(Troop.AI_Grunt_34) and IsDead(Troop.AI_Baz_1) and IsDead(Troop.AI_Baz_2) and IsDead(Troop.AI_Baz_3) and IsDead(Troop.AI_Baz_4) and IsDead(Troop.AI_Baz_5) and IsDead(Troop.AI_Baz_6) and IsDead(Ground_Vehicle.AI_Light_Tank_5) and IsDead(Ground_Vehicle.AI_Light_Tank_6)
  missioncomplete = 1
  DebugOut("Waves all destroyed")
end
