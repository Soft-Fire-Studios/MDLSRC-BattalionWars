function Gunships(owner)
  SetTickScriptWhenDead(owner, 1)
  repeat
    EndFrame()
  until startmission == 1
  while true do
    repeat
      EndFrame()
    until IsDead(owner) == false
    if GunshipPatrol == 1 then
      FollowWaypoint(owner, Waypoint.GunshipPatrol1, 0, 0, constant.ORDER_NORMAL)
      if owner == Air_Vehicle.XGunship1 then
        DebugOut("Sending GUNSHIP 1 to patrol path 1")
      else
        DebugOut("Sending GUNSHIP 2 to patrol path 1")
      end
    end
    if GunshipPatrol == 2 then
      if owner == Air_Vehicle.XGunship1 then
        DebugOut("Sending GUNSHIP 1 to patrol path 2")
      else
        DebugOut("Sending GUNSHIP 2 to patrol path 2")
      end
      FollowWaypoint(owner, Waypoint.GunshipPatrol2, 0, 0, constant.ORDER_NORMAL)
    end
    if GunshipPatrol == 3 then
      if owner == Air_Vehicle.XGunship1 then
        DebugOut("Sending GUNSHIP 1 to patrol path 3")
      else
        DebugOut("Sending GUNSHIP 2 to patrol path 3")
      end
      FollowWaypoint(owner, Waypoint.GunshipPatrol3, 0, 0, constant.ORDER_NORMAL)
    end
    repeat
      EndFrame()
    until IsDead(owner)
    if owner == Air_Vehicle.XGunship2 and GunshipPatrol == 3 then
      DebugOut("Land section started. GUNSHIP 2 is not needed. Removing...")
      return
    end
    if finishmission == 1 then
      DebugOut("Mission complete. Removing gunships...")
      return
    end
    if owner == Air_Vehicle.XGunship1 then
      DebugOut("GUNSHIP 1 has died, waiting to revive")
    else
      DebugOut("GUNSHIP 2, has died, waiting to revive")
    end
    if GunshipPatrol == 1 then
      WaitFor(30)
    elseif GunshipPatrol == 2 then
      WaitFor(30)
    elseif GunshipPatrol == 3 then
      WaitFor(50)
    end
    ReviveFullUnitCarrier(flag.TYPE_XYLVANIAN, flag.GTYPE_GRUNT, owner, -922, 278, 90, 20)
    if owner == Air_Vehicle.XGunship1 then
      DebugOut("Revived GUNSHIP 1")
    else
      DebugOut("Revived GUNSHIP 2")
    end
    EndFrame()
  end
end
