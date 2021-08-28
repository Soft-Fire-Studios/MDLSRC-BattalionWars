function Melee_Cutscene_Sepia(owner)
  local sepia = 1
  local fadetime = 7
  repeat
    EndFrame()
  until SepiaFade == true
  WaitFor(2)
  repeat
    SetRenderParamTintBlendFactor(sepia)
    sepia = sepia - 0.03333 / fadetime
    EndFrame()
  until sepia <= 0.01
end
