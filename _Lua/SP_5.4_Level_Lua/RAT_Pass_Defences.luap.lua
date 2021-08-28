function RAT_Pass_Defences(owner)
  local DrillDefencesSpawn = 0
  local GunshipDefence01Done = 0
  local GunshipDefence02Done = 0
  Despawn(Ground_Vehicle.X_Artillery_4, true)
  Despawn(Ground_Vehicle.X_Artillery_5, true)
  repeat
    EndFrame()
  until cutscene == 1
  Despawn(Ground_Vehicle.Xtank01, true)
  Despawn(Air_Vehicle.X_Gunship_1, true)
  Despawn(Air_Vehicle.X_Gunship_2, false)
  Despawn(Air_Vehicle.X_Gunship_3, true)
  Despawn(Air_Vehicle.X_Gunship_4, true)
  WaitFor(1)
  while missionend == 0 do
    if DrillDefencesSpawn == 0 then
      if 0 < NumItemsInArea(Map_Zone.FinalAttack, flag.TYPE_TUNDRAN) then
        DrillDefencesSpawn = 1
        Spawn(Ground_Vehicle.X_Artillery_4)
        Spawn(Ground_Vehicle.X_Artillery_5)
        Spawn(Ground_Vehicle.Xtank01)
      end
      WaitFor(1)
      EndFrame()
    end
    EndFrame()
  end
end
