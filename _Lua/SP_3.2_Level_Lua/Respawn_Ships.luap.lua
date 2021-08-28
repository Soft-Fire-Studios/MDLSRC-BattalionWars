function Respawn_Ships(owner)
  SetTickScriptWhenDead(owner)
  repeat
    EndFrame()
  until wave > 0
  DebugOut("The ship", owner, "is now starting its respawn loop")
  repeat
    if missionend == 1 then
      return
    end
    if IsReadyToRevive(owner) then
      WaitFor(23)
      DebugOut("Unit", owner, "is ready to be revived")
      ReviveDeadUnit(owner, 460, GetRandom(250, 390), 270, 75)
      DebugOut("Unit", owner, "Is revived")
      if 0 < GetNumSeatsFree(owner) then
        repeat
          SpawnUnitInCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, owner)
          EndFrame()
        until 0 < GetNumSeatsFree(owner)
      end
      DebugOut("Unit is now full of passengers")
      EndFrame()
      if GetSpawnMode() == eModeAction.Follow and GetPlayerUnit(constant.PLAYER_ONE) ~= owner then
        FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), 12, 0)
      end
    end
    if missionend == 1 then
      return
    end
    EndFrame()
  until beach == 1
  DebugOut("Mission Ended, stopping revive for", owner)
  if IsReadyToRevive(owner) then
    DebugOut("Unit", owner, "is ready to be revived")
    ReviveDeadUnit(owner)
    DebugOut("Unit", owner, "Is revived")
    if 0 < GetNumSeatsFree(owner) then
      repeat
        EndFrame()
        SpawnUnitInCarrier(flag.TYPE_ANGLO, flag.GTYPE_GRUNT, owner)
      until 0 < GetNumSeatsFree(owner)
    end
  else
    SetHealthPercent(owner, 100)
  end
end
