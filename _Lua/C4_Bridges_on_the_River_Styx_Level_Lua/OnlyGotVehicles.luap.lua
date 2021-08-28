function OnlyGotVehicles(owner)
  local loop = 0
  repeat
    WaitFor(1)
    if alldone == 1 then
      DebugOut("Stopped testing for capture points")
      loop = 1
    end
    if roadtox == 1 then
      return
    end
    if CountRemainingPlayerTroops() == 0 then
      if AllPlayerUnitsDead(0) then
        EndFrame()
        do break end
        while GetPlayerUnit() == nil do
          EndFrame()
        end
      end
      FreezePlayer()
      ClearMessageQueue()
      PhoneMessage(55, 0, 0, 6, SpriteID.CO_WF_Herman_Sad)
      DebugOut("Lost all ground troops")
      WaitFor(9)
      LoseMission(302)
      loop = 1
    end
    EndFrame()
  until loop == 1
end
