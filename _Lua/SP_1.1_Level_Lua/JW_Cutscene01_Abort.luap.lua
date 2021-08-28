function JW_Cutscene01_Abort(owner)
  SetUnitInvulnerable(Troop.SE_Grunt01, true)
  SetUnitInvulnerable(Building.SE_Watchtower01, true)
  Despawn(Troop.SE_Grunt02)
  Despawn(Troop.SE_Grunt03)
  Despawn(Troop.SE_Grunt04)
  Despawn(Troop.SE_Grunt05)
  Despawn(Water_Vehicle.SE_Battleship01)
  Despawn(Water_Vehicle.SE_Battleship02)
  Despawn(Water_Vehicle.SE_Battleship03)
  Despawn(Water_Vehicle.SE_Battleship04)
  Despawn(Water_Vehicle.SE_Battleship05)
  Despawn(Water_Vehicle.SE_Battleship06)
  Despawn(Air_Vehicle.Cutscene01Bomber01)
  Despawn(Air_Vehicle.Cutscene01Bomber02)
  Despawn(Air_Vehicle.Cutscene01Fighter01)
  Despawn(Air_Vehicle.Cutscene01Fighter02)
  Despawn(Air_Vehicle.AI_Fighter01)
  Despawn(Troop.AI_Fighter01_Pilot01)
  Despawn(Air_Vehicle.AI_Fighter02)
  Despawn(Troop.AI_Fighter02_Pilot01)
  Despawn(Air_Vehicle.SE_Fighter01)
  Despawn(Troop.SE_Fighter01_Pilot01)
  Despawn(Air_Vehicle.SE_Fighter02)
  Despawn(Troop.SE_Fighter02_Pilot01)
  repeat
    EndFrame()
  until Cutscene01Finished == 1
  WaitFor(1)
  Spawn(Troop.SE_Grunt02)
  Spawn(Troop.SE_Grunt03)
  Spawn(Troop.SE_Grunt04)
  Spawn(Troop.SE_Grunt05)
  ExitVehicle(Troop.SE_Watchtower01_Pilot01, Building.SE_Watchtower01)
  Despawn(Troop.SE_Watchtower01_Pilot01)
  Despawn(Air_Vehicle.Cutscene01Bomber01)
  Despawn(Air_Vehicle.Cutscene01Bomber02)
  Despawn(Air_Vehicle.Cutscene01Fighter01)
  Despawn(Air_Vehicle.Cutscene01Fighter02)
end
