function Anglo_MG_Tower_Grunts(owner)
  local killme = owner
  repeat
    EndFrame()
  until wave == 1
  WaitFor(10)
  repeat
    if GetPlayerUnit(constant.PLAYER_ONE) ~= owner and IsPassengerInUnit(owner) == false then
      DebugOut("Anglo Grunt", owner, "has left his MG TOWER")
      if NumPassengersInUnit(Building.AI_Tower_1) == 0 and owner == Troop.AI_Grunt_4 then
        SetActive(owner, constant.INACTIVE)
        DebugOut("Sending Anglo Grunt", owner, "to AI TOWER 1")
        EnterVehicle(owner, Building.AI_Tower_1, constant.ORDER_FORCED)
      else
        if NumPassengersInUnit(Building.AI_Tower_2) == 0 and owner == Troop.AI_Grunt_5 then
          SetActive(owner, constant.INACTIVE)
          DebugOut("Sending Anglo Grunt", owner, "to AI TOWER 2")
          EnterVehicle(owner, Building.AI_Tower_2, constant.ORDER_FORCED)
        else
        end
      end
      repeat
        EndFrame()
      until IsPassengerInUnit(owner)
      SetActive(owner, constant.ACTIVE)
      DebugOut("Anglo Grunt", owner, "has occupied an MG TOWER")
    else
      EndFrame()
    end
  until subcutscene == 1 or IsDead(owner)
  repeat
    EndFrame()
  until subcutscene == 2
  if IsDead(owner) == false then
    repeat
      if GetPlayerUnit(constant.PLAYER_ONE) ~= owner and IsPassengerInUnit(owner) == false then
        DebugOut("Anglo Grunt", owner, "has left his MG TOWER")
        if NumPassengersInUnit(Building.AI_Tower_1) == 0 and owner == Troop.AI_Grunt_4 then
          SetActive(owner, constant.INACTIVE)
          DebugOut("Sending Anglo Grunt", owner, "to AI TOWER 1")
          EnterVehicle(owner, Building.AI_Tower_1, constant.ORDER_FORCED)
        else
          if NumPassengersInUnit(Building.AI_Tower_2) == 0 and owner == Troop.AI_Grunt_5 then
            SetActive(owner, constant.INACTIVE)
            DebugOut("Sending Anglo Grunt", owner, "to AI TOWER 2")
            EnterVehicle(owner, Building.AI_Tower_2, constant.ORDER_FORCED)
          else
          end
        end
        repeat
          EndFrame()
        until IsPassengerInUnit(owner)
        SetActive(owner, constant.ACTIVE)
        DebugOut("Anglo Grunt", owner, "has occupied an MG TOWER")
      else
        EndFrame()
      end
    until wave == 5 or IsDead(owner) or mid == 1
  end
  Kill(killme)
end
