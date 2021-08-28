function Anglo_Grunt_Var_Current_Counter(owner)
  local troop01 = 0
  local troop02 = 0
  local troop03 = 0
  local troop04 = 0
  local troop05 = 0
  local troop06 = 0
  local troop07 = 0
  local troop08 = 0
  local troop09 = 0
  local troop10 = 0
  local troop11 = 0
  local troop12 = 0
  current = 12
  repeat
    EndFrame()
  until beach == 2
  if trans1dead == 1 then
    local troop01 = 1
    local troop02 = 1
    local troop03 = 1
    local troop04 = 1
    local troop05 = 1
    local troop06 = 1
    current = 6
  elseif trans2dead == 1 then
    local troop07 = 1
    local troop08 = 1
    local troop09 = 1
    local troop10 = 1
    local troop11 = 1
    local troop12 = 1
    current = 6
  else
    if trans1dead == 1 and trans2dead == 1 then
      DebugOut("Both Transports Dead, ending script")
      return
    else
    end
  end
  repeat
    if troop01 == 0 and IsDead(Troop.AI_Grunt_10) then
      DebugOut("AI Grunt 10 is Dead")
      current = current - 1
      troop01 = 1
    end
    if troop02 == 0 and IsDead(Troop.AI_Grunt_11) then
      DebugOut("AI Grunt 11 is Dead")
      current = current - 1
      troop02 = 1
    end
    if troop03 == 0 and IsDead(Troop.AI_Grunt_12) then
      DebugOut("AI Grunt 12 is Dead")
      current = current - 1
      troop03 = 1
    end
    if troop04 == 0 and IsDead(Troop.AI_Grunt_13) then
      DebugOut("AI Grunt 13 is Dead")
      current = current - 1
      troop04 = 1
    end
    EndFrame()
    if troop05 == 0 and IsDead(Troop.AI_Grunt_14) then
      DebugOut("AI Grunt 14 is Dead")
      current = current - 1
      troop05 = 1
    end
    if troop06 == 0 and IsDead(Troop.AI_Grunt_15) then
      DebugOut("AI Grunt 15 is Dead")
      current = current - 1
      troop06 = 1
    end
    if troop07 == 0 and IsDead(Troop.AI_Grunt_16) then
      DebugOut("AI Grunt 16 is Dead")
      current = current - 1
      troop07 = 1
    end
    if troop08 == 0 and IsDead(Troop.AI_Grunt_17) then
      DebugOut("AI Grunt 17 is Dead")
      current = current - 1
      troop08 = 1
    end
    EndFrame()
    if troop09 == 0 and IsDead(Troop.AI_Grunt_18) then
      DebugOut("AI Grunt 18 is Dead")
      current = current - 1
      troop09 = 1
    end
    if troop10 == 0 and IsDead(Troop.AI_Grunt_19) then
      DebugOut("AI Grunt 19 is Dead")
      current = current - 1
      troop10 = 1
    end
    if troop11 == 0 and IsDead(Troop.AI_Grunt_20) then
      DebugOut("AI Grunt 20 is Dead")
      current = current - 1
      troop11 = 1
    end
    if troop12 == 0 and IsDead(Troop.AI_Grunt_21) then
      DebugOut("AI Grunt 21 is Dead")
      current = current - 1
      troop12 = 1
    end
    EndFrame()
  until current == 0
  DebugOut("Current is equal to", current)
end
