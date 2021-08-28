function ForceRespawnWeakestUnit(owner)
  local revive01 = 0
  repeat
    EndFrame()
  until recondead == 1
  while missionend == 0 do
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and GetState(Capture_Point.WF_HQ_Capture_Point) ~= flag.TYPE_TUNDRAN and northernbarracks ~= 1 and southernbarracks ~= 1 then
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      repeat
        if revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_1) then
          ReviveDeadUnit(Troop.WF_Grunt_1, 450, -148, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_2) then
          ReviveDeadUnit(Troop.WF_Grunt_2, 450, -148, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_3) then
          ReviveDeadUnit(Troop.WF_Grunt_3, 450, -148, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_4) then
          ReviveDeadUnit(Troop.WF_Grunt_4, 450, -148, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_5) then
          ReviveDeadUnit(Troop.WF_Grunt_5, 450, -148, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_6) then
          ReviveDeadUnit(Troop.WF_Grunt_6, 450, -148, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_7) then
          ReviveDeadUnit(Troop.WF_Grunt_7, 450, -148, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_8) then
          ReviveDeadUnit(Troop.WF_Grunt_8, 450, -148, 0, 10)
          revive01 = 1
        end
        DebugOut("1. *ForceRespawnWeakestUnit* - Force Revived a Western Frontier Grunt")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
      SetInvulnerable(flag.TYPE_WFRONTIER, 0)
      revive01 = 0
    end
    EndFrame()
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and GetState(Capture_Point.WF_HQ_Capture_Point) ~= flag.TYPE_TUNDRAN and northernbarracks ~= 1 and southernbarracks == 1 then
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      repeat
        if revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_1) then
          ReviveDeadUnit(Troop.WF_Grunt_1, 515, 89, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_2) then
          ReviveDeadUnit(Troop.WF_Grunt_2, 515, 89, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_3) then
          ReviveDeadUnit(Troop.WF_Grunt_3, 515, 89, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_4) then
          ReviveDeadUnit(Troop.WF_Grunt_4, 515, 89, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_5) then
          ReviveDeadUnit(Troop.WF_Grunt_5, 515, 89, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_6) then
          ReviveDeadUnit(Troop.WF_Grunt_6, 515, 89, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_7) then
          ReviveDeadUnit(Troop.WF_Grunt_7, 515, 89, 0, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_8) then
          ReviveDeadUnit(Troop.WF_Grunt_8, 515, 89, 0, 10)
          revive01 = 1
        end
        DebugOut("2. *ForceRespawnWeakestUnit* - Force Revived a Western Frontier Grunt")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
      SetInvulnerable(flag.TYPE_WFRONTIER, 0)
      revive01 = 0
    end
    EndFrame()
    if AllPlayerUnitsDead(constant.PLAYER_ONE) and GetState(Capture_Point.WF_HQ_Capture_Point) ~= flag.TYPE_TUNDRAN and northernbarracks == 1 then
      SetInvulnerable(flag.TYPE_WFRONTIER, 1)
      repeat
        if revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_1) then
          ReviveDeadUnit(Troop.WF_Grunt_1, 403, 563, 20, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_2) then
          ReviveDeadUnit(Troop.WF_Grunt_2, 403, 563, 20, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_3) then
          ReviveDeadUnit(Troop.WF_Grunt_3, 403, 563, 20, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_4) then
          ReviveDeadUnit(Troop.WF_Grunt_4, 403, 563, 20, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_5) then
          ReviveDeadUnit(Troop.WF_Grunt_5, 403, 563, 20, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_6) then
          ReviveDeadUnit(Troop.WF_Grunt_6, 403, 563, 20, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_7) then
          ReviveDeadUnit(Troop.WF_Grunt_7, 403, 563, 20, 10)
          revive01 = 1
        elseif revive01 == 0 and IsReadyToRevive(Troop.WF_Grunt_8) then
          ReviveDeadUnit(Troop.WF_Grunt_8, 403, 563, 20, 10)
          revive01 = 1
        end
        DebugOut("3. *ForceRespawnWeakestUnit* - Force Revived a Western Frontier Grunt")
        EndFrame()
      until AllPlayerUnitsDead(constant.PLAYER_ONE) == false
      SetInvulnerable(flag.TYPE_WFRONTIER, 0)
      revive01 = 0
    end
    EndFrame()
  end
end
