function Purge_Tanks_Stay(owner)
  local XCoord = GetObjectXPosition(owner)
  local ZCoord = GetObjectZPosition(owner)
  while missionend == 0 do
    if tankSent == 0 and GetHealthPercent(owner) >= 90 and not IsInArea(owner, XCoord, ZCoord, 5) then
      GoToArea(owner, XCoord, ZCoord, 5, 0, constant.ORDER_FORCED)
    end
    if tankSent >= 1 then
      break
    end
    if GetHealthPercent(owner) < 90 then
      break
    end
    EndFrame()
  end
end
