function POW_Grunts(owner)
  POWGruntScript = owner
  local ShowPOWObjective = 0
  Despawn(Troop.ILGrunt11)
  Despawn(Troop.ILGrunt12)
  Despawn(Troop.ILGrunt13)
  Despawn(Troop.ILGrunt14)
  Despawn(Troop.ILGrunt15)
  Despawn(Building.AmmoDump01)
  SetUnitInvulnerable(Destroyable_Object.POW01a, true)
  SetUnitInvulnerable(Destroyable_Object.POW01b, true)
  SetUnitInvulnerable(Destroyable_Object.POW01c, true)
  SetUnitInvulnerable(Destroyable_Object.POW01d, true)
  SetUnitInvulnerable(Destroyable_Object.POW01e, true)
  SetUnitInvulnerable(Destroyable_Object.POW01f, true)
  SetUnitInvulnerable(Destroyable_Object.POW01g, true)
  SetUnitInvulnerable(Destroyable_Object.POW01h, true)
  SetUnitInvulnerable(Destroyable_Object.POW01i, true)
  SetUnitInvulnerable(Destroyable_Object.POW01j, true)
  SetUnitInvulnerable(Destroyable_Object.POW01k, true)
  SetUnitInvulnerable(Destroyable_Object.POW01l, true)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  WaitFor(10)
  repeat
    EndFrame()
  until POWReadyToBeTriggered == 1
  while true do
    if ShowPOWObjective == 0 and (IsInArea(GetPlayerUnit(), Map_Zone.TriggerPOW) or IsInArea(GetPlayerUnit(), Map_Zone.TriggerPOW2)) then
      ShowPOWObjective = 1
      ClearMessageQueue()
      PhoneMessageWithObjective(52, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      Spawn(Troop.ILGrunt11)
      Spawn(Troop.ILGrunt12)
      Spawn(Troop.ILGrunt13)
      Spawn(Troop.ILGrunt14)
      Spawn(Troop.ILGrunt15)
      Spawn(Building.AmmoDump01)
      SetObjectiveData(Objective.POW, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.POW, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetActive(Troop.ILGrunt11, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.ILGrunt12, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.ILGrunt13, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.ILGrunt14, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.ILGrunt15, constant.INACTIVE, constant.ADJUST_WEAPON)
      SetUnitInvulnerable(Troop.ILGrunt11, true)
      SetUnitInvulnerable(Troop.ILGrunt12, true)
      SetUnitInvulnerable(Troop.ILGrunt13, true)
      SetUnitInvulnerable(Troop.ILGrunt14, true)
      SetUnitInvulnerable(Troop.ILGrunt15, true)
      SetUnitInvulnerable(Destroyable_Object.POW01a, false)
      SetUnitInvulnerable(Destroyable_Object.POW01b, false)
      SetUnitInvulnerable(Destroyable_Object.POW01c, false)
      SetUnitInvulnerable(Destroyable_Object.POW01d, false)
      SetUnitInvulnerable(Destroyable_Object.POW01e, false)
      SetUnitInvulnerable(Destroyable_Object.POW01f, false)
      SetUnitInvulnerable(Destroyable_Object.POW01g, false)
      SetUnitInvulnerable(Destroyable_Object.POW01h, false)
      SetUnitInvulnerable(Destroyable_Object.POW01i, false)
      SetUnitInvulnerable(Destroyable_Object.POW01j, false)
      SetUnitInvulnerable(Destroyable_Object.POW01k, false)
      SetUnitInvulnerable(Destroyable_Object.POW01l, false)
    else
      EndFrame()
      while true do
        if POWFreed == 0 and (IsDead(Destroyable_Object.POW01a) or IsDead(Destroyable_Object.POW01b) or IsDead(Destroyable_Object.POW01c) or IsDead(Destroyable_Object.POW01d) or IsDead(Destroyable_Object.POW01e) or IsDead(Destroyable_Object.POW01f) or IsDead(Destroyable_Object.POW01g) or IsDead(Destroyable_Object.POW01h) or IsDead(Destroyable_Object.POW01i) or IsDead(Destroyable_Object.POW01j) or IsDead(Destroyable_Object.POW01k) or IsDead(Destroyable_Object.POW01l) or IsDead(Building.AmmoDump01)) then
          POWFreed = 1
          TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
          Kill(Destroyable_Object.POW01a)
          Kill(Destroyable_Object.POW01b)
          Kill(Destroyable_Object.POW01c)
          Kill(Destroyable_Object.POW01d)
          Kill(Destroyable_Object.POW01e)
          Kill(Destroyable_Object.POW01f)
          Kill(Destroyable_Object.POW01g)
          Kill(Destroyable_Object.POW01h)
          Kill(Destroyable_Object.POW01i)
          Kill(Destroyable_Object.POW01j)
          Kill(Destroyable_Object.POW01k)
          Kill(Destroyable_Object.POW01l)
          Kill(Building.AmmoDump01)
          EndFrame()
          SetObjectiveData(Objective.POW, constant.OBJECTIVE_DATA_STATE, 1)
          SetObjectiveData(Objective_Marker.POW, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetActive(Troop.ILGrunt11, constant.ACTIVE, constant.ADJUST_WEAPON)
          SetActive(Troop.ILGrunt12, constant.ACTIVE, constant.ADJUST_WEAPON)
          SetActive(Troop.ILGrunt13, constant.ACTIVE, constant.ADJUST_WEAPON)
          SetActive(Troop.ILGrunt14, constant.ACTIVE, constant.ADJUST_WEAPON)
          SetActive(Troop.ILGrunt15, constant.ACTIVE, constant.ADJUST_WEAPON)
          AddToGroup(Unit_Group.PlayerUnits, Troop.ILGrunt11)
          AddToGroup(Unit_Group.PlayerUnits, Troop.ILGrunt12)
          AddToGroup(Unit_Group.PlayerUnits, Troop.ILGrunt13)
          AddToGroup(Unit_Group.PlayerUnits, Troop.ILGrunt14)
          AddToGroup(Unit_Group.PlayerUnits, Troop.ILGrunt15)
          if GetSpawnMode() == eModeAction.Follow then
            FollowUnit(Troop.ILGrunt11, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
            FollowUnit(Troop.ILGrunt12, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
            FollowUnit(Troop.ILGrunt13, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
            FollowUnit(Troop.ILGrunt14, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
            FollowUnit(Troop.ILGrunt15, GetPlayerUnit(), -1, 0, constant.ORDER_FORCED)
          end
          repeat
            EndFrame()
          until CutsceneIsPlaying == 0
          ClearMessageQueue()
          PhoneMessageWithObjective(53, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
          WaitFor(1)
          SetUnitInvulnerable(Troop.ILGrunt11, false)
          SetUnitInvulnerable(Troop.ILGrunt12, false)
          SetUnitInvulnerable(Troop.ILGrunt13, false)
          SetUnitInvulnerable(Troop.ILGrunt14, false)
          SetUnitInvulnerable(Troop.ILGrunt15, false)
        end
        EndFrame()
      end
    end
  end
end
