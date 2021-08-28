function MusicGlobal(owner)
  while true do
    UpdateMusic()
  end
  function PlayLightningSound()
    PlayEffect(Scripted_Effect.LightningSound, 3, 0, 0, 0)
    DebugOut("Lighting")
  end
end
