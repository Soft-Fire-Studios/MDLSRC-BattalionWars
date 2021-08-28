function Despawn_Factroy_Units(owner)
  script08 = owner
  Despawn(Air_Vehicle.SE_Gunship_3)
  Despawn(Air_Vehicle.SE_Gunship_10)
  Despawn(Troop.Entity260020504, true)
  Despawn(Troop.Entity260020503, true)
  Despawn(Troop.SE_GS_10_Driver_2, true)
  Despawn(Troop.SE_GS_10_Driver_3, true)
  Despawn(Troop.Entity260020501, true)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.Mortar_Zone) or CountRemainingPlayerTroops(constant.PLAYER_ONE) == 0 and 0 < airbase
  DebugOut("POW Objective now visible")
  Spawn(Air_Vehicle.SE_Gunship_3)
  Spawn(Troop.Entity260020504)
  Spawn(Troop.Entity260020503)
  Spawn(Troop.SE_GS_10_Driver_2)
  Spawn(Troop.SE_GS_10_Driver_3)
  Spawn(Troop.Entity260020501)
end
