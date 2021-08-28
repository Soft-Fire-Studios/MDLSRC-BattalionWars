function JW_Flag_Warning(owner)
  local textcounter = 0
  repeat
    EndFrame()
  until flagwarning == 1
  repeat
    if textcounter < 700 then
      textcounter = textcounter + 1
    end
    if textcounter == 650 then
      textcounter = 0
      if NumPassengersInUnit(Capture_Point.SE_Airbase_CP) == 0 then
        PhoneMessage(158, constant.ID_NONE, constant.ARMY_SOLAR, 6, SpriteID.CO_SE_Leiqo_Happy, constant.PLAYER_ONE)
      end
    end
    EndFrame()
  until flagwarning == 2
end
