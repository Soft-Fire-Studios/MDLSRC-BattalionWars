function C1M6_Check(owner)
  local HeavyTankCheckOneDone = 0
  local HeavyTankCheckTwoDone = 0
  local OneTundranTankDestroyedMessageDone = 0
  local FourTundranTanksDestroyedMessageDone = 0
  local OneTundranTankLeftMessageDone = 0
  C1M1_StartCheck = 1
  while true do
    if (IsDead(Ground_Vehicle.WFlightTank0001) or IsDead(Ground_Vehicle.WFlightTank0002)) and C1M1_StartEndCutscene == 0 and HeavyTankCheckOneDone == 0 then
      HeavyTankCheckOneDone = 1
      PhoneMessage(81, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nova_Happy)
    end
    if (IsDead(Ground_Vehicle.WFlightTank0003) or IsDead(Ground_Vehicle.WFlightTank0005)) and C1M1_StartEndCutscene == 0 and HeavyTankCheckTwoDone == 0 then
      HeavyTankCheckTwoDone = 1
      PhoneMessage(82, constant.ID_NONE, 2, 8, SpriteID.CO_T_Nova_Happy)
    end
    if C1M1_TanksDestroyed == 1 and C1M1_StartEndCutscene == 0 and OneTundranTankDestroyedMessageDone == 0 then
      OneTundranTankDestroyedMessageDone = 1
      PhoneMessage(56, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(57, constant.ID_NONE, 2, 4, SpriteID.CO_T_Nova_Sad)
    end
    if C1M1_TanksDestroyed == 4 and C1M1_StartEndCutscene == 0 and FourTundranTanksDestroyedMessageDone == 0 then
      FourTundranTanksDestroyedMessageDone = 1
      PhoneMessage(64, constant.ID_NONE, 0, 5, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(65, constant.ID_NONE, 2, 5, SpriteID.CO_T_Nova_Happy)
    end
    if C1M1_TanksDestroyed == 7 and C1M1_StartEndCutscene == 0 and OneTundranTankLeftMessageDone == 0 then
      OneTundranTankLeftMessageDone = 1
      PhoneMessage(79, constant.ID_NONE, 0, 4, SpriteID.CO_WF_Herman_Happy)
      PhoneMessage(80, constant.ID_NONE, 2, 4, SpriteID.CO_T_Nova_Sad)
    end
    WaitFor(1)
    EndFrame()
  end
  return
end
