function C3M1_Reinforcements(owner)
  local AttackInfantryMessageDone = 0
  local FighterMessageDone = 0
  local TransportDespawned = 0
  local PinnedDoneMessageDone = 0
  Despawn(Troop.WFgruntTransport0001)
  Despawn(Troop.WFbazooka0003)
  Despawn(Troop.WFbazooka0004)
  Despawn(Air_Vehicle.WFgunship0002)
  Despawn(Air_Vehicle.WFgunship0003)
  Despawn(Ground_Vehicle.WFantiAirVehicle0001)
  Despawn(Ground_Vehicle.WFantiAirVehicle0002)
  while true do
    if 0 < GetPlayerUnit() and IsInArea(GetPlayerUnit(), Map_Zone.SendingReinforcements) and BattlestationMessageDone >= 1 and PinnedDoneMessageDone == 0 then
      PinnedDoneMessageDone = 1
      PhoneMessage(11, constant.ID_NONE, 0, 10, SpriteID.CO_WF_Betty_Sad)
    end
    if 0 < GetPlayerUnit() and GetPlayerUnit() ~= Air_Vehicle.WFgunship0001 and IsInArea(GetPlayerUnit(), Map_Zone.Reinforcements) and BattlestationMessageDone >= 1 and ReinforcementsReceived == 0 then
      DebugOut("Reinforcements")
      ReinforcementsReceived = 1
      PinnedDoneMessageDone = 1
      Spawn(Troop.WFgruntTransport0001)
      EnterVehicle(Troop.WFgruntTransport0001, Air_Vehicle.WFtransport0001, constant.ORDER_FORCED)
      if not IsDead(Ground_Vehicle.Xbattlestation0001) then
        SetObjectiveData(Objective.BattlestationSecond, constant.OBJECTIVE_DATA_VISIBLE, 1)
      end
      if FighterMessageDone == 0 and not IsDead(Air_Vehicle.Xfighter0001) then
        FighterMessageDone = 1
        PhoneMessage(38, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        PhoneMessage(58, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      end
      if FighterMessageDone == 0 and not IsDead(Air_Vehicle.Xfighter0002) then
        FighterMessageDone = 1
        PhoneMessage(38, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        PhoneMessage(58, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      end
      if FighterMessageDone == 0 and not IsDead(Air_Vehicle.Xfighter0003) then
        FighterMessageDone = 1
        PhoneMessage(38, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        PhoneMessage(58, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      end
      if FighterMessageDone == 0 and not IsDead(Air_Vehicle.Xfighter0004) then
        FighterMessageDone = 1
        PhoneMessage(38, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Happy)
        PhoneMessage(58, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Betty_Sad)
      end
      SetObjectiveData(Objective_Marker.Reinforcements, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 0)
      SetObjectiveData(Objective.Reinforcements, constant.OBJECTIVE_DATA_STATE, 1)
      SetHealthPercent(Troop.WFbazooka0003, 100)
      SetHealthPercent(Troop.WFbazooka0004, 100)
      SetActive(Troop.WFbazooka0003, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.WFbazooka0004, constant.ACTIVE, constant.ADJUST_WEAPON)
      GoToArea(Air_Vehicle.WFtransport0001, -165, -65, 10, 0, constant.ORDER_FORCED)
      WaitFor(3)
      SetHealthPercent(Ground_Vehicle.WFantiAirVehicle0001, 100)
      SetHealthPercent(Ground_Vehicle.WFantiAirVehicle0002, 100)
      SetActive(Ground_Vehicle.WFantiAirVehicle0001, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Ground_Vehicle.WFantiAirVehicle0002, constant.ACTIVE, constant.ADJUST_WEAPON)
      GoToArea(Air_Vehicle.WFtransport0001, -500, -770, 10, 0, constant.ORDER_FORCED)
      GoToArea(Troop.Xmortar0001, 130, -60, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xmortar0002, 135, -43, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xmissile0006, 110, -32, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xmortar0003, 195, -110, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xmortar0004, 190, -120, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xmissile0013, 220, -115, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xmissile0014, 86, -58, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xmissile0015, 103, -101, 10, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.Xmissile0016, 125, -122, 10, 0, constant.ORDER_NORMAL)
    end
    if IsInArea(Air_Vehicle.WFtransport0001, -500, -770, 50) and TransportDespawned == 0 then
      TransportDespawned = 1
      DebugOut("Transport will despawn")
      Despawn(Air_Vehicle.WFtransport0001)
    end
    EndFrame()
  end
end
