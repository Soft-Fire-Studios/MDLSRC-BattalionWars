function Gunships(owner)
  SetTickScriptWhenDead(owner, 1)
  repeat
    EndFrame()
  until cutscenefinished == 1
  while true do
    if IsDead(owner) then
      DebugOut("Chopper", owner, "Has been destroyed.  Waiting to revive....")
      WaitFor(15)
      if chopperstatus == 2 then
        repeat
          EndFrame()
        until chopperstatus ~= 2
      end
      if chopperstatus == 0 then
        repeat
          EndFrame()
        until IsReadyToRevive(owner)
        DebugOut("Chopper", owner, "is ready to be revived")
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, owner, -727, 83, 0, 5)
        DebugOut("Revived Chopper", owner)
        WaitFor(10)
        if owner == Air_Vehicle.XGunship1 then
          FollowWaypoint(owner, Waypoint.Gunship1, 0, 0, constant.ORDER_NORMAL)
        else
          FollowWaypoint(owner, Waypoint.Gunship2, 0, 0, constant.ORDER_NORMAL)
        end
        DebugOut("Chopper status is", chopperstatus, " - Chopper", owner, "sent to fuel refinery")
      end
      if chopperstatus == 1 then
        repeat
          EndFrame()
        until IsReadyToRevive(owner)
        DebugOut("Chopper", owner, "is ready to be revived")
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, owner, -727, 83, 0, 5)
        DebugOut("Revived Chopper", owner)
        WaitFor(10)
        if owner == Air_Vehicle.XGunship1 then
          GoToArea(owner, 430, -60, 5, constant.ORDER_NORMAL)
        else
          GoToArea(owner, 430, -60, 5, constant.ORDER_NORMAL)
        end
        DebugOut("Chopper status is", chopperstatus, " - Chopper", owner, "sent to communications tower")
      end
      if chopperstatus == 3 then
        repeat
          EndFrame()
        until IsReadyToRevive(owner)
        DebugOut("Chopper", owner, "is ready to be revived")
        ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, owner, -197, -777, 0, 5)
        DebugOut("Revived Chopper", owner)
        WaitFor(60)
        if owner == Air_Vehicle.XGunship1 then
          GoToArea(owner, -81, -475, 5, constant.ORDER_NORMAL)
        else
          GoToArea(owner, -140, -445, 5, constant.ORDER_NORMAL)
        end
        DebugOut("Chopper status is", chopperstatus, " - Chopper", owner, "sent to extraction point")
        break
      end
      EndFrame()
      EndFrame()
    end
    EndFrame()
  end
  DebugOut("Chopper", owner, "script has been terminated")
end
