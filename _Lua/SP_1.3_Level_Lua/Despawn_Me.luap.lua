function Despawn_Me(owner)
  SetTickScriptWhenDespawned(owner, true)
  repeat
    EndFrame()
  until assaultshot == 1
  Despawn(owner)
  repeat
    EndFrame()
  until cutscene == 0
  repeat
    EndFrame()
  until assaultshot == 2
  Spawn(owner)
end
