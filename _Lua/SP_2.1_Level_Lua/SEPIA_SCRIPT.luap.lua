function SEPIA_SCRIPT(owner)
  local sepia = 0.8
  local fadetime = 10
  repeat
    EndFrame()
  until SepiaFade == true
  repeat
    SetRenderParamTintBlendFactor(sepia)
    sepia = sepia - 0.03333 / fadetime
    EndFrame()
  until sepia <= 0.01
end
