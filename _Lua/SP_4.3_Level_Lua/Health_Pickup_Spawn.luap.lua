function Health_Pickup_Spawn(owner)
  local Tent01Dead = 0
  local Tent02Dead = 0
  local Tent03Dead = 0
  local Tent04Dead = 0
  local Tent05Dead = 0
  local Tent06Dead = 0
  local Tent07Dead = 0
  local Tent08Dead = 0
  local Tent09Dead = 0
  local Tent10Dead = 0
  local Tent11Dead = 0
  local Tent12Dead = 0
  local Tent13Dead = 0
  while true do
    if IsDead(Destroyable_Object.Tent01) and Tent01Dead == 0 then
      Tent01Dead = 1
      Spawn(Pickup.Tent01Health01)
    end
    if IsDead(Destroyable_Object.Tent02) and Tent02Dead == 0 then
      Tent02Dead = 1
      Spawn(Pickup.Tent02Health01)
    end
    if IsDead(Destroyable_Object.Tent03) and Tent03Dead == 0 then
      Tent03Dead = 1
      Spawn(Pickup.Tent03Health01)
    end
    if IsDead(Destroyable_Object.Tent04) and Tent04Dead == 0 then
      Tent04Dead = 1
      Spawn(Pickup.Tent04Health01)
    end
    if IsDead(Destroyable_Object.Tent05) and Tent05Dead == 0 then
      Tent05Dead = 1
      Spawn(Pickup.Tent05Health01)
      Spawn(Pickup.Tent05Health02)
      Spawn(Pickup.Tent05Health03)
      Spawn(Pickup.Tent05Health04)
    end
    if IsDead(Destroyable_Object.Tent06) and Tent06Dead == 0 then
      Tent06Dead = 1
      Spawn(Pickup.Tent06Health01)
      Spawn(Pickup.Tent06Health02)
    end
    if IsDead(Destroyable_Object.Tent07) and Tent07Dead == 0 then
      Tent07Dead = 1
      Spawn(Pickup.Tent07Health01)
      Spawn(Pickup.Tent07Health02)
    end
    if IsDead(Destroyable_Object.Tent08) and Tent08Dead == 0 then
      Tent08Dead = 1
      Spawn(Pickup.Tent08Health01)
    end
    if IsDead(Destroyable_Object.Tent09) and Tent09Dead == 0 then
      Tent09Dead = 1
      Spawn(Pickup.Tent09Health01)
      Spawn(Pickup.Tent09Health02)
    end
    if IsDead(Destroyable_Object.Tent10) and Tent10Dead == 0 then
      Tent10Dead = 1
      Spawn(Pickup.Tent10Health01)
    end
    if IsDead(Destroyable_Object.Tent11) and Tent11Dead == 0 then
      Tent11Dead = 1
      Spawn(Pickup.Tent11Health01)
    end
    if IsDead(Destroyable_Object.Tent12) and Tent12Dead == 0 then
      Tent12Dead = 1
      Spawn(Pickup.Tent12Health01)
      Spawn(Pickup.Tent12Health02)
    end
    if IsDead(Destroyable_Object.Tent13) and Tent13Dead == 0 then
      Tent13Dead = 1
      Spawn(Pickup.Tent13Health01)
    end
    EndFrame()
  end
end
