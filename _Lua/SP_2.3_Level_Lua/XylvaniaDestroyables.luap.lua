function XylvaniaDestroyables(owner)
  local xtent = 0
  local xtent1 = 0
  local xtroops01 = 0
  local reconcheck = 0
  local timespeech = 0
  local trigger1 = 0
  local trigger2 = 0
  local trigger3 = 0
  local trigger4 = 0
  while missionend == 0 do
    if trigger1 == 0 and IsDead(Building.Entity330104762) then
      Kill(Destroyable_Object.Entity210104796)
      trigger1 = 1
    end
    if trigger2 == 0 and (IsDead(Building.Entity330104837) or IsDead(Destroyable_Object.Entity2119297681)) then
      Kill(Destroyable_Object.Entity2119297681)
      Kill(Building.Entity330104837)
      trigger2 = 1
    end
    if trigger3 == 0 and IsDead(Building.Entity330104834) then
      Kill(Destroyable_Object.Entity210100106)
      trigger3 = 1
    end
    if trigger4 == 0 and trigger1 == 1 and trigger2 == 1 and trigger3 == 1 then
      PhoneMessage(50, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Young_Vlad_Sad, constant.PLAYER_ONE)
      trigger4 = 1
    end
    if reconcheck == 0 and xtent == 0 and IsDead(Destroyable_Object.XTent) then
      Spawn(Troop.XylvanianGrunt01)
      Spawn(Troop.XylvanianGrunt02)
      Spawn(Troop.XylvanianGrunt03)
      EndFrame()
      AttackTarget(GetPlayerUnit(), Troop.XylvanianGrunt01, constant.ORDER_FORCED)
      AttackTarget(GetPlayerUnit(), Troop.XylvanianGrunt02, constant.ORDER_FORCED)
      AttackTarget(GetPlayerUnit(), Troop.XylvanianGrunt03, constant.ORDER_FORCED)
      ClearMessageQueue()
      PhoneMessage(96, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      if recondead == 0 then
        PhoneMessage(49, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Young_Vlad_Sad, constant.PLAYER_ONE)
      end
      xtent = 1
    end
    if xtroops01 == 0 and IsInArea(Ground_Vehicle.WF_Recon_1, Map_Zone.Entity330103875) then
      ClearMessageQueue()
      PhoneMessage(6, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      GoToArea(Troop.Xgrunt01, 278, -486, 3)
      GoToArea(Troop.Xgrunt02, 278, -486, 3)
      GoToArea(Troop.Xgrunt03, 252, -478, 5)
      xtroops01 = 1
    end
    if reconcheck == 0 and xtent1 == 0 and IsDead(Destroyable_Object.XTent1) then
      Spawn(Troop.XylvanianGrunt04)
      AttackTarget(GetPlayerUnit(), Troop.XylvanianGrunt04, constant.ORDER_FORCED)
      xtent1 = 1
    end
    if reconcheck == 0 and IsInArea(Ground_Vehicle.WF_Recon_1, Map_Zone.ReconCheck) then
      reconcheck = 1
    end
    if reconcheck == 1 and IsInArea(Ground_Vehicle.WF_Recon_1, Map_Zone.HQ_Counter_Attack_1) then
      Despawn(Troop.Xgrunt01)
      Despawn(Troop.Xgrunt02)
      Despawn(Troop.Xgrunt03)
      Despawn(Troop.XylvanianGrunt01)
      Despawn(Troop.XylvanianGrunt02)
      Despawn(Troop.XylvanianGrunt03)
      Despawn(Troop.XylvanianGrunt04)
      reconcheck = 2
    end
    if reconcheck == 0 and timespeech == 0 and GetTime() > timer + 80 then
      PhoneMessage(91, constant.ID_NONE, constant.ARMY_WF, 8, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      timespeech = 1
    end
    EndFrame()
  end
end
