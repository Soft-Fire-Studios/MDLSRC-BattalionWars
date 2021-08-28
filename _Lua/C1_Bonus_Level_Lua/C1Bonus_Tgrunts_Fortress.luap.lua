function C1Bonus_Tgrunts_Fortress(owner)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.Fortress) then
      SetActive(Troop.Tgrunt0017, constant.ACTIVE, constant.ADJUST_WEAPON)
      SetActive(Troop.Tgrunt0018, constant.ACTIVE, constant.ADJUST_WEAPON)
      break
    end
    EndFrame()
  end
  EndFrame()
  return
end
