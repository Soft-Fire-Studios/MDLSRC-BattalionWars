function TN_ReconWave(owner)
  while true do
    if IsInArea(owner, Map_Zone.Escape) then
      ReconsEscaped = ReconsEscaped + 1
      Kill(owner)
    end
    WaitFor(2)
  end
end
