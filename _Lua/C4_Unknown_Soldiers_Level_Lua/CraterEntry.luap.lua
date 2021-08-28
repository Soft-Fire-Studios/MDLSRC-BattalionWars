function CraterEntry(owner)
  WaitFor(1)
  repeat
    WaitFor(1)
    EndFrame()
  until NumItemsInArea(Map_Zone.Crater, flag.TYPE_WFRONTIER) > 0
  PhoneMessage(30, 0, 3, 4, SpriteID.CO_SE_Leiqo_Sad)
  PhoneMessage(31, 0, 3, 4, SpriteID.CO_SE_Leiqo_Happy)
  PhoneMessage(32, 0, 0, 4, SpriteID.CO_WF_Austin_Sad)
  WaitFor(1)
  repeat
    WaitFor(1)
    EndFrame()
  until 0 < NumItemsInArea(-46, 471, 130, flag.TYPE_WFRONTIER) or GetHealthPercent(Building.Obelisk1) < 100 or 100 > GetHealthPercent(Building.Obelisk2) or 100 > GetHealthPercent(Building.Obelisk3) or 100 > GetHealthPercent(Building.Obelisk4)
  PhoneMessage(8, 0, 4, 4, SpriteID.CO_X_Ingrid_Sad)
  WaitFor(2)
  Spawn(Troop.W1Grunt1)
  Spawn(Troop.W1Grunt2)
  Spawn(Troop.W1Grunt3)
  Spawn(Troop.W1Grunt4)
  Spawn(Troop.W1Grunt7)
  Spawn(Troop.W1Grunt8)
  Spawn(Troop.W1Hose1)
  Spawn(Troop.W1Hose2)
  WaitFor(1)
  repeat
    WaitFor(1)
    wavetimer = wavetimer + 1
    EndFrame()
  until 4 > NumItemsInArea(-46, 471, 190, flag.TYPE_UNDERWORLD) or wavetimer == 15
  PhoneMessage(12, 0, 4, 4, SpriteID.CO_X_Ingrid_Happy)
  wavetimer = 1
  WaitFor(3)
  Spawn(Troop.W2Rocket1)
  Spawn(Troop.W2Rocket2)
  Spawn(Troop.W2Rocket3)
  Spawn(Troop.W2Rocket4)
  AttackTarget(Troop.W2Rocket1, GetPlayerUnit(), constant.ORDER_NORMAL)
  AttackTarget(Troop.W2Rocket2, GetPlayerUnit(), constant.ORDER_NORMAL)
  AttackTarget(Troop.W2Rocket3, GetPlayerUnit(), constant.ORDER_NORMAL)
  AttackTarget(Troop.W2Rocket4, GetPlayerUnit(), constant.ORDER_NORMAL)
  WaitFor(1)
  repeat
    WaitFor(1)
    wavetimer = wavetimer + 1
    EndFrame()
  until 2 > NumItemsInArea(-46, 471, 190, flag.TYPE_UNDERWORLD) or wavetimer == 15
  PhoneMessage(13, 0, 4, 4, SpriteID.CO_X_Ingrid_Happy)
  wavetimer = 1
  WaitFor(3)
  Spawn(Ground_Vehicle.W3Tank1)
  Spawn(Ground_Vehicle.W3Tank2)
  Spawn(Ground_Vehicle.W3Tank3)
  AttackTarget(Ground_Vehicle.W3Tank1, GetPlayerUnit(), constant.ORDER_NORMAL)
  AttackTarget(Ground_Vehicle.W3Tank2, GetPlayerUnit(), constant.ORDER_NORMAL)
  AttackTarget(Ground_Vehicle.W3Tank3, GetPlayerUnit(), constant.ORDER_NORMAL)
  WaitFor(1)
  repeat
    WaitFor(1)
    wavetimer = wavetimer + 1
    EndFrame()
  until 2 > NumItemsInArea(-46, 471, 190, flag.TYPE_UNDERWORLD) or wavetimer == 40
  PhoneMessage(14, 0, 4, 4, SpriteID.CO_X_Ingrid_Happy)
  WaitFor(3)
  Spawn(Air_Vehicle.W4Chopper1)
  AttackTarget(Air_Vehicle.LChopper8, GetPlayerUnit(), constant.ORDER_NORMAL)
  AttackTarget(Air_Vehicle.W4Chopper1, Ground_Vehicle.AA2)
  GoToArea(Air_Vehicle.W4Chopper1, -46, 471, 50)
  WaitFor(4)
  PhoneMessage(15, 0, 3, 4, SpriteID.CO_SE_Leiqo_Happy)
  Spawn(Air_Vehicle.SFighter1)
  Spawn(Air_Vehicle.SFighter2)
  AttackTarget(Air_Vehicle.SFighter1, Air_Vehicle.LChopper5)
  AttackTarget(Air_Vehicle.SFighter2, Air_Vehicle.LChopper6)
end
