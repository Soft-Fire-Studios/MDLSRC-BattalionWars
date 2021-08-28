function owner_Despawn_Until_Artillery(owner)
  SetTickScriptWhenDespawned(owner, true)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  Despawn(owner, true)
  repeat
    EndFrame()
  until IsInArea(GetPlayerUnit(), Map_Zone.TriggerTankAmbush) or IsInArea(GetPlayerUnit(), Map_Zone.TriggerArtilleryCutscene)
  Spawn(owner)
  if owner == Building.MGNest06 or owner == Building.MGNest07 then
    repeat
      WaitFor(0.5)
      if GetHealthPercent(owner) <= 5 then
        Kill(owner)
      end
      EndFrame()
    until IsDead(owner)
  end
  EndFrame()
end
