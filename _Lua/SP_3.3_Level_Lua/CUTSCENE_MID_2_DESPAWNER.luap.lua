function CUTSCENE_MID_2_DESPAWNER(owner)
  local AIcontrolledgrunt1Alive = false
  local AIcontrolledgrunt2Alive = false
  local AIcontrolledgrunt3Alive = false
  local AIcontrolledgrunt4Alive = false
  local AIcontrolledgrunt5Alive = false
  local AIcontrolledgrunt6Alive = false
  local AIcontrolledgrunt7Alive = false
  local AIcontrolledgrunt8Alive = false
  local AIcontrolledgrunt9Alive = false
  local AIcontrolledgrunt10Alive = false
  local AIcontrolledgrunt11Alive = false
  local AIcontrolledgrunt12Alive = false
  local AIcontrolledgrunt13Alive = false
  local AIcontrolledgrunt14Alive = false
  local AIcontrolledgrunt15Alive = false
  local AIcontrolledgrunt16Alive = false
  local AIcontrolledgrunt17Alive = false
  local AIcontrolledgrunt18Alive = false
  local AIcontrolledgrunt19Alive = false
  local AIcontrolledgrunt20Alive = false
  local AIcontrolledgrunt21Alive = false
  repeat
    EndFrame()
  until DespawnAIDudesNow == true
  if IsDead(Troop.AIcontrolledgrunt1) == false then
    Despawn(Troop.AIcontrolledgrunt1)
    AIcontrolledgrunt1Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt2) == false then
    Despawn(Troop.AIcontrolledgrunt2)
    AIcontrolledgrunt2Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt3) == false then
    Despawn(Troop.AIcontrolledgrunt3)
    AIcontrolledgrunt3Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt4) == false then
    Despawn(Troop.AIcontrolledgrunt4)
    AIcontrolledgrunt4Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt5) == false then
    Despawn(Troop.AIcontrolledgrunt5)
    AIcontrolledgrunt5Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt6) == false then
    Despawn(Troop.AIcontrolledgrunt6)
    AIcontrolledgrunt6Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt7) == false then
    Despawn(Troop.AIcontrolledgrunt7)
    AIcontrolledgrunt7Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt8) == false then
    Despawn(Troop.AIcontrolledgrunt8)
    AIcontrolledgrunt8Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt9) == false then
    Despawn(Troop.AIcontrolledgrunt9)
    AIcontrolledgrunt9Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIcontrolledgrunt10) == false then
    Despawn(Troop.AIcontrolledgrunt10)
    AIcontrolledgrunt10Alive = true
  end
  EndFrame()
  if BazookasFree == true then
    if IsDead(Troop.AIbazooka1) == false then
      Despawn(Troop.AIbazooka1)
      AIcontrolledgrunt11Alive = true
    end
    if IsDead(Troop.AIbazooka2) == false then
      Despawn(Troop.AIbazooka2)
      AIcontrolledgrunt12Alive = true
    end
    if IsDead(Troop.AIbazooka3) == false then
      Despawn(Troop.AIbazooka3)
      AIcontrolledgrunt13Alive = true
    end
    if IsDead(Troop.AIbazooka4) == false then
      Despawn(Troop.AIbazooka4)
      AIcontrolledgrunt14Alive = true
    end
  end
  EndFrame()
  if IsDead(Troop.AIassault1) == false then
    Despawn(Troop.AIassault1)
    AIcontrolledgrunt15Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIassault2) == false then
    Despawn(Troop.AIassault2)
    AIcontrolledgrunt16Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIassault3) == false then
    Despawn(Troop.AIassault3)
    AIcontrolledgrunt17Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIgrunt1) == false then
    Despawn(Troop.AIgrunt1)
    AIcontrolledgrunt18Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIgrunt2) == false then
    Despawn(Troop.AIgrunt2)
    AIcontrolledgrunt19Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIgrunt3) == false then
    Despawn(Troop.AIgrunt3)
    AIcontrolledgrunt20Alive = true
  end
  EndFrame()
  if IsDead(Troop.AIgrunt4) == false then
    Despawn(Troop.AIgrunt4)
    AIcontrolledgrunt21Alive = true
  end
  EndFrame()
  repeat
    EndFrame()
  until MidCutscene2Ended == true
  if AIcontrolledgrunt1Alive == true then
    Spawn(Troop.AIcontrolledgrunt1)
    Teleport(Troop.AIcontrolledgrunt1, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt2Alive == true then
    Spawn(Troop.AIcontrolledgrunt2)
    Teleport(Troop.AIcontrolledgrunt2, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt3Alive == true then
    Spawn(Troop.AIcontrolledgrunt3)
    Teleport(Troop.AIcontrolledgrunt3, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt4Alive == true then
    Spawn(Troop.AIcontrolledgrunt4)
    Teleport(Troop.AIcontrolledgrunt4, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt5Alive == true then
    Spawn(Troop.AIcontrolledgrunt5)
    Teleport(Troop.AIcontrolledgrunt5, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt6Alive == true then
    Spawn(Troop.AIcontrolledgrunt6)
    Teleport(Troop.AIcontrolledgrunt6, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt7Alive == true then
    Spawn(Troop.AIcontrolledgrunt7)
    Teleport(Troop.AIcontrolledgrunt7, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt8Alive == true then
    Spawn(Troop.AIcontrolledgrunt8)
    Teleport(Troop.AIcontrolledgrunt8, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt9Alive == true then
    Spawn(Troop.AIcontrolledgrunt9)
    Teleport(Troop.AIcontrolledgrunt9, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt10Alive == true then
    Spawn(Troop.AIcontrolledgrunt10)
    Teleport(Troop.AIcontrolledgrunt10, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt11Alive == true then
    Spawn(Troop.AIbazooka1)
    Teleport(Troop.AIbazooka1, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt12Alive == true then
    Spawn(Troop.AIbazooka2)
    Teleport(Troop.AIbazooka2, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt13Alive == true then
    Spawn(Troop.AIbazooka3)
    Teleport(Troop.AIbazooka3, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt14Alive == true then
    Spawn(Troop.AIbazooka4)
    Teleport(Troop.AIbazooka4, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt15Alive == true then
    Spawn(Troop.AIassault1)
    Teleport(Troop.AIassault1, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt16Alive == true then
    Spawn(Troop.AIassault2)
    Teleport(Troop.AIassault2, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt17Alive == true then
    Spawn(Troop.AIassault3)
    Teleport(Troop.AIassault3, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt18Alive == true then
    Spawn(Troop.AIgrunt1)
    Teleport(Troop.AIgrunt1, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt19Alive == true then
    Spawn(Troop.AIgrunt2)
    Teleport(Troop.AIgrunt2, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt20Alive == true then
    Spawn(Troop.AIgrunt3)
    Teleport(Troop.AIgrunt3, 444, 324, 180, 15)
  end
  EndFrame()
  if AIcontrolledgrunt21Alive == true then
    Spawn(Troop.AIgrunt4)
    Teleport(Troop.AIgrunt4, 444, 324, 180, 15)
  end
  EndFrame()
end
