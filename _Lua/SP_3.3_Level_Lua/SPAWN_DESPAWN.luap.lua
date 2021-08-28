function SPAWN_DESPAWN(owner)
  Despawn(Air_Vehicle.AIbomber1)
  Despawn(Air_Vehicle.AIbomber2)
  Despawn(Building.Gate2)
  Despawn(Troop.Winningdude1)
  Despawn(Troop.Winningdude2)
  Despawn(Troop.Winningdude3)
  Despawn(Troop.Winningdude4)
  Despawn(Troop.Winningdude5)
  Despawn(Troop.Winningdude6)
  Despawn(Troop.Winningdude7)
  Despawn(Troop.Winningdude8)
  Despawn(Troop.Winningdude9)
  Despawn(Troop.Winningdude10)
  Despawn(Air_Vehicle.AItransport1)
  Despawn(Air_Vehicle.AItransport2)
  Despawn(Water_Vehicle.SEdreadnaught)
  Despawn(Building.StatueClean)
  Despawn(Troop.dummy)
  Despawn(Building.SolarNavalProject, true)
  Despawn(Building.MGTOWER1, true)
  Despawn(Building.MGTOWER3, true)
  Despawn(Troop.Santa1, true)
  Despawn(Troop.Santa2, true)
  Despawn(Ground_Vehicle.SEltankA1, true)
  Despawn(Ground_Vehicle.SEltankA2, true)
  Despawn(Ground_Vehicle.SEltankA3, true)
  Despawn(Ground_Vehicle.SEltankA4, true)
  Despawn(Ground_Vehicle.SEartillery1, true)
  Despawn(Ground_Vehicle.SEartillery2, true)
  Despawn(Ground_Vehicle.SEartillery3, true)
  Despawn(Ground_Vehicle.SEartillery4, true)
  Despawn(Ground_Vehicle.SEartillery5, true)
  Despawn(Ground_Vehicle.SEartillery6, true)
  repeat
    EndFrame()
    WaitFor(1)
  until cutsceneskipped == true
  WaitFor(1)
  Teleport(Troop.Santa5, -255, 307, 270, 5)
  Teleport(Troop.Santa6, -255, 310, 270, 5)
  WaitFor(1.5)
  Despawn(Troop.Santa5, true)
  Despawn(Troop.Santa6, true)
  Despawn(Water_Vehicle.TBattleship1, true)
  Despawn(Water_Vehicle.TBattleship2, true)
  Despawn(Water_Vehicle.TBattleship3, true)
  Despawn(Water_Vehicle.TBattleship4, true)
  repeat
    EndFrame()
    WaitFor(0.1)
  until radardestroyed == 1
  Spawn(Building.MGTOWER1)
  Spawn(Building.MGTOWER3)
  Spawn(Troop.Santa1)
  Spawn(Troop.Santa2)
  Spawn(Troop.Santa5)
  Spawn(Troop.Santa6)
  Spawn(Water_Vehicle.TBattleship1)
  Spawn(Water_Vehicle.TBattleship2)
  Spawn(Water_Vehicle.TBattleship3)
  Spawn(Water_Vehicle.TBattleship4)
  Spawn(Ground_Vehicle.SEltankA1)
  Spawn(Ground_Vehicle.SEltankA2)
  Spawn(Ground_Vehicle.SEltankA3)
  Spawn(Ground_Vehicle.SEltankA4)
  Spawn(Ground_Vehicle.SEartillery1)
  Spawn(Ground_Vehicle.SEartillery2)
  Spawn(Ground_Vehicle.SEartillery3)
  Spawn(Ground_Vehicle.SEartillery4)
  Spawn(Ground_Vehicle.SEartillery5)
  Spawn(Ground_Vehicle.SEartillery6)
  repeat
    EndFrame()
    WaitFor(0.1)
  until MidCutscene1start == true
  WaitFor(0.5)
  if IsDead(Building.SEtowergun1) == false then
    Kill(Building.SEtowergun1, false)
  end
  if IsDead(Building.SEtowergun2) == false then
    Kill(Building.SEtowergun2, false)
  end
  if IsDead(Destroyable_Object.cover1) == false then
    Kill(Destroyable_Object.cover1)
  end
  if IsDead(Destroyable_Object.cover2) == false then
    Kill(Destroyable_Object.cover2)
  end
  if IsDead(Destroyable_Object.cover3) == false then
    Kill(Destroyable_Object.cover3)
  end
  if IsDead(Destroyable_Object.cover4) == false then
    Kill(Destroyable_Object.cover4)
  end
  if IsDead(Troop.SEbazooka12) == false then
    Despawn(Troop.SEbazooka12)
  end
  if IsDead(Troop.SEbazooka13) == false then
    Despawn(Troop.SEbazooka13)
  end
  if IsDead(Troop.SEbazooka14) == false then
    Despawn(Troop.SEbazooka14)
  end
  if IsDead(Troop.SEgrunt13) == false then
    Despawn(Troop.SEgrunt13)
  end
  if IsDead(Troop.SEgrunt14) == false then
    Despawn(Troop.SEgrunt14)
  end
  if IsDead(Troop.SEgrunt18) == false then
    Despawn(Troop.SEgrunt18)
  end
  if IsDead(Troop.SEgrunt19) == false then
    Despawn(Troop.SEgrunt19)
  end
  if IsDead(Troop.SEgrunt15) == false then
    Despawn(Troop.SEgrunt15)
  end
  if IsDead(Troop.SEgrunt16) == false then
    Despawn(Troop.SEgrunt16)
  end
  if IsDead(Troop.SEgrunt17) == false then
    Despawn(Troop.SEgrunt17)
  end
  if IsDead(Troop.SEgrunt38) == false then
    Despawn(Troop.SEgrunt38)
  end
  if IsDead(Troop.SEgrunt32) == false then
    Despawn(Troop.SEgrunt32)
  end
  if IsDead(Troop.SEgrunt33) == false then
    Despawn(Troop.SEgrunt33)
  end
  if IsDead(Troop.SEgrunt30) == false then
    Despawn(Troop.SEgrunt30)
  end
  if IsDead(Troop.SEgrunt31) == false then
    Despawn(Troop.SEgrunt31)
  end
  if IsDead(Troop.SEgrunt54) == false then
    Despawn(Troop.SEgrunt54)
  end
  if IsDead(Troop.SEgrunt53) == false then
    Despawn(Troop.SEgrunt53)
  end
  if IsDead(Troop.SEgrunt55) == false then
    Despawn(Troop.SEgrunt55)
  end
  if IsDead(Troop.SEgrunt50) == false then
    Despawn(Troop.SEgrunt50)
  end
  if IsDead(Troop.SEgrunt51) == false then
    Despawn(Troop.SEgrunt51)
  end
  if IsDead(Troop.SEgrunt52) == false then
    Despawn(Troop.SEgrunt52)
  end
  if IsDead(Ground_Vehicle.SEhtank7) == false then
    Despawn(Ground_Vehicle.SEhtank7)
  end
  if IsDead(Ground_Vehicle.SEltank5) == false then
    Despawn(Ground_Vehicle.SEltank5)
  end
end
