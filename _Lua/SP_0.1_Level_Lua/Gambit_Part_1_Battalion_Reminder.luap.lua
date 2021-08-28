function Gambit_Part_1_Battalion_Reminder(owner)
  repeat
    EndFrame()
  until StaffBearerUnderPlayerCommand >= 1
  WaitFor(1)
  while StaffBearerUnderPlayerCommand >= 1 do
    if not IsUnderPlayerCommand(Troop.Sgrunt02, constant.PLAYER_ONE) and not IsDead(Troop.Sgrunt02) and not IsUnderPlayerCommand(Troop.Sgrunt03, constant.PLAYER_ONE) and not IsDead(Troop.Sgrunt03) and not IsUnderPlayerCommand(Troop.Sgrunt04, constant.PLAYER_ONE) and not IsDead(Troop.Sgrunt04) and FollowReminderDone == 0 then
      FollowReminderDone = 1
      ClearMessageQueue(constant.PLAYER_ONE)
      PhoneMessage(140, constant.ID_NONE, constant.ARMY_SOLAR, 8, SpriteID.CO_SE_Leiqo_Helmet_Happy, constant.PLAYER_ONE)
      break
    end
    EndFrame()
  end
end
