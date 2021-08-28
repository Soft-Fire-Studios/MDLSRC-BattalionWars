function OnlyGotRecon(owner)
  local loop = 0
  onlygotrecon = owner
  repeat
    WaitFor(1)
    if communicationstower == 1 and fuelrefinery == 1 then
      DebugOut("Stopped testing for capture points")
      loop = 1
    end
    if missilevetsfree == 1 and bazookavetsfree == 1 and CountRemainingPlayerTroops() == 0 then
      if AllPlayerUnitsDead(0) then
        EndFrame()
        do break end
        while GetPlayerUnit() == nil do
          EndFrame()
        end
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(35, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
      DebugOut("Lost all ground troops")
      WaitFor(8)
      LoseMission(302)
      loop = 1
    end
    EndFrame()
  until loop == 1
end
