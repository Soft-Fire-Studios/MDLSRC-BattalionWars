function C1Bonus_Tgrunts_Forest(owner)
  while true do
    if IsInArea(GetPlayerUnit(), Map_Zone.Tgrunts) then
      break
    end
    if IsInArea(GetPlayerUnit(), Map_Zone.WFbazooka) then
      break
    end
    EndFrame()
  end
  SetActive(Troop.Tgrunt0007, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Tgrunt0008, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Tgrunt0009, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Tgrunt0010, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Tgrunt0019, constant.ACTIVE, constant.ADJUST_WEAPON)
  SetActive(Troop.Tgrunt0020, constant.ACTIVE, constant.ADJUST_WEAPON)
  EndFrame()
  return
end
