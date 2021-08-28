function TriggerAttacks(owner)
  scriptTriggerAttacks = owner
  local ruinsflamers = 0
  local mainbasemessage = 0
  repeat
    EndFrame()
  until CutsceneIntroFinished == 2
  while true do
    if IsDead(Troop.RuinsFlamer1) and IsDead(Troop.RuinsFlamer2) and IsDead(Troop.RuinsFlamer3) then
      ruinsflamers = 1
    end
    if (0 < NumItemsInArea(Map_Zone.RuinsFlamerTrigger, flag.TYPE_SOLAR) or IsAttacking(Troop.RuinsFlamer1) or IsAttacking(Troop.RuinsFlamer2) or IsAttacking(Troop.RuinsFlamer3)) and ruinsflamers == 0 or GetHealthPercent(Troop.CampfireBazookas1) < 50 and 50 > GetHealthPercent(Troop.CampfireBazookas2) and 50 > GetHealthPercent(Troop.CampfireBazookas3) then
      GoToArea(Troop.RuinsFlamer1, 142, 429, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.RuinsFlamer2, 142, 429, 5, 0, constant.ORDER_NORMAL)
      GoToArea(Troop.RuinsFlamer3, 142, 429, 5, 0, constant.ORDER_NORMAL)
      ClearMessageQueue()
      PhoneMessage(37, constant.ID_NONE, constant.ARMY_ANGLO, 0, SpriteID.CO_AI_Windsor_Sad, constant.PLAYER_ONE)
      DebugOut("Player sighted near Rocket tent circles")
      ruinsflamers = 1
      break
    end
    EndFrame()
  end
end
