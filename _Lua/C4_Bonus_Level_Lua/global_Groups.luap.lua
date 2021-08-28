function global_Groups(owner)
  group = MakeLibrary()
  function AttackEachOther(t1, t2)
    AttackTarget(t1, t2)
    AttackTarget(t2, t1)
  end
  function GoToXZ(id, x, z, force)
    while not IsInArea(id, x, z, 10) do
      GoToArea(id, x, z, 5, nil, force)
      WaitFor(2)
    end
  end
  function PercentChance(percent)
    if GetRandom(1, 100) >= 100 - percent then
      return true
    else
      return false
    end
  end
  function CrappyRounding(float)
    if float >= 0 and float <= 1 then
      return 1
    end
    if float >= 1 and float <= 2 then
      return 2
    end
    if float >= 2 and float <= 3 then
      return 3
    end
    if float >= 3 and float <= 4 then
      return 4
    end
    if float >= 4 and float <= 5 then
      return 5
    end
    if float >= 5 and float <= 6 then
      return 6
    end
    if float >= 6 and float <= 7 then
      return 7
    end
    if float >= 7 and float <= 8 then
      return 8
    end
    if float >= 8 and float <= 9 then
      return 9
    end
    if float >= 9 and float <= 10 then
      return 10
    end
    if float >= 10 and float <= 11 then
      return 11
    end
    if float >= 11 and float <= 12 then
      return 12
    end
    if float >= 12 and float <= 13 then
      return 13
    end
    if float >= 13 and float <= 14 then
      return 14
    end
    if float >= 14 and float <= 15 then
      return 15
    end
    if float >= 15 and float <= 16 then
      return 16
    end
    if float >= 16 and float <= 17 then
      return 17
    end
    if float >= 17 and float <= 18 then
      return 18
    end
    if float >= 18 and float <= 19 then
      return 19
    end
  end
  function Percentage(percent, count, total)
    if not percent then
      return count, count / total * 100, total
    else
      if total == 0 then
        return false
      end
      if percent <= 0 then
        if count == 0 then
          return true
        end
      elseif count >= percent / 100 * total then
        return true
      end
      return false
    end
  end
  function group.Add(group, id)
    AddToGroup(group, id)
  end
  function group.GetTargeted(group)
    for i = 1, GetNumMatchingInGroup(group) do
      if GetTargetedObject() == GetGroupMember(group, i) then
        return true, GetGroupMember(group, i)
      end
    end
    return false
  end
  function group.Spawn(group, option)
    for i = 1, GetNumMatchingInGroup(group) do
      if option then
        Spawn(GetGroupMember(group, i))
      else
        Despawn(GetGroupMember(group, i))
      end
    end
  end
  function group.SetActive(group, state, weapon)
    for i = 1, GetNumMatchingInGroup(group) do
      SetActive(GetGroupMember(group, i), state, weapon)
    end
  end
  function group.Teleport(group, x, z, range)
    local _range = 2
    if range then
      _range = range
    end
    for i = 1, GetNumMatchingInGroup(group) do
      local tp_x = GetRandom(x - _range, x + _range)
      local tp_z = GetRandom(z - _range, z + _range)
      Teleport(GetGroupMember(group, i), tp_x, tp_z, 0, 10)
    end
  end
  function group.GoToArea(group, x, z, forced)
    for i = 1, GetNumMatchingInGroup(group) do
      GoToArea(GetGroupMember(group, i), x, z, 10, nil, forced)
    end
  end
  function group.ScatterInArea(group, x, z, s_x, s_z, forced)
    for i = 1, GetNumMatchingInGroup(group) do
      GoToArea(GetGroupMember(group, i), GetRandom(x - s_x, x + s_x), GetRandom(z - s_z, z + s_z), 10, nil, forced)
    end
  end
  function group.EnterVehicle(group, target)
    for i = 1, GetNumMatchingInGroup(group) do
      if GetGroupMember(group, i) == target then
      else
        EnterVehicle(GetGroupMember(group, i), target)
      end
    end
  end
  function group.SetHealthPercent(group, percent)
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) then
        SetHealthPercent(GetGroupMember(group, i), percent)
      end
    end
  end
  function group.Kill(group)
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) then
        Kill(GetGroupMember(group, i))
      end
    end
  end
  function group.SetUnitAI(group, style, data)
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) then
        SetUnitAI(GetGroupMember(group, i), style, data)
      end
    end
  end
  function group.NumDead(group, percent)
    local count = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if IsDead(GetGroupMember(group, i)) then
        count = count + 1
      end
    end
    return Percentage(percent, count, GetNumMatchingInGroup(group))
  end
  function group.NumAlive(group, percent)
    local count = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if IsDead(GetGroupMember(group, i)) then
        count = count + 1
      end
    end
    return Percentage(percent, GetNumMatchingInGroup(group) - count, GetNumMatchingInGroup(group))
  end
  function group.NumInArea(group, x, z, range, percent)
    local total = GetNumMatchingInGroup(group)
    local count = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if IsDead(GetGroupMember(group, i)) then
        total = total - 1
      elseif IsInArea(GetGroupMember(group, i), x, z, range) then
        count = count + 1
      end
    end
    return Percentage(percent, count, total)
  end
  function group.NumInZone(group, zone, percent)
    local total = GetNumMatchingInGroup(group)
    local count = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if IsDead(GetGroupMember(group, i)) then
        total = total - 1
      elseif IsInArea(GetGroupMember(group, i), zone) then
        count = count + 1
      end
    end
    return Percentage(percent, count, total)
  end
  function group.NumInContainer(group, target, percent)
    local total = GetNumMatchingInGroup(group)
    local count = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if IsDead(GetGroupMember(group, i)) then
        total = total - 1
      elseif GetGroupMember(group, i) == target or GetContainerOf(GetGroupMember(group, i)) == target then
        count = count + 1
      end
    end
    return Percentage(percent, count, total)
  end
  function group.NumInState(group, state, percent)
    local total = GetNumMatchingInGroup(group)
    local count = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if IsDead(GetGroupMember(group, i)) then
        total = total - 1
      elseif GetActionState(GetGroupMember(group, i)) == state then
        count = count + 1
      end
    end
    return Percentage(percent, count, total)
  end
  function group.FirstNotInContainer(group)
    for i = 1, GetNumMatchingInGroup(group) do
      local p = GetContainerOf(GetGroupMember(group, i))
      if p == constant.ID_NONE then
        return GetGroupMember(group, i)
      end
    end
    return 0
  end
  function group.FirstInZone(group, zone)
    for i = 1, GetNumMatchingInGroup(group) do
      if IsInArea(GetGroupMember(group, i), zone) and GetContainerOf(GetGroupMember(group, i)) == constant.ID_NONE then
        return GetGroupMember(group, i)
      end
    end
    return 0
  end
  function group.FirstInZoneAfterIndex(group, zone, index)
    local inzone = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) and IsInArea(GetGroupMember(group, i), zone) and GetContainerOf(GetGroupMember(group, i)) == constant.ID_NONE then
        if index <= inzone then
          return GetGroupMember(group, i)
        else
          inzone = inzone + 1
        end
      end
    end
    return 0
  end
  function group.FirstEmptyContainer(group)
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) then
        local p = GetUnitInSeat(GetGroupMember(group, i), 0)
        if p == constant.ID_NONE then
          return GetGroupMember(group, i)
        end
      end
    end
    return 0
  end
  function group.FirstContainerWithSeatsFree(group)
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) and GetNumSeatsFree(GetGroupMember(group, i)) > 0 then
        return GetGroupMember(group, i)
      end
    end
    return 0
  end
  function group.FirstNotDeadAfterIndex(group, index)
    local notdead = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) then
        if index <= notdead then
          return GetGroupMember(group, i)
        else
          notdead = notdead + 1
        end
      end
    end
    return 0
  end
  function group.FollowWaypoint(group, waypoint, offsetx, offsetz, forced)
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) then
        FollowWaypoint(GetGroupMember(group, i), waypoint, offsetx, offsetz, forced)
      end
    end
  end
  function group.AttackTarget(group, unit)
    if unit == 0 then
      return
    end
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) then
        AttackTarget(GetGroupMember(group, i), unit)
      end
    end
  end
  function group.RandomInZone(group, zone)
    local array = {}
    local count = 0
    for i = 1, GetNumMatchingInGroup(group) do
      if not IsDead(GetGroupMember(group, i)) and IsInArea(GetGroupMember(group, i), zone) and GetContainerOf(GetGroupMember(group, i)) == constant.ID_NONE then
        count = count + 1
        array[count] = GetGroupMember(group, i)
      end
    end
    local ret = array[CrappyRounding(GetRandom(1, count))]
    if ret and ret > 0 then
      return ret
    end
    return 0
  end
end
