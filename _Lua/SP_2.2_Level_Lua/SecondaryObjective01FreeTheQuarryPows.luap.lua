function SecondaryObjective01FreeTheQuarryPows(owner)
  SetActive(Troop.XsylvanianDigSiteWFAAVet01, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.XsylvanianDigSiteWFAAVet02, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.XsylvanianDigSiteWFAAVet03, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.XsylvanianDigSiteWFAAVet04, constant.INACTIVE, constant.ADJUST_WEAPON)
  SetUnitInvulnerable(Troop.XsylvanianDigSiteWFAAVet01, true)
  SetUnitInvulnerable(Troop.XsylvanianDigSiteWFAAVet02, true)
  SetUnitInvulnerable(Troop.XsylvanianDigSiteWFAAVet03, true)
  SetUnitInvulnerable(Troop.XsylvanianDigSiteWFAAVet04, true)
  Despawn(Troop.XsylvanianDigSiteWFAAVet01, false)
  Despawn(Troop.XsylvanianDigSiteWFAAVet02, false)
  Despawn(Troop.XsylvanianDigSiteWFAAVet03, false)
  Despawn(Troop.XsylvanianDigSiteWFAAVet04, false)
  while missionend == 0 do
    if IsDead(Destroyable_Object.XPowFence01) or IsDead(Destroyable_Object.XPowFence02) or IsDead(Destroyable_Object.XPowFence03) or IsDead(Destroyable_Object.XPowFence04) or IsDead(Destroyable_Object.XPowFence05) or IsDead(Destroyable_Object.XPowFence06) or IsDead(Destroyable_Object.XPowFence07) or IsDead(Destroyable_Object.XPowFence08) or IsDead(Destroyable_Object.XPowFence09) or IsDead(Destroyable_Object.XPowFence10) or IsDead(Destroyable_Object.XPowFence11) or IsDead(Destroyable_Object.XPowFence12) or IsDead(Destroyable_Object.XPowFence13) or IsDead(Destroyable_Object.XPowFence14) or IsDead(Building.XPowAmmoDump01) then
      pow01 = 1
      SetObjectiveData(Objective.FreePowsInTheXsylvanianDigSite, constant.OBJECTIVE_DATA_STATE, 1)
      SetObjectiveData(Objective_Marker.FreePowsInTheXsylvanianDigSite, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      ClearMessageQueue()
      PhoneMessageWithObjective(19, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
      TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
      Kill(Destroyable_Object.XPowFence01)
      Kill(Destroyable_Object.XPowFence02)
      Kill(Destroyable_Object.XPowFence03)
      Kill(Destroyable_Object.XPowFence04)
      Kill(Destroyable_Object.XPowFence05)
      Kill(Destroyable_Object.XPowFence06)
      Kill(Destroyable_Object.XPowFence07)
      Kill(Destroyable_Object.XPowFence08)
      Kill(Destroyable_Object.XPowFence09)
      Kill(Destroyable_Object.XPowFence10)
      Kill(Destroyable_Object.XPowFence11)
      Kill(Destroyable_Object.XPowFence12)
      Kill(Destroyable_Object.XPowFence13)
      Kill(Destroyable_Object.XPowFence14)
      Kill(Building.XPowAmmoDump01)
      EndFrame()
      SetActive(Troop.XsylvanianDigSiteWFAAVet01, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.XsylvanianDigSiteWFAAVet02, constant.ACTIVE, constant.ADJUST_WEAPON)
      EndFrame()
      SetActive(Troop.XsylvanianDigSiteWFAAVet03, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.XsylvanianDigSiteWFAAVet04, constant.ACTIVE, constant.ADJUST_WEAPON)
      EndFrame()
      if GetSpawnMode() == eModeAction.Follow then
        FollowUnit(Troop.XsylvanianDigSiteWFAAVet01, GetPlayerUnit(0), -1, constant.ORDER_FORCED)
        FollowUnit(Troop.XsylvanianDigSiteWFAAVet02, GetPlayerUnit(0), -1, constant.ORDER_FORCED)
        FollowUnit(Troop.XsylvanianDigSiteWFAAVet03, GetPlayerUnit(0), -1, constant.ORDER_FORCED)
        FollowUnit(Troop.XsylvanianDigSiteWFAAVet04, GetPlayerUnit(0), -1, constant.ORDER_FORCED)
      end
      SetUnitInvulnerable(Troop.XsylvanianDigSiteWFAAVet01, false)
      SetUnitInvulnerable(Troop.XsylvanianDigSiteWFAAVet02, false)
      SetUnitInvulnerable(Troop.XsylvanianDigSiteWFAAVet03, false)
      SetUnitInvulnerable(Troop.XsylvanianDigSiteWFAAVet04, false)
      WaitFor(9)
      if IsDead(Troop.XGrunt01) == false or IsDead(Troop.XGrunt02) == false or IsDead(Ground_Vehicle.XsylvanianLightTank01) == false then
        PhoneMessage(22, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Young_Vlad_Sad, constant.PLAYER_ONE)
      end
      DebugOut("*SecondaryObjective01FreeTheQuarryPows* - 1. The Quarry POWs have been freed")
      break
    end
    EndFrame()
  end
end
