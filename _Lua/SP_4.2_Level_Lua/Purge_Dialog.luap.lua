function Purge_Dialog(owner)
  local pathdialogdone = 0
  local RPGWarningDone = 0
  local Barrackdialogdone = 0
  local POWdialogdone = 0
  repeat
    EndFrame()
  until cutscene01 >= 1
  Despawn(Ground_Vehicle.Stank02, true)
  Despawn(Ground_Vehicle.Stank03, true)
  Despawn(Troop.Schain01, true)
  Despawn(Troop.Schain02, true)
  Despawn(Troop.Sgrunt05, true)
  Despawn(Troop.Sgrunt06, true)
  Despawn(Troop.Sgrunt07, true)
  Despawn(Troop.Sgrunt08, true)
  Despawn(Troop.Sgrunt13, true)
  Despawn(Troop.Sgrunt14, true)
  Despawn(Building.Entity550038077, true)
  Despawn(Building.Entity550038078, true)
  Despawn(Building.Entity550038079, true)
  Despawn(Building.Entity550038080, true)
  Despawn(Building.Entity550038081, true)
  Despawn(Building.Entity550038082, true)
  Despawn(Building.Entity550038083, true)
  Despawn(Building.Entity550038084, true)
  while missionend == 0 do
    if (IsInArea(GetPlayerUnit(), Map_Zone.PathLeftRight) or 1 <= NumItemsInArea(Map_Zone.PathLeftRight, flag.TYPE_UNDERWORLD)) and pathdialogdone == 0 then
      pathdialogdone = 1
      PhoneMessage(60, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
      DebugOut("Spawning Tanks near Gate Pulleys")
      Spawn(Ground_Vehicle.Stank02)
      Spawn(Ground_Vehicle.Stank03)
      Spawn(Troop.Schain01)
      Spawn(Troop.Schain02)
      Spawn(Troop.Sgrunt05)
      Spawn(Troop.Sgrunt06)
      Spawn(Troop.Sgrunt07)
      Spawn(Troop.Sgrunt08)
      Spawn(Troop.Sgrunt13)
      Spawn(Troop.Sgrunt14)
      Spawn(Building.Entity550038077)
      Spawn(Building.Entity550038078)
      Spawn(Building.Entity550038079)
      Spawn(Building.Entity550038080)
      Spawn(Building.Entity550038081)
      Spawn(Building.Entity550038082)
      Spawn(Building.Entity550038083)
      Spawn(Building.Entity550038084)
    end
    if RPGWarningDone == 0 and IsInArea(Ground_Vehicle.ILtank01, Map_Zone.RPGWarning) and cutscenebombersstart == 0 then
      RPGWarningDone = 1
      PhoneMessage(9, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Sad, constant.PLAYER_ONE)
    end
    if (IsInArea(Troop.ILbazooka01, Map_Zone.ShowForcefield) or IsInArea(Troop.ILbazooka02, Map_Zone.ShowForcefield) or IsInArea(Troop.ILbazooka03, Map_Zone.ShowForcefield) or IsInArea(Troop.ILbazooka04, Map_Zone.ShowForcefield) or IsInArea(Troop.ILbazooka05, Map_Zone.ShowForcefield) or IsInArea(Troop.ILhose01, Map_Zone.ShowForcefield) or IsInArea(Troop.ILhose02, Map_Zone.ShowForcefield) or IsInArea(Troop.ILmortar01, Map_Zone.ShowForcefield) or IsInArea(Troop.ILmortar02, Map_Zone.ShowForcefield) or IsInArea(Troop.ILmortar03, Map_Zone.ShowForcefield) or IsInArea(Troop.ILmortar04, Map_Zone.ShowForcefield) or IsInArea(Troop.ILmortar05, Map_Zone.ShowForcefield) or IsInArea(Troop.LegionGrunt02, Map_Zone.ShowForcefield) or IsInArea(Troop.LegionGrunt03, Map_Zone.ShowForcefield) or IsInArea(Troop.LegionGrunt04, Map_Zone.ShowForcefield) or IsInArea(Troop.LegionGrunt05, Map_Zone.ShowForcefield) or IsInArea(Troop.LegionGrunt06, Map_Zone.ShowForcefield) or IsInArea(Ground_Vehicle.ILtank01, Map_Zone.ShowForcefield)) and Barrackdialogdone == 0 then
      Barrackdialogdone = 1
      SetObjectiveData(Objective.SolarBarracksObjective01, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.SolarBarracksObjectiveMarker01, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      ClearMessageQueue()
      PhoneMessageWithObjective(51, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
    end
    EndFrame()
  end
end
