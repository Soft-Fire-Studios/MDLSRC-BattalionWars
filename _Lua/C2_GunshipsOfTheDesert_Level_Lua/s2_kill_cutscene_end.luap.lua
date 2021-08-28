function s2_kill_cutscene_end(owner)
  WaitFor(1)
  while true do
    if EndCutsceneStarted == 1 then
      repeat
        if ReadControllerState(constant.CONTROL_SKIP_CUTSCENE, constant.CONTROL_JUST_PRESSED) or ReadControllerState(constant.CONTROL_SKIP_CUTSCENE_ALT, constant.CONTROL_JUST_PRESSED) then
          Kill(cutsceneEnd)
          cutsceneEnd = 1
          CameraFade(constant.FADE_OUT, constant.WAIT, 1)
          s2_LevelWon()
          break
        end
        EndFrame()
      until cutsceneEnd == 1
    end
    EndFrame()
  end
  EndFrame()
  return
end
