function RAT_Pickups(owner)
  local Tent01Dead = 0
  local Tent02Dead = 0
  local Tent03Dead = 0
  local Tent04Dead = 0
  local Tent05Dead = 0
  local Tent06Dead = 0
  local Tent07Dead = 0
  local Tent08Dead = 0
  local Tent09Dead = 0
  while missionend == 0 do
    if IsDead(Destroyable_Object.Tent01) and Tent01Dead == 0 then
      Tent01Dead = 1
      Spawn(Pickup.Pickup01)
    end
    if IsDead(Destroyable_Object.Tent02) and Tent02Dead == 0 then
      Tent02Dead = 1
      Spawn(Pickup.Pickup02)
    end
    if IsDead(Destroyable_Object.Tent03) and Tent03Dead == 0 then
      Tent03Dead = 1
      Spawn(Pickup.Pickup03)
    end
    if IsDead(Destroyable_Object.Tent04) and Tent04Dead == 0 then
      Tent04Dead = 1
      Spawn(Pickup.Pickup04)
    end
    if IsDead(Destroyable_Object.Tent05) and Tent05Dead == 0 then
      Tent05Dead = 1
      Spawn(Pickup.Pickup05)
    end
    if IsDead(Destroyable_Object.Tent06) and Tent06Dead == 0 then
      Tent06Dead = 1
      Spawn(Pickup.Pickup06)
    end
    if IsDead(Destroyable_Object.Tent07) and Tent07Dead == 0 then
      Tent07Dead = 1
      Spawn(Pickup.Pickup07)
    end
    if IsDead(Destroyable_Object.Tent08) and Tent08Dead == 0 then
      Tent08Dead = 1
      Spawn(Pickup.Pickup08)
    end
    if IsDead(Destroyable_Object.Tent09) and Tent09Dead == 0 then
      Tent09Dead = 1
      Spawn(Pickup.Pickup09)
    end
    EndFrame()
  end
end
