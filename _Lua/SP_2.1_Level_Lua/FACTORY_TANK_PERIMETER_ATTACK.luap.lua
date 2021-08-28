function FACTORY_TANK_PERIMETER_ATTACK(owner)
  scriptFactoryTanks = owner
  local factoryattacked = false
  repeat
    if factoryattacked == false and NumItemsInArea(Map_Zone.FactoryPerimeterAttack1, flag.TYPE_WFRONTIER) > 0 then
      GoToArea(Troop.Tgrunt28, -127, -200, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt29, -127, -200, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt30, -127, -200, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt31, -127, -200, 5, constant.ORDER_NORMAL)
      GoToArea(Ground_Vehicle.Tltank07, -127, -200, 5, constant.ORDER_NORMAL)
      PhoneMessage(46, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      factoryattacked = true
    end
    EndFrame()
    if factoryattacked == false and 0 < NumItemsInArea(Map_Zone.FactoryPerimeterAttack2, flag.TYPE_WFRONTIER) then
      GoToArea(Troop.Tgrunt28, 15, -56, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt29, 15, -56, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt30, 15, -56, 5, constant.ORDER_NORMAL)
      GoToArea(Troop.Tgrunt31, 15, -56, 5, constant.ORDER_NORMAL)
      GoToArea(Ground_Vehicle.Tltank07, 15, -56, 5, constant.ORDER_NORMAL)
      PhoneMessage(46, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Young_Gorgi_Sad, constant.PLAYER_ONE)
      factoryattacked = true
    end
    EndFrame()
  until factoryattacked == true
end
