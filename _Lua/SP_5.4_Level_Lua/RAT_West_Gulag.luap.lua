function RAT_West_Gulag(owner)
  local SpawnDone = 0
  local MoveDone = 0
  local AAWarningDone = 0
  local POWFence = 0
  Despawn(Ground_Vehicle.X_Heavy_Tank_7, true)
  Despawn(Ground_Vehicle.Xbattlestation02, true)
  SetUnitInvulnerable(Building.WG_F01, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F02, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F03, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F04, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F05, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F06, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F07, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F08, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F09, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F10, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F11, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F12, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F13, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F14, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F15, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F16, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F17, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F18, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F19, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F20, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F21, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F22, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F23, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F24, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F25, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F26, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F27, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F28, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F29, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F30, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F31, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F32, true)
  SetUnitInvulnerable(Destroyable_Object.WG_F33, true)
  WaitFor(1)
  while missionend == 0 do
    if SpawnDone == 0 then
      if NumItemsInArea(Map_Zone.WestGulag, flag.TYPE_TUNDRAN) >= 3 then
        SpawnDone = 1
        Spawn(Ground_Vehicle.X_Heavy_Tank_7)
        Spawn(Ground_Vehicle.Xbattlestation02)
      end
      WaitFor(1)
      EndFrame()
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.WestGulag) then
      if POWFence == 0 then
        POWFence = 1
        SetUnitInvulnerable(Building.WG_F01, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F02, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F03, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F04, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F05, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F06, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F07, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F08, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F09, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F10, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F11, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F12, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F13, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F14, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F15, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F16, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F17, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F18, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F19, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F20, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F21, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F22, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F23, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F24, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F25, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F26, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F27, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F28, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F29, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F30, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F31, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F32, false)
        SetUnitInvulnerable(Destroyable_Object.WG_F33, false)
      end
      if AAWarningDone == 0 then
        AAWarningDone = 1
        PhoneMessage(65, constant.ID_NONE, constant.ARMY_TUNDRAN, 6, SpriteID.CO_T_Nova_Happy, constant.PLAYER_ONE)
      end
      EndFrame()
    end
    EndFrame()
  end
end
