function COSpeech(owner)
  SetUnitInvulnerable(Building.TundranMausoleum, true)
  SetActive(Building.TundranMausoleum, constant.INACTIVE)
  repeat
    EndFrame()
  until GetHealthPercent(Ground_Vehicle.TundranBattlestation01) < 40 or aatowers > 0
  if aatowers == 0 and missionend == 0 then
    PhoneMessage(85, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad, constant.PLAYER_ONE)
    PhoneMessage(86, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad, constant.PLAYER_TWO)
  end
  repeat
    EndFrame()
  until vladsbigdrill == 1
  SetUnitInvulnerable(Building.TundranMausoleum, false)
  SetActive(Building.TundranMausoleum, constant.ACTIVE)
  SetHealthPercent(Building.TundranMausoleum, 100)
  repeat
    EndFrame()
  until GetHealthPercent(Building.TundranMausoleum) < 100
  PhoneMessage(69, constant.ID_NONE, constant.ARMY_WF, 0, SpriteID.CO_WF_Betty_Sad)
  repeat
    EndFrame()
  until GetHealthPercent(Building.TundranMausoleum) < 25
  PhoneMessage(49, constant.ID_NONE, constant.ARMY_TUNDRAN, 0, SpriteID.CO_T_Nova_Sad)
end
