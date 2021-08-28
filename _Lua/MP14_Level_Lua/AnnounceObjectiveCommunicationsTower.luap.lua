function AnnounceObjectiveCommunicationsTower(owner)
  scriptAnnounceObjectiveCommunicationsTower = owner
  repeat
    EndFrame()
  until cutscenefinished == 1
  repeat
    WaitFor(0.2)
    if IsNetworkPlayer(constant.PLAYER_ONE) and AllPlayerUnitsDead(constant.PLAYER_ONE) then
      return
    end
    if IsNetworkPlayer(constant.PLAYER_TWO) and AllPlayerUnitsDead(constant.PLAYER_TWO) then
      return
    end
    if communicationstower == 1 then
      return
    end
    if lookoutcommunicationstower == 1 then
      return
    end
    if IsNetworkHost() then
      WaitFor(0.2)
      if GetPlayerUnit(constant.PLAYER_ONE) ~= 0 and GetPlayerUnit(constant.PLAYER_TWO) ~= 0 and (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.CommunicationsTower) or IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.CommunicationsTower)) then
        netvariable.player1.CommunicationsTower = 1
        break
      end
    end
    EndFrame()
    WaitFor(0.5)
  until netvariable.player1.CommunicationsTower == 1
  DebugOut("Communications tower objective has been announced")
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  if IsNetworkPlayer(constant.PLAYER_ONE) then
    PhoneMessage(31, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
    PhoneMessage(32, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
    PhoneMessage(33, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
  end
  if IsNetworkPlayer(constant.PLAYER_TWO) then
    PhoneMessage(31, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO)
    PhoneMessage(32, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_TWO)
    PhoneMessage(33, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_TWO)
  end
  repeat
    if IsNetworkHost() then
      WaitFor(0.2)
      if IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.CommsTower) or IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.CommsTower) then
        WaitFor(10)
        netvariable.player1.gunshipssent = 1
        break
      end
    end
    EndFrame()
  until netvariable.player1.gunshipssent == 1
  PhoneMessage(18, 0, 1, 5, SpriteID.CO_X_Ubel_Happy)
  WaitFor(4)
  GoToArea(Air_Vehicle.XGunship1, 430, -60, 5, constant.ORDER_NORMAL)
  GoToArea(Air_Vehicle.XGunship2, 430, -60, 5, constant.ORDER_NORMAL)
  repeat
    EndFrame()
  until GetHealthPercent(Building.CommunicationsTower) < 90
  chopperstatus = 1
end
