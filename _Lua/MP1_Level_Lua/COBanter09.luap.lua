function COBanter09(owner)
  repeat
    EndFrame()
  until cutscenefinished01 == 2
  repeat
    if IsNetworkPlayer(constant.PLAYER_ONE) and (GetHealthPercent(Building.SolarForcefield01) < 90 or 90 > GetHealthPercent(Building.SolarForcefield02)) then
      netvariable.player1.ffhealth = 1
      DebugOut("*COBanter09* - 1. The Mausoleums health is < 100")
      break
    end
    WaitFor(0.2)
  until netvariable.player1.ffhealth == 1
  PhoneMessage(57, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy, constant.PLAYER_ONE)
  PhoneMessage(58, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad, constant.PLAYER_TWO)
end
