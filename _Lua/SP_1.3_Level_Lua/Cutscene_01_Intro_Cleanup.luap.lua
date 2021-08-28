function Cutscene_01_Intro_Cleanup(owner)
  Despawn(Troop.SE_POW1, true)
  Despawn(Troop.SE_POW2, true)
  Despawn(Troop.SE_POW3, true)
  Despawn(Troop.SE_POW4, true)
  Despawn(Troop.AI_R3_1, true)
  Despawn(Troop.AI_R3_2, true)
  Despawn(Troop.AI_Beach_Grunt_1)
  Despawn(Troop.AI_Beach_Grunt_2)
  Despawn(Troop.AI_Beach_Grunt_3)
  repeat
    EndFrame()
  until cutscene == 1
  Despawn(Troop.CS_Grunt_1)
  Despawn(Troop.CS_Grunt_2)
  Despawn(Troop.CS_Grunt_3)
  Despawn(Troop.CS_Grunt_4)
  Despawn(Ground_Vehicle.AI_Light_Tank_b)
  Despawn(Air_Vehicle.AI_Intro_Air_Transport_1)
  Despawn(Air_Vehicle.AI_Intro_Air_Transport_2)
  Despawn(Troop.AI_Intro_Grunt_1)
  Despawn(Troop.AI_Intro_Grunt_2)
  Despawn(Troop.AI_Intro_Grunt_3)
  Despawn(Troop.AI_Intro_Grunt_4)
  Despawn(Troop.AI_Intro_Grunt_5)
  Despawn(Troop.AI_Intro_Grunt_6)
  Despawn(Troop.AI_Intro_Grunt_7)
  Despawn(Ground_Vehicle.shot_0, false)
  Despawn(Ground_Vehicle.shot_1, false)
  Despawn(Ground_Vehicle.shot_2, false)
  Despawn(Ground_Vehicle.shot_3, false)
  Despawn(Ground_Vehicle.shot_4, false)
  Despawn(Ground_Vehicle.shot_5, false)
  Despawn(Troop.AI_R1_1, true)
  Despawn(Troop.AI_R1_2, true)
  Spawn(Troop.AI_Beach_Grunt_1)
  Spawn(Troop.AI_Beach_Grunt_2)
  Spawn(Troop.AI_Beach_Grunt_3)
  Spawn(Troop.AI_Beach_Grunt_5)
  Spawn(Troop.AI_Beach_Grunt_6)
  Spawn(Troop.Entity260024501)
  Spawn(Troop.Entity260024498)
  Spawn(Troop.Entity260024499)
  Spawn(Troop.Entity260024514)
  Spawn(Ground_Vehicle.AI_Beach_Tank_1)
  Spawn(Ground_Vehicle.AI_Beach_Tank_2)
  SetActive(Building.SE_Gun_1, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.SE_Gun_2, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.SE_Gun_3, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Building.SE_Gun_4, constant.INACTIVE, constant.ADJUST_WEAPON)
  Despawn(Water_Vehicle.CS_Sea_Transport_1)
  Despawn(Water_Vehicle.CS_Sea_Transport_2)
  Despawn(Water_Vehicle.CS_Sea_Transport_3)
  Spawn(Building.SE_Sea_Transport_1)
  Spawn(Building.SE_Sea_Transport_2)
  Spawn(Building.SE_Sea_Transport_3)
  SetInvulnerable(flag.TYPE_SOLAR, false)
  SetInvulnerable(flag.TYPE_ANGLO, false)
  Despawn(Troop.CS_Art_1)
  Despawn(Troop.CS_Art_2)
  Despawn(Troop.CS_Art_3)
  Despawn(Troop.CS_Art_4)
  Despawn(Troop.SE_POW1, true)
  Despawn(Troop.SE_POW2, true)
  Despawn(Troop.SE_POW3, true)
  Despawn(Troop.SE_POW4, true)
end
