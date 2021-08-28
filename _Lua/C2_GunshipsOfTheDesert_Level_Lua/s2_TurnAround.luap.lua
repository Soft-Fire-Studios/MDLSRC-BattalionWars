function s2_TurnAround(owner)
  local turnAroundWarningDone = 0
  while true do
    if turnAroundWarningDone == 0 and IsInArea(GetPlayerUnit(), Map_Zone.TurnAround) and TankReinforcements == 0 and InfantryReinforcements == 0 then
      turnAroundWarningDone = 1
      PhoneMessage(55, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Sad)
      WaitFor(5)
    else
      EndFrame()
      while true do
        if turnAroundWarningDone == 1 and IsInArea(GetPlayerUnit(), Map_Zone.TurnAround) and TankReinforcements == 0 and InfantryReinforcements == 0 then
          turnAroundWarningDone = 2
          PhoneMessage(56, constant.ID_NONE, 0, 6, SpriteID.CO_WF_Austin_Sad)
          break
        end
        EndFrame()
      end
    end
  end
  EndFrame()
  return
end
