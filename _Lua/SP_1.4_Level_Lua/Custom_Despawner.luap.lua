function Custom_Despawner(owner)
  local groupmember = 1
  local IsSpawned = true
  local PlayerInRange = false
  local NumInGroup = 0
  SetTickScriptWhenDespawned(owner, true)
  SetTickScriptWhenDead(owner, true)
  repeat
    EndFrame()
  until CutsceneIntroFinished == 2
  while true do
    if IsDead(owner) == false and PauseTimerActive == 0 and 0 < GetNumMatchingInGroup(Unit_Group.Player_Army) then
      PlayerInRange = false
      groupmember = 1
      NumInGroup = GetNumMatchingInGroup(Unit_Group.Player_Army)
      repeat
        if IsDead(GetGroupMember(Unit_Group.Player_Army, groupmember)) == false and IsInRange(GetGroupMember(Unit_Group.Player_Army, groupmember), owner, 425) == true then
          PlayerInRange = true
          break
        end
        groupmember = groupmember + 1
        EndFrame()
      until NumInGroup < groupmember or PlayerInRange == true
      if PlayerInRange == true then
        if IsSpawned == false then
          DebugOut("Unit", owner, "has been spawned")
          Spawn(owner)
          IsSpawned = true
        end
        EndFrame()
      elseif IsSpawned == true and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_ATTACK and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_IN_CAPTUREPOINT and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_GOING_TO_CAPTUREPOINT and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_MOVING_TO_AREA then
        DebugOut("Unit", owner, "has be despawned")
        Despawn(owner, true)
        IsSpawned = false
      end
      WaitFor(0.25)
    end
    EndFrame()
  end
end
