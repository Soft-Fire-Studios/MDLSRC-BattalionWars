function COBanter01(owner)
  while missionend == 0 do
    if cutscenefinished01 == 2 then
      WaitFor(10)
      PhoneMessage(18, constant.ID_NONE, constant.ARMY_UNDERWORLD, 0, SpriteID.CO_L_Ferrok_Happy)
      PhoneMessage(31, constant.ID_NONE, constant.ARMY_SOLAR, 0, SpriteID.CO_SE_Leiqo_Helmet_Sad)
      break
    end
    EndFrame()
  end
end
