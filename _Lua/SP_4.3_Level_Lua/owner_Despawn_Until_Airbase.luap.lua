function owner_Despawn_Until_Airbase(owner)
  SetTickScriptWhenDespawned(owner, true)
  repeat
    EndFrame()
  until IntroCutsceneEnd == 1
  Despawn(owner, true)
  WaitFor(5)
  repeat
    EndFrame()
  until SpawnEndTroops == 1
  Spawn(owner)
end
