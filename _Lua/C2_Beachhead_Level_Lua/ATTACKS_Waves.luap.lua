function ATTACKS_Waves(owner)
  repeat
    EndFrame()
  until LevelState == 4
  Spawn(Air_Vehicle.XAirTrans4)
  Trans4Go = 1
  WaitFor(10)
  Spawn(Air_Vehicle.XAirTrans3)
  Trans3Go = 1
  WaitFor(10)
  Spawn(Air_Vehicle.XAirTrans2)
  Trans2Go = 1
  WaitFor(20)
  Spawn(Air_Vehicle.XAirTrans8)
  Spawn(Air_Vehicle.XAirTrans9)
  Trans8Go = 1
  Trans9Go = 1
  WaitFor(30)
  Spawn(Air_Vehicle.XAirTrans0)
  Trans0Go = 2
  WaitFor(10)
  Spawn(Air_Vehicle.XAirTrans1)
  Trans1Go = 2
  repeat
    EndFrame()
  until IsDead(Ground_Vehicle.XLTank1) and IsDead(Ground_Vehicle.XLTank2)
  WaitFor(50)
  Spawn(Air_Vehicle.XAirTrans6)
  Trans6Go = 1
  WaitFor(10)
  Spawn(Air_Vehicle.XAirTrans5)
  Trans5Go = 1
  WaitFor(10)
  Spawn(Air_Vehicle.XAirTrans7)
  Trans7Go = 1
  PhoneMessage(23, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
  WaitFor(15)
  PhoneMessage(24, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
  PhoneMessage(25, 0, 0, 5, SpriteID.CO_WF_Herman_Happy)
  WaitFor(10)
  Spawn(Air_Vehicle.XAirTrans0)
  Spawn(Air_Vehicle.XAirTrans1)
  Trans0Go = 3
  Trans1Go = 3
  WaitFor(10)
  BombGo = 1
  Spawn(Air_Vehicle.Bomber1)
  WaitFor(5)
  Spawn(Air_Vehicle.Bomber2)
  WaitFor(10)
  Spawn(Air_Vehicle.Bomber3)
  WaitFor(5)
  Spawn(Air_Vehicle.Bomber4)
  WaitFor(10)
  Spawn(Air_Vehicle.XAirTrans3)
  Trans3Go = 2
  WaitFor(10)
  PhoneMessage(55, 0, 1, 5, SpriteID.CO_X_Ingrid_Sad)
  PhoneMessage(56, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
end
