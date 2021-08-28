function SoundControl(owner)
  local loop = 0
  while loop == 0 do
    if IsDead(Destroyable_Object.Entity0028) then
      loop = 1
    end
    EndFrame()
  end
end
