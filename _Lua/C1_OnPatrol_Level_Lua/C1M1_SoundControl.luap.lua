function C1M1_SoundControl(owner)
  while true do
    if IsDead(Building.TlisteningPost0001) then
      SetActive(Sound_Ambient_Sound_Area_Point_Sphere.ListeningPost01, constant.INACTIVE)
    end
    if IsDead(Building.TlisteningPost0002) then
      SetActive(Sound_Ambient_Sound_Area_Point_Sphere.ListeningPost02, constant.INACTIVE)
    end
    if IsDead(Building.TlisteningPost0003) then
      SetActive(Sound_Ambient_Sound_Area_Point_Sphere.ListeningPost03, constant.INACTIVE)
    end
    if IsDead(Building.TlisteningPost0010) then
      SetActive(Sound_Ambient_Sound_Area_Point_Sphere.ListeningPost10, constant.INACTIVE)
    end
    if IsDead(Building.TlisteningPost0011) then
      SetActive(Sound_Ambient_Sound_Area_Point_Sphere.ListeningPost11, constant.INACTIVE)
    end
    if IsDead(Building.TlisteningPost0001) and IsDead(Building.TlisteningPost0002) and IsDead(Building.TlisteningPost0003) and IsDead(Building.TlisteningPost0010) and IsDead(Building.TlisteningPost0011) then
      break
    else
    end
    WaitFor(1)
  end
end
