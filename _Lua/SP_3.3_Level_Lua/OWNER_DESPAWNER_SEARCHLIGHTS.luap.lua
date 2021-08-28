function OWNER_DESPAWNER_SEARCHLIGHTS(owner)
  local groupmember = 1
  local IsSpawned = true
  local PlayerInRange = false
  local NumInGroup = 0
  SetTickScriptWhenDespawned(owner, true)
  repeat
    EndFrame()
    WaitFor(1)
  until cutsceneskipped == true
  WaitFor(1)
  repeat
    if IsDead(owner) == false then
      PlayerInRange = false
      groupmember = 1
      NumInGroup = GetNumMatchingInGroup(Unit_Group.AIarmy)
      repeat
        if IsDead(GetGroupMember(Unit_Group.AIarmy, groupmember)) == false and IsInRange(GetGroupMember(Unit_Group.AIarmy, groupmember), owner, 550) == true then
          PlayerInRange = true
          break
        end
        groupmember = groupmember + 1
        EndFrame()
      until NumInGroup < groupmember
      if PlayerInRange then
        if IsSpawned == false then
          Spawn(owner)
          IsSpawned = true
        end
        EndFrame()
      else
        if IsSpawned and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_ATTACK and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_IN_CAPTUREPOINT and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_GOING_TO_CAPTUREPOINT and GetPrimaryActionState(owner) ~= constant.ACTION_STATE_MOVING_TO_AREA then
          Despawn(owner, true)
          IsSpawned = false
        end
        EndFrame()
      end
      EndFrame()
      WaitFor(0.25)
    end
    EndFrame()
  until MidCutscene1start == true
  if IsDead(owner) == false then
    Spawn(owner)
  end
  EndFrame()
end
