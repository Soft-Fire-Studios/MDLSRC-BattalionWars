function Pickups(owner)
  local pickuptent1 = 0
  local pickuptent2 = 0
  local pickuptent3 = 0
  local pickuptent4 = 0
  local pickuptent5 = 0
  local pickuptent6 = 0
  local pickuptent7 = 0
  local pickuptent8 = 0
  local pickuptent9 = 0
  local pickuptent10 = 0
  local pickuptent11 = 0
  local pickuptent12 = 0
  local pickuptent13 = 0
  local pickuptent14 = 0
  while true do
    if IsDead(Destroyable_Object.PickupTent1) and pickuptent1 == 0 then
      Spawn(Pickup.PickupTent1Pickup1)
      Spawn(Pickup.PickupTent1Pickup2)
      pickuptent1 = 1
    end
    if IsDead(Destroyable_Object.PickupTent2) and pickuptent2 == 0 then
      Spawn(Pickup.PickupTent2Pickup1)
      Spawn(Pickup.PickupTent2Pickup2)
      Spawn(Pickup.PickupTent2Pickup3)
      Spawn(Pickup.PickupTent2Pickup4)
      pickuptent2 = 1
    end
    if IsDead(Destroyable_Object.PickupTent3) and pickuptent3 == 0 then
      Spawn(Pickup.PickupTent3)
      pickuptent3 = 1
    end
    if IsDead(Destroyable_Object.PickupTent4) and pickuptent4 == 0 then
      Spawn(Pickup.PickupTent4)
      pickuptent4 = 1
    end
    if IsDead(Destroyable_Object.PickupTent5) and pickuptent5 == 0 then
      Spawn(Pickup.PickupTent5)
      pickuptent5 = 1
    end
    if IsDead(Destroyable_Object.PickupTent6) and pickuptent6 == 0 then
      Spawn(Pickup.PickupTent6)
      pickuptent6 = 1
    end
    if IsDead(Destroyable_Object.PickupTent7) and pickuptent7 == 0 then
      Spawn(Pickup.PickupTent7)
      pickuptent7 = 1
    end
    if IsDead(Destroyable_Object.PickupTent8) and pickuptent8 == 0 then
      Spawn(Pickup.PickupTent8)
      pickuptent8 = 1
    end
    if IsDead(Destroyable_Object.PickupTent9) and pickuptent9 == 0 then
      Spawn(Pickup.PickupTent9)
      pickuptent9 = 1
    end
    if IsDead(Destroyable_Object.PickupTent10) and pickuptent10 == 0 then
      Spawn(Pickup.PickupTent10)
      pickuptent10 = 1
    end
    if IsDead(Destroyable_Object.PickupTent11) and pickuptent11 == 0 then
      Spawn(Pickup.PickupTent11)
      pickuptent11 = 1
    end
    if IsDead(Destroyable_Object.PickupTent12) and pickuptent12 == 0 then
      Spawn(Pickup.PickupTent12)
      pickuptent12 = 1
    end
    if IsDead(Destroyable_Object.PickupTent13) and pickuptent13 == 0 then
      Spawn(Pickup.PickupTent13)
      pickuptent13 = 1
    end
    if IsDead(Destroyable_Object.PickupTent14) and pickuptent14 == 0 then
      Spawn(Pickup.PickupTent14)
      pickuptent14 = 1
    end
    EndFrame()
  end
end
