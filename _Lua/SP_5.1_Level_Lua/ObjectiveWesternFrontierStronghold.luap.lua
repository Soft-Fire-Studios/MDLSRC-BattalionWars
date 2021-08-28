function ObjectiveWesternFrontierStronghold(owner)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt01, true)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt02, true)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt03, true)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt04, true)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt05, true)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt06, true)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet01, true)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet02, true)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet03, true)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet04, true)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet05, true)
  local wftroop01 = 0
  local wftroop02 = 0
  local wftroop03 = 0
  local wftroop04 = 0
  local wftroop05 = 0
  local wftroop06 = 0
  local wftroop07 = 0
  local wftroop08 = 0
  local wftroop09 = 0
  local wftroop10 = 0
  local wftroop11 = 0
  local wftroop12 = 0
  repeat
    WaitFor(0.2)
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.SpawnWF)
  Spawn(Troop.WesternFrontierGrunt01)
  Spawn(Troop.WesternFrontierGrunt02)
  Spawn(Troop.WesternFrontierGrunt03)
  Spawn(Troop.WesternFrontierGrunt04)
  Spawn(Troop.WesternFrontierGrunt05)
  Spawn(Troop.WesternFrontierGrunt06)
  Spawn(Troop.WesternFrontierMortarVet01)
  Spawn(Troop.WesternFrontierMortarVet02)
  Spawn(Troop.WesternFrontierMortarVet03)
  Spawn(Troop.WesternFrontierMortarVet04)
  Spawn(Troop.WesternFrontierMortarVet05)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt01, false)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt02, false)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt03, false)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt04, false)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt05, false)
  SetUnitInvulnerable(Troop.WesternFrontierGrunt06, false)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet01, false)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet02, false)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet03, false)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet04, false)
  SetUnitInvulnerable(Troop.WesternFrontierMortarVet05, false)
  repeat
    WaitFor(0.2)
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.WesternFrontierAttackZone)
  if IsDead(Troop.XylvanianBazookaVet15) == false or IsDead(Troop.XylvanianBazookaVet16) == false or IsDead(Troop.XylvanianBazookaVet17) == false or IsDead(Troop.XylvanianBazookaVet18) == false or IsDead(Troop.XylvanianBazookaVet19) == false or IsDead(Ground_Vehicle.XylvanianLightTank03) == false or IsDead(Ground_Vehicle.XylvanianLightTank04) == false then
    if mausoleumobjective == 0 then
      Spawn(Troop.XylvanianBazookaVet15)
      Spawn(Troop.XylvanianBazookaVet16)
      Spawn(Troop.XylvanianBazookaVet17)
      Spawn(Troop.XylvanianBazookaVet18)
      Spawn(Troop.XylvanianBazookaVet19)
      Spawn(Ground_Vehicle.XylvanianLightTank03)
      Spawn(Ground_Vehicle.XylvanianLightTank04)
    end
    SetObjectiveData(Objective.LiaiseWithTheWF, constant.OBJECTIVE_DATA_VISIBLE, 0)
    if bryan == 0 then
      SetObjectiveData(Objective_Marker.WesternFrontier, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    if 0 < bryan then
      SetObjectiveData(Objective_Marker.WesternFrontier, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 1)
    end
    PhoneMessageWithObjective(79, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
    PhoneMessageWithObjective(80, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
    PhoneMessage(38, constant.ID_NONE, constant.ARMY_XYLVANIAN, 0, SpriteID.CO_X_Prison_Ubel_Happy, constant.PLAYER_ONE)
    PhoneMessage(39, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
    WaitFor(0.2)
    GoToArea(Ground_Vehicle.XylvanianLightTank03, 150, 315, 5, 0, constant.ORDER_FORCED)
    GoToArea(Ground_Vehicle.XylvanianLightTank04, 113, 284, 5, 0, constant.ORDER_FORCED)
    GoToArea(Troop.XylvanianBazookaVet15, 150, 315, 5, 0, constant.ORDER_FORCED)
    GoToArea(Troop.XylvanianBazookaVet16, 150, 315, 5, 0, constant.ORDER_FORCED)
    GoToArea(Troop.XylvanianBazookaVet17, 150, 315, 5, 0, constant.ORDER_FORCED)
    GoToArea(Troop.XylvanianBazookaVet18, 113, 284, 5, 0, constant.ORDER_FORCED)
    GoToArea(Troop.XylvanianBazookaVet19, 113, 284, 5, 0, constant.ORDER_FORCED)
    DebugOut("*ObjectiveWesternFrontierAttackScript* - The Xylvanians have gone to attack the Western Frontier base")
    while missionend == 0 do
      if wftroop01 == 0 and IsDead(Troop.WesternFrontierGrunt01) then
        wf = wf + 1
        wftroop01 = 1
      end
      if wftroop02 == 0 and IsDead(Troop.WesternFrontierGrunt02) then
        wf = wf + 1
        wftroop02 = 1
      end
      if wftroop03 == 0 and IsDead(Troop.WesternFrontierGrunt03) then
        wf = wf + 1
        wftroop03 = 1
      end
      if wftroop04 == 0 and IsDead(Troop.WesternFrontierGrunt04) then
        wf = wf + 1
        wftroop04 = 1
      end
      EndFrame()
      if wftroop05 == 0 and IsDead(Troop.WesternFrontierGrunt05) then
        wf = wf + 1
        wftroop05 = 1
      end
      if wftroop06 == 0 and IsDead(Troop.WesternFrontierGrunt06) then
        wf = wf + 1
        wftroop06 = 1
      end
      if wftroop07 == 0 and IsDead(Troop.WesternFrontierMortarVet01) then
        wf = wf + 1
        wftroop07 = 1
      end
      if wftroop08 == 0 and IsDead(Troop.WesternFrontierMortarVet02) then
        wf = wf + 1
        wftroop08 = 1
      end
      EndFrame()
      if wftroop09 == 0 and IsDead(Troop.WesternFrontierMortarVet03) then
        wf = wf + 1
        wftroop09 = 1
      end
      if wftroop10 == 0 and IsDead(Troop.WesternFrontierMortarVet04) then
        wf = wf + 1
        wftroop10 = 1
      end
      if wftroop11 == 0 and IsDead(Troop.WesternFrontierMortarVet05) then
        wf = wf + 1
        wftroop11 = 1
      end
      if wftroop12 == 0 and 0 < bryan and IsDead(Troop.Bryan) then
        wf = wf + 1
        wftroop12 = 1
      end
      EndFrame()
      if wfobjective01 == 0 and wf == 1 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective01 = 1
      end
      if wfobjective02 == 0 and wf == 2 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective02 = 1
      end
      EndFrame()
      if wfobjective03 == 0 and wf == 3 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective03 = 1
      end
      if wfobjective04 == 0 and wf == 4 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective04 = 1
      end
      EndFrame()
      if wfobjective05 == 0 and wf == 5 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective05 = 1
      end
      if wfobjective06 == 0 and wf == 6 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier05, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier05, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective06 = 1
      end
      EndFrame()
      if wfobjective07 == 0 and wf == 7 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier05, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier04, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier04, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan05, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan05, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective07 = 1
      end
      if wfobjective08 == 0 and wf == 8 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier05, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier04, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier03, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier03, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan05, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan04, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan04, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective08 = 1
      end
      EndFrame()
      if wfobjective09 == 0 and wf == 9 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier05, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier04, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier03, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier02, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier02, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan05, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan04, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan03, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan03, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective09 = 1
      end
      if wfobjective10 == 0 and wf == 10 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier05, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier04, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier03, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier02, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier01, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier01, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        if 0 < bryan then
          SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan05, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan04, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan03, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontierBryan02, constant.OBJECTIVE_DATA_VISIBLE, 1)
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontierBryan02, constant.OBJECTIVE_DATA_STATE, 1)
          end
        end
        wfobjective10 = 1
      end
      EndFrame()
      if wfobjective11 == 0 and wf == 11 then
        if bryan == 0 then
          SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier05, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier04, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier03, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier02, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.WesternFrontier01, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective_Marker.WesternFrontier, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          PhoneMessage(82, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
          PhoneMessage(83, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
          if follow == 0 then
            SetObjectiveData(Objective.WesternFrontierFailed, constant.OBJECTIVE_DATA_VISIBLE, 1)
            SetObjectiveData(Objective.WesternFrontierFailed, constant.OBJECTIVE_DATA_STATE, 1)
            DebugOut("*ObjectiveWesternFrontierAttackScript* - The Western Frontiers troops are all dead. OBJECTIVE FAILED")
          end
          if follow == 1 then
            SetObjectiveData(Objective.WesternFrontier00, constant.OBJECTIVE_DATA_VISIBLE, 1)
            SetObjectiveData(Objective.WesternFrontier00, constant.OBJECTIVE_DATA_STATE, 1)
            do break end
            if 0 < bryan then
              SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan05, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan04, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan03, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan02, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan01, constant.OBJECTIVE_DATA_VISIBLE, 1)
              if follow == 1 then
                SetObjectiveData(Objective.WesternFrontierBryan01, constant.OBJECTIVE_DATA_STATE, 1)
              end
            end
            wfobjective11 = 1
            if 0 < bryan and wf == 12 then
              SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan05, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan04, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan03, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan02, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective.WesternFrontierBryan01, constant.OBJECTIVE_DATA_VISIBLE, 0)
              SetObjectiveData(Objective_Marker.WesternFrontier, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
              PhoneMessage(84, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
              PhoneMessage(83, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
              if follow == 0 then
                SetObjectiveData(Objective.WesternFrontierFailed, constant.OBJECTIVE_DATA_VISIBLE, 1)
                SetObjectiveData(Objective.WesternFrontierFailed, constant.OBJECTIVE_DATA_STATE, 1)
                DebugOut("*ObjectiveWesternFrontierAttackScript* - The Western Frontiers troops are all dead. OBJECTIVE FAILED")
              end
              if follow == 1 then
                SetObjectiveData(Objective.WesternFrontierBryan00, constant.OBJECTIVE_DATA_VISIBLE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan00, constant.OBJECTIVE_DATA_STATE, 1)
              end
              follow = 1
              break
            end
            if wfobjective12 == 0 and IsDead(Ground_Vehicle.XylvanianLightTank03) and IsDead(Ground_Vehicle.XylvanianLightTank04) and IsDead(Troop.XylvanianBazookaVet15) and IsDead(Troop.XylvanianBazookaVet16) and IsDead(Troop.XylvanianBazookaVet17) and IsDead(Troop.XylvanianBazookaVet18) and IsDead(Troop.XylvanianBazookaVet19) and follow == 0 then
              if bryan == 0 then
                SetObjectiveData(Objective.WesternFrontier11, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier10, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier09, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier08, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier07, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier06, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier05, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier04, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier03, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier02, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier01, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontier00, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective_Marker.WesternFrontier, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
              end
              if 0 < bryan then
                SetObjectiveData(Objective.WesternFrontierBryan12, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan11, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan10, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan09, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan08, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan07, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan06, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan05, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan04, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan03, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan02, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan01, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective.WesternFrontierBryan00, constant.OBJECTIVE_DATA_STATE, 1)
                SetObjectiveData(Objective_Marker.WesternFrontier, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
              end
              SetObjectiveData(Objective.LiaiseWithTheWF, constant.OBJECTIVE_DATA_STATE, 1)
              PhoneMessageWithObjective(81, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
              TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
              follow = 1
              DebugOut("*ObjectiveWesternFrontierAttackScript* - The Western Frontiers are now following the player, how nice")
              wfobjective12 = 1
            end
            EndFrame()
          end
        end
      end
    end
  end
end
