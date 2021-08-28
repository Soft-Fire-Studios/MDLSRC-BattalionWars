function Sepia(owner)
  local sepia = 0.6
  local currentsepia = 0
  local fadetime = 5
  repeat
    EndFrame()
  until SepiaFade == true
  repeat
    SetRenderParamTintBlendFactor(currentsepia)
    currentsepia = currentsepia + 0.03333 / fadetime
    EndFrame()
  until sepia <= currentsepia
end
