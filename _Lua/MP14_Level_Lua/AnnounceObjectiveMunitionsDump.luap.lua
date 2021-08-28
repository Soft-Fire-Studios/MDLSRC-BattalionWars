function AnnounceObjectiveMunitionsDump(owner)
  scriptAnnounceObjectiveMunitionsDump = owner
  local loop = 0
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
    if munitionsdump == 1 then
      return
    end
    if IsNetworkHost() then
      WaitFor(0.2)
      if GetPlayerUnit(constant.PLAYER_ONE) ~= 0 and GetPlayerUnit(constant.PLAYER_TWO) ~= 0 and (IsInArea(GetPlayerUnit(constant.PLAYER_ONE), Map_Zone.MunitionsDump) or IsInArea(GetPlayerUnit(constant.PLAYER_TWO), Map_Zone.MunitionsDump)) then
        netvariable.player1.MunitionsDump = 1
      end
    end
    EndFrame()
  until netvariable.player1.MunitionsDump == 1
  ClearMessageQueue(constant.PLAYER_ONE)
  ClearMessageQueue(constant.PLAYER_TWO)
  PhoneMessage(24, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_ONE)
  PhoneMessage(24, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Sad, constant.PLAYER_TWO)
  PhoneMessage(25, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_ONE)
  PhoneMessage(25, 0, constant.ARMY_WF, 6, SpriteID.CO_WF_Herman_Happy, constant.PLAYER_TWO)
end
