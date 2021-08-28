function CheckRoute(owner)
  WaitFor(5)
  local warned = 0
  repeat
    if IsInArea(GetPlayerUnit(), Map_Zone.Cheat0) == false and warned == 0 then
      ClearMessageQueue()
      PhoneMessage(27, 0, constant.ARMY_SOLAR, 5, SpriteID.CO_SE_Leiqo_Happy)
      PhoneMessage(28, 0, constant.ARMY_SOLAR, 5, SpriteID.CO_SE_Leiqo_Happy)
      warned = 1
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.Cheat1) == false and Deserted == 0 then
      Deserted = 1
    end
    EndFrame()
  until warned == 1 and Deserted == 1 or LevelState == 2
end
