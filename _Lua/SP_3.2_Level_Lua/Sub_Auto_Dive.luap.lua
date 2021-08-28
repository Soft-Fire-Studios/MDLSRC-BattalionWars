function Sub_Auto_Dive(owner)
  local counter = 0
  SetTickScriptWhenDead(owner)
  repeat
    EndFrame()
  until wave ~= 0
  DebugOut("The sub", owner, "is now starting its respawn loop")
  repeat
    if missionend == 1 then
      return
    end
    if IsReadyToRevive(owner) then
      if owner == Water_Vehicle.AI_Sub_1 then
        repeat
          counter = counter + 1
          WaitFor(1)
        until counter == 18 or AllPlayerUnitsDead(constant.PLAYER_ONE)
      else
        repeat
          counter = counter + 1
          WaitFor(1)
        until counter == 18
      end
      counter = 0
      DebugOut("Unit", owner, "is ready to be revived")
      ReviveDeadUnit(owner, 460, GetRandom(250, 390), 270, 75)
      DebugOut("Unit", owner, "Is revived")
      EndFrame()
      if GetSpawnMode() == eModeAction.Follow and GetPlayerUnit(constant.PLAYER_ONE) ~= owner then
        FollowUnit(owner, GetPlayerUnit(constant.PLAYER_ONE), 12, 0)
      end
    else
      EndFrame()
    end
  until missionend == 1 or landing == 1
  DebugOut("Mission Ended, stopping revive for", owner)
end
