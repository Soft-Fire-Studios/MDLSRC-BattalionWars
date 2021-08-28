function ObjectiveSavingPrivateBryan(owner)
  SetActive(Troop.Bryan, constant.INACTIVE)
  local message01 = 0
  local message02 = 1
  local message03 = 0
  local bryanswim01 = 0
  GoToArea(Troop.Bryan, -80, 80, 2)
  while missionend == 0 do
    if message03 == 0 and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == true and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.Bryan, 10) then
      SetActive(Troop.Bryan, constant.ACTIVE)
      SetObjectiveData(Objective_Marker.SavePrivateBryanMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.SavePrivateBryan, constant.OBJECTIVE_DATA_VISIBLE, 1)
      PhoneMessageWithObjective(96, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      message03 = 1
      DebugOut("1")
    end
    if TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.Bryan, 28) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) then
      ClearMessageQueue()
      SetActive(Troop.Bryan, constant.ACTIVE)
      SetObjectiveData(Objective_Marker.SavePrivateBryanMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
      SetObjectiveData(Objective.SavePrivateBryan, constant.OBJECTIVE_DATA_VISIBLE, 1)
      if 0 < wf then
        PhoneMessageWithObjective(97, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
      end
      if wf == 0 then
        SetObjectiveData(Objective_Marker.WesternFrontier, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
        PhoneMessageWithObjective(113, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE, false, constant.NEW_SECONDARY_OBJECTIVE)
        PhoneMessage(114, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
      end
      bryan = 1
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
      SetObjectiveData(Objective.WesternFrontier00, constant.OBJECTIVE_DATA_VISIBLE, 0)
      wfobjective01 = 0
      wfobjective02 = 0
      wfobjective03 = 0
      wfobjective04 = 0
      wfobjective05 = 0
      wfobjective06 = 0
      wfobjective07 = 0
      wfobjective08 = 0
      wfobjective09 = 0
      wfobjective10 = 0
      wfobjective11 = 0
      wfobjective12 = 0
      DebugOut("2")
    else
      EndFrame()
      while missionend == 0 do
        if IsDead(Troop.Bryan) then
          ClearMessageQueue()
          SetObjectiveData(Objective_Marker.SavePrivateBryanMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.SavePrivateBryan, constant.OBJECTIVE_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.SavePrivateBryanFailed, constant.OBJECTIVE_DATA_VISIBLE, 1)
          SetObjectiveData(Objective.SavePrivateBryanFailed, constant.OBJECTIVE_DATA_STATE, 1)
          PhoneMessage(117, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
          DebugOut("3")
        elseif IsDead(Troop.Bryan) == false and IsInArea(Troop.Bryan, Map_Zone.Mines) == false then
          bryancomplete = 1
          SetObjectiveData(Objective_Marker.SavePrivateBryanMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
          SetObjectiveData(Objective.SavePrivateBryan, constant.OBJECTIVE_DATA_STATE, 1)
          PhoneMessageWithObjective(25, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Happy, constant.PLAYER_ONE, false, constant.SECONDARY_OBJECTIVE_COMPLETE)
          TechniqueObjectivesCompleted = TechniqueObjectivesCompleted + 1
          DebugOut("4")
        else
          EndFrame()
          if message02 == 0 and IsDead(Troop.Bryan) == false and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false and IsInRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.Bryan, 25) then
            PhoneMessage(74, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
            SetActive(Troop.Bryan, constant.ACTIVE)
            FollowUnit(Troop.Bryan, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_FORCED)
            message02 = 1
            message01 = 0
            DebugOut("5")
          end
          EndFrame()
          if TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false and GetRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.Bryan) < 49 then
            FollowUnit(Troop.Bryan, GetPlayerUnit(constant.PLAYER_ONE), 5, 0, constant.ORDER_FORCED)
            DebugOut("6")
          end
          EndFrame()
          if message01 == 0 and IsDead(Troop.Bryan) == false and GetRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.Bryan) > 49 and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) == false then
            ClearMessageQueue()
            GoToArea(Troop.Bryan, -80, 80, 2, 0, constant.ORDER_FORCED)
            PhoneMessage(115, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
            message01 = 1
            message02 = 0
            DebugOut("7")
          end
          EndFrame()
          if message01 == 0 and IsDead(Troop.Bryan) == false and TestFlags(GetPlayerUnit(constant.PLAYER_ONE), flag.GTYPE_GUNSHIP, constant.GTYPE) == false and GetRange(GetPlayerUnit(constant.PLAYER_ONE), Troop.Bryan) > 49 then
            ClearMessageQueue()
            GoToArea(Troop.Bryan, -80, 80, 2, 0, constant.ORDER_FORCED)
            PhoneMessage(115, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_ONE)
            message01 = 1
            message02 = 0
            DebugOut("8")
          end
          if bryanswim01 == 0 and GetMovementState(Troop.Bryan) == constant.MOVEMENT_STATE_SWIMMING then
            Kill(Troop.Bryan)
            bryanswim01 = 1
            DebugOut("9")
          end
          WaitFor(0.2)
          EndFrame()
          while missionend == 0 do
            while not IsDead(Troop.Bryan) do
              if bryan == 1 then
                if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) == false then
                  FollowUnit(Troop.Bryan, GetPlayerUnit(), -1, constant.ORDER_NORMAL)
                  WaitFor(5)
                  DebugOut("10")
                elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MineZoneWarning01) then
                  GoToArea(Troop.Bryan, 99, 47, 10, 0, constant.ORDER_FORCED)
                  DebugOut("11")
                  repeat
                    WaitFor(0.5)
                  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) == false
                elseif IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) and IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MineZoneWarning02) then
                  GoToArea(Troop.Bryan, -233, -62, 10, 0, constant.ORDER_FORCED)
                  DebugOut("12")
                  repeat
                    WaitFor(0.5)
                  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mines) == false
                end
                DebugOut("13")
              end
              EndFrame()
            end
            if IsDead(Troop.Bryan) then
              break
            end
            EndFrame()
          end
        end
      end
    end
  end
end
