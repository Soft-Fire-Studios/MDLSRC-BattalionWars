function LookOutCommunicationsTower(owner)
  scriptLookOutCommunicationsTower = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  while netvariable.player1.lookoutcomms == 0 do
    if IsNetworkHost() then
      WaitFor(0.2)
      if GetActionState(Troop.XGruntCommsTower1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XFlamer1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XFlamer2) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.XLightTank3) == constant.ACTION_STATE_ATTACK or GetActionState(Ground_Vehicle.XLightTank4) == constant.ACTION_STATE_ATTACK or GetActionState(Building.BuildingCommsTower1) == constant.ACTION_STATE_ATTACK then
        netvariable.player1.lookoutcomms = 1
      end
      if GetActionState(Troop.XGruntCommsTower1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XFlamer3) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XFlamer4) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XChain1) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XChain2) == constant.ACTION_STATE_ATTACK or GetActionState(Troop.XChain3) == constant.ACTION_STATE_ATTACK then
        netvariable.player1.lookoutcomms = 1
      end
      EndFrame()
    end
    EndFrame()
  end
  if IsNetworkHost() then
    netvariable.player1.lookoutcomms = 1
  end
  lookoutcommunicationstower = 1
  DebugOut("Player is attacking the communications tower")
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessage(5, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_ONE)
  PhoneMessage(5, 0, constant.ARMY_XYLVANIAN, 6, SpriteID.CO_X_Ubel_Sad, constant.PLAYER_TWO)
  GoToArea(Ground_Vehicle.XLightTank4, 435, -175, 5, constant.ORDER_NORMAL)
end
