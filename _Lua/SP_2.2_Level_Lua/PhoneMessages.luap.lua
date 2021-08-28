function PhoneMessages(owner)
  phonemessages = owner
  local RunoncePhoneMessage02 = 0
  local RunoncePhoneMessage03 = 0
  local RunoncePhoneMessage04 = 0
  local RunoncePhoneMessage05 = 0
  local RunoncePhoneMessage06 = 0
  local RunoncePhoneMessage07 = 0
  local RunoncePhoneMessage08 = 0
  local RunoncePhoneMessage09 = 0
  local RunoncePhoneMessage10 = 0
  local RunoncePhoneMessage11 = 0
  local RunoncePhoneMessage12 = 0
  local RunoncePhoneMessage13 = 0
  local RunoncePhoneMessage14 = 0
  local RunoncePhoneMessage15 = 0
  local RunoncePhoneMessage16 = 0
  local RunoncePhoneMessage17 = 0
  local RunoncePhoneMessage18 = 0
  local RunoncePhoneMessage19 = 0
  local RunoncePhoneMessage20 = 0
  local RunonceMapZoneEventTriggers01 = 0
  local RunonceMapZoneEventTriggers02 = 0
  local RunonceMapZoneEventTriggers03 = 0
  local RunonceMapZoneEventTriggers04 = 0
  local RunonceMapZoneEventTriggers05 = 0
  local RunonceMapZoneEventTriggers07 = 0
  local RunonceMapZoneEventTriggers09 = 0
  local RunonceMapZoneEventTriggers10 = 0
  local xbarrel01 = 0
  local xbarrel02 = 0
  local xbarrel03 = 0
  local xbarrel04 = 0
  local tutorialcounter = GetTime()
  local revivecounter01 = GetTime()
  local gunshiprevive01 = 0
  repeat
    EndFrame()
  until IntroCutsceneFinished == 1
  while missionend == 0 do
    while playerincutscene ~= false do
      EndFrame()
    end
    if RunonceMapZoneEventTriggers04 == 0 and (IsDead(Troop.TundranBazookaVet11) == false or IsDead(Troop.TundranBazookaVet12) == false or IsDead(Troop.TundranBazookaVet13) == false) and (GetHealthPercent(Water_Vehicle.TFrigate01) < 95 or 95 > GetHealthPercent(Water_Vehicle.TFrigate02) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.TundranBazookaVet11, 195) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.TundranBazookaVet12, 195) or IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.TundranBazookaVet13, 195)) then
      if IsDead(Ground_Vehicle.WFArtillery01) == false and IsDead(Ground_Vehicle.WFArtillery02) == false and IsDead(Ground_Vehicle.WFArtillery03) == false then
        PhoneMessage(8, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        if IsDead(Ground_Vehicle.WFArtillery01) == false then
          GoToArea(Troop.TundranBazookaVet11, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Troop.TundranBazookaVet12, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Troop.TundranBazookaVet13, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        elseif IsDead(Ground_Vehicle.WFArtillery02) == false then
          GoToArea(Troop.TundranBazookaVet11, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery02), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Troop.TundranBazookaVet12, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery02), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Troop.TundranBazookaVet13, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery02), 10, 0, constant.ORDER_NORMAL)
        elseif IsDead(Ground_Vehicle.WFArtillery03) == false then
          GoToArea(Troop.TundranBazookaVet11, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery03), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Troop.TundranBazookaVet12, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery03), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Troop.TundranBazookaVet13, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery03), 10, 0, constant.ORDER_NORMAL)
        elseif IsDead(Ground_Vehicle.WFArtillery01) and IsDead(Ground_Vehicle.WFArtillery02) and IsDead(Ground_Vehicle.WFArtillery03) then
          AttackTarget(Troop.TundranBazookaVet11, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
          AttackTarget(Troop.TundranBazookaVet12, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
          AttackTarget(Troop.TundranBazookaVet13, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
        end
      end
      RunonceMapZoneEventTriggers04 = 1
    end
    EndFrame()
    if RunonceMapZoneEventTriggers01 == 0 and 0 < NumItemsInArea(Map_Zone.TBombersArtilleryAttack, flag.TYPE_WFRONTIER) then
      PhoneMessage(10, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      Spawn(Air_Vehicle.TundranBomber01)
      Spawn(Air_Vehicle.TundranGunship06)
      RunonceMapZoneEventTriggers01 = 1
      if IsDead(Ground_Vehicle.WFArtillery01) == false then
        GoToArea(Air_Vehicle.TundranBomber01, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        GoToArea(Air_Vehicle.TundranGunship06, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
      elseif IsDead(Ground_Vehicle.WFArtillery02) == false then
        GoToArea(Air_Vehicle.TundranBomber01, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        GoToArea(Air_Vehicle.TundranGunship06, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
      elseif IsDead(Ground_Vehicle.WFArtillery03) == false then
        GoToArea(Air_Vehicle.TundranBomber01, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        GoToArea(Air_Vehicle.TundranGunship06, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
      elseif IsDead(Ground_Vehicle.WFArtillery01) and IsDead(Ground_Vehicle.WFArtillery02) and IsDead(Ground_Vehicle.WFArtillery03) then
        AttackTarget(Air_Vehicle.TundranBomber01, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
        AttackTarget(Air_Vehicle.TundranGunship06, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      end
    end
    EndFrame()
    if RunoncePhoneMessage02 == 0 and Objective01 == 1 and (IsDead(Building.TundranAntiAirTower03) == false or IsDead(Building.TundranAntiAirTower04) == false) and (IsDead(Air_Vehicle.WFGunship02) == false or IsDead(Air_Vehicle.WFGunship03) == false) and (IsInRange(Air_Vehicle.WFGunship02, Building.TundranAntiAirTower03, 150) or IsInRange(Air_Vehicle.WFGunship02, Building.TundranAntiAirTower04, 150) or IsInRange(Air_Vehicle.WFGunship03, Building.TundranAntiAirTower03, 150) or IsInRange(Air_Vehicle.WFGunship03, Building.TundranAntiAirTower04, 150)) then
      PhoneMessage(9, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      RunoncePhoneMessage02 = 1
    end
    if RunoncePhoneMessage04 == 0 and IsDead(Building.TundranGenerator01) == false and IsDead(Building.TundranGenerator02) == false and IsDead(Building.TundranGenerator03) == false and IsDead(Building.TundranGenerator04) == false and (1 <= NumItemsInArea(Map_Zone.UseGunshipsPhoneMessage, CombineFlags(flag.TYPE_INFANTRY, flag.TYPE_WFRONTIER), 1) or 1 <= NumItemsInArea(Map_Zone.UseGunshipsPhoneMessage, CombineFlags(flag.TYPE_GVEHICLE, flag.TYPE_WFRONTIER), 1)) then
      if Objective01 == 0 then
        PhoneMessage(82, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      else
        PhoneMessage(54, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      end
      RunoncePhoneMessage04 = 1
    end
    EndFrame()
    if RunoncePhoneMessage05 == 0 and Objective02 == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.PhoneMessageGorgisFlamers) and (IsDead(Troop.TundranFlamer01) == false or IsDead(Troop.TundranFlamer02) == false or IsDead(Troop.TundranFlamer03) == false or IsDead(Troop.TundranFlamer04) == false) then
      RunoncePhoneMessage05 = 1
      if TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false then
        PhoneMessage(37, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Happy, constant.PLAYER_ONE)
      else
        GoToArea(Troop.TundranFlamer01, 7, -419, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.TundranFlamer02, 7, -419, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.TundranFlamer03, 7, -419, 20, 0, constant.ORDER_NORMAL)
        GoToArea(Troop.TundranFlamer04, 7, -419, 20, 0, constant.ORDER_NORMAL)
        PhoneMessage(59, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      end
    end
    EndFrame()
    if RunoncePhoneMessage10 == 0 and Objective02 == 1 and IsDead(Troop.TundranFlamer01) and IsDead(Troop.TundranFlamer02) and IsDead(Troop.TundranFlamer03) and IsDead(Troop.TundranFlamer04) and (IsDead(Troop.TundranChainVet01) == false or IsDead(Troop.TundranChainVet02) == false or IsDead(Troop.TundranChainVet03) == false or IsDead(Troop.TundranChainVet04) == false) then
      GoToArea(Troop.TundranChainVet01, 7, -419, 20, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranChainVet02, 7, -419, 20, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranChainVet03, 7, -419, 20, constant.ORDER_NORMAL)
      GoToArea(Troop.TundranChainVet04, 7, -419, 20, constant.ORDER_NORMAL)
      PhoneMessage(60, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      RunoncePhoneMessage10 = 1
    end
    EndFrame()
    if RunoncePhoneMessage07 == 0 and Objective02 == 1 and airbase == 2 and CheckCapturePoint(Capture_Point.AirbaseCapturePoint, constant.ARMY_TUNDRAN, 11, 10, constant.CAPTUREPOINTFLAG_LOWERING) then
      PhoneMessage(56, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      RunoncePhoneMessage07 = 1
    end
    EndFrame()
    if RunoncePhoneMessage08 == 0 and Objective02 == 1 and GetState(Capture_Point.AirbaseCapturePoint) == flag.TYPE_TUNDRAN and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MissionBoundary12) then
      PhoneMessage(27, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      RunoncePhoneMessage08 = 1
    end
    EndFrame()
    if RunoncePhoneMessage12 == 0 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.PhoneMessageDestroyFrigates) and (IsDead(Ground_Vehicle.WFArtillery01) == false or IsDead(Ground_Vehicle.WFArtillery02) == false or IsDead(Ground_Vehicle.WFArtillery03) == false) then
      PhoneMessage(69, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      RunoncePhoneMessage12 = 1
      DebugOut("RunoncePhoneMessage12 = 1 - Phone Message 69")
    end
    EndFrame()
    if gunshiprevive01 == 0 and Objective01 == 0 and IsReadyToRevive(Air_Vehicle.TundranBomber01) and IsReadyToRevive(Air_Vehicle.TundranGunship06) and (IsDead(Troop.WFAAVet05) == false or IsDead(Troop.WFAAVet06) == false or IsDead(Troop.WFAAVet07) == false or IsDead(Troop.WFAAVet08) == false) then
      revivecounter01 = GetTime()
      gunshiprevive01 = 1
      DebugOut("*PhoneMessages* - 1. The Gunships are ready to revive.")
    end
    if gunshiprevive01 == 1 and GetTime() > revivecounter01 + 30 then
      if IsDead(Water_Vehicle.TFrigate01) and IsDead(Water_Vehicle.TFrigate02) then
        gunshiprevive01 = 2
      else
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranBomber01, -235, -428, 160, 20)
        ReviveFullUnitCarrier(flag.TYPE_TUNDRAN, flag.GTYPE_GRUNT, Air_Vehicle.TundranGunship06, -235, -428, 160, 20)
        DebugOut("*PhoneMessages* - 2. Reviving the Gunships after 30 seconds.")
        if IsDead(Ground_Vehicle.WFArtillery01) == false then
          GoToArea(Air_Vehicle.TundranBomber01, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Air_Vehicle.TundranGunship06, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        elseif IsDead(Ground_Vehicle.WFArtillery02) == false then
          GoToArea(Air_Vehicle.TundranBomber01, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Air_Vehicle.TundranGunship06, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        elseif IsDead(Ground_Vehicle.WFArtillery03) == false then
          GoToArea(Air_Vehicle.TundranBomber01, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
          GoToArea(Air_Vehicle.TundranGunship06, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        elseif IsDead(Ground_Vehicle.WFArtillery01) and IsDead(Ground_Vehicle.WFArtillery02) and IsDead(Ground_Vehicle.WFArtillery03) then
          AttackTarget(Air_Vehicle.TundranBomber01, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
          AttackTarget(Air_Vehicle.TundranGunship06, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
        end
        PhoneMessage(53, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
        gunshiprevive01 = 0
      end
    end
    if RunoncePhoneMessage15 == 0 and Objective02 == 1 and (IsInArea(Air_Vehicle.TundranGunship01, Map_Zone.PhoneMessageGunshipsIncoming) or IsInArea(Air_Vehicle.TundranGunship02, Map_Zone.PhoneMessageGunshipsIncoming)) and (IsDead(Troop.WFAAVet05) == false or IsDead(Troop.WFAAVet06) == false or IsDead(Troop.WFAAVet07) == false or IsDead(Troop.WFAAVet08) == false) then
      PhoneMessage(28, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      RunoncePhoneMessage15 = 1
    end
    EndFrame()
    if RunoncePhoneMessage16 == 0 and IsDead(Building.TMachineGunNest06) == false and IsDead(Building.TMachineGunNest07) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.TargetsIdentified) then
      PhoneMessage(76, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      tutorialcounter = GetTime()
      RunoncePhoneMessage16 = 1
    end
    if RunoncePhoneMessage16 == 1 and Objective01 == 0 and GetTime() > tutorialcounter + 10 then
      if IsDead(Water_Vehicle.TFrigate01) == false and IsDead(Water_Vehicle.TFrigate02) == false then
        PhoneMessage(35, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      end
      RunoncePhoneMessage16 = 2
      DebugOut("RunoncePhoneMessage16 = 1 - Phone Message 76")
    end
    EndFrame()
    if RunoncePhoneMessage17 == 0 and Objective01 == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.PhoneMessageXylvanians) then
      PhoneMessageWithObjective(20, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      RunoncePhoneMessage17 = 1
      DebugOut("RunoncePhoneMessage17 = 1 - Phone Message 20")
    end
    EndFrame()
    if RunoncePhoneMessage18 == 0 and Objective01 == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.HostileArea) then
      PhoneMessage(79, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      RunoncePhoneMessage18 = 1
      DebugOut("RunoncePhoneMessage18 = 1 - Phone Message 79")
    end
    EndFrame()
    if RunoncePhoneMessage19 == 0 and Objective01 == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.PhoneMessageRockFall) then
      RunoncePhoneMessage19 = 1
      SetObjectiveData(Objective.FreePowsInTheXsylvanianDigSite, constant.OBJECTIVE_DATA_VISIBLE, 1)
      SetObjectiveData(Objective_Marker.FreePowsInTheXsylvanianDigSite, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      if IsDead(Building.Rockfall) == false then
        ClearMessageQueue()
        PhoneMessage(86, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      end
    end
    EndFrame()
    if RunonceMapZoneEventTriggers02 == 0 and Objective02 == 1 and 8 <= NumItemsInArea(Map_Zone.AirbaseGunshipsAttack, flag.TYPE_WFRONTIER) then
      AttackTarget(Air_Vehicle.TundranGunship01, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.TundranGunship02, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.TundranGunship03, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      DebugOut("*MapZoneEventTriggers* - 6. The player is near the Airbase. Sending the Gunships to attack the player")
      RunonceMapZoneEventTriggers02 = 1
    end
    EndFrame()
    if RunonceMapZoneEventTriggers03 == 0 and Objective02 == 1 and IsDead(Troop.TundranBazookaVet03) and IsDead(Troop.TundranBazookaVet04) and IsDead(Troop.TundranBazookaVet06) and IsDead(Troop.TundranBazookaVet07) and 1 <= NumItemsInArea(Map_Zone.GeneratorGunshipsAttack, flag.TYPE_WFRONTIER) then
      AttackTarget(Air_Vehicle.TundranGunship01, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.TundranGunship02, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      RunonceMapZoneEventTriggers03 = 1
    end
    EndFrame()
    if RunonceMapZoneEventTriggers07 == 0 and Objective02 == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.TundranAirTransportGunshipsAttack) then
      RunonceMapZoneEventTriggers07 = 1
      if IsDead(Ground_Vehicle.WFArtillery01) == false then
        GoToArea(Air_Vehicle.TundranGunship04, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        GoToArea(Air_Vehicle.TundranGunship05, GetObjectXPosition(Ground_Vehicle.WFArtillery01), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
      elseif IsDead(Ground_Vehicle.WFArtillery02) == false then
        GoToArea(Air_Vehicle.TundranGunship04, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        GoToArea(Air_Vehicle.TundranGunship05, GetObjectXPosition(Ground_Vehicle.WFArtillery02), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
      elseif IsDead(Ground_Vehicle.WFArtillery03) == false then
        GoToArea(Air_Vehicle.TundranGunship04, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
        GoToArea(Air_Vehicle.TundranGunship05, GetObjectXPosition(Ground_Vehicle.WFArtillery03), GetObjectZPosition(Ground_Vehicle.WFArtillery01), 10, 0, constant.ORDER_NORMAL)
      elseif IsDead(Ground_Vehicle.WFArtillery01) and IsDead(Ground_Vehicle.WFArtillery02) and IsDead(Ground_Vehicle.WFArtillery03) then
        AttackTarget(Air_Vehicle.TundranGunship04, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
        AttackTarget(Air_Vehicle.TundranGunship05, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      end
    end
    EndFrame()
    if RunonceMapZoneEventTriggers09 == 0 and Objective02 == 1 and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.AirbaseGunshipsAttack02) then
      AttackTarget(Air_Vehicle.TundranGunship01, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.TundranGunship02, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      AttackTarget(Air_Vehicle.TundranGunship03, GetPlayerUnit(constant.PLAYER_ONE), constant.ORDER_NORMAL)
      RunonceMapZoneEventTriggers09 = 1
    end
    EndFrame()
    if xbarrel01 == 0 and IsDead(Building.XBarrel01) then
      Kill(Destroyable_Object.Entity210107267)
      xbarrel01 = 1
    end
    if xbarrel02 == 0 and IsDead(Building.XBarrel02) then
      Kill(Destroyable_Object.Entity270010664)
      xbarrel02 = 1
    end
    if xbarrel03 == 0 and IsDead(Building.XBarrel03) then
      Kill(Destroyable_Object.Entity210107265)
      xbarrel03 = 1
    end
    if xbarrel04 == 0 and IsDead(Building.XBarrel04) then
      Kill(Destroyable_Object.Entity210107293)
      xbarrel04 = 1
    end
    if RunoncePhoneMessage09 == 0 and airbase == 2 and airbasecounter == 1 and IsDead(Ground_Vehicle.TundranHeavyTank01) and IsDead(Ground_Vehicle.TundranHeavyTank02) and IsDead(Troop.TundranFlamer05) and IsDead(Troop.TundranFlamer06) and IsDead(Troop.TundranFlamer07) and IsDead(Troop.TundranFlamer08) then
      RunoncePhoneMessage09 = 1
      ClearMessageQueue()
      PhoneMessage(58, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Happy, constant.PLAYER_ONE)
    end
    EndFrame()
    if RunoncePhoneMessage14 == 0 and Objective01 == 1 and Objective02 == 1 and (0 < NumItemsInArea(Map_Zone.RespawnZone02, flag.TYPE_WFRONTIER) or 0 < NumItemsInArea(Map_Zone.RespawnZone03, flag.TYPE_WFRONTIER)) then
      Spawn(Troop.TundranFlamer05)
      Spawn(Troop.TundranFlamer06)
      Spawn(Troop.TundranFlamer07)
      Spawn(Troop.TundranFlamer08)
      Spawn(Ground_Vehicle.TundranHeavyTank01)
      Spawn(Ground_Vehicle.TundranHeavyTank02)
      Spawn(Air_Vehicle.TundranAirTransport01)
      Spawn(Air_Vehicle.TundranAirTransport02)
      Spawn(Air_Vehicle.TundranAirTransport03)
      Spawn(Air_Vehicle.TundranAirTransport04)
      Spawn(Building.TundranAntiAirTower12)
      Spawn(Building.TundranAntiAirTower13)
      RunoncePhoneMessage14 = 1
    end
    if RunonceMapZoneEventTriggers10 == 0 and Objective01 == 1 and Objective02 == 1 and pow02 == 0 and 1 <= NumItemsInArea(Map_Zone.ForgottenPOWs, flag.TYPE_WFRONTIER) then
      PhoneMessage(46, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Young_Herman_Sad, constant.PLAYER_ONE)
      RunonceMapZoneEventTriggers10 = 1
    end
    EndFrame()
  end
end
