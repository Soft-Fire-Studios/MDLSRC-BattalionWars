function RemoveForcefield(owner)
  WaitFor(25)
  repeat
    WaitFor(1)
    EndFrame()
  until obeliskskilled == 5
  PhoneMessage(17, 0, 0, 4, SpriteID.CO_WF_Austin_Happy)
  Vanish(Destroyable_Object.ForceField)
  SetActive(Sound_Ambient_Sound_Area_Point_Sphere.Forcefield, constant.INACTIVE)
  SetObjectiveData(Objective_Marker.CenotaphMarker, constant.OBJECTIVE_MARKER_DATA_VISIBLE, 1)
  SetObjectiveData(Objective.Destroy_Cenotaph, constant.OBJECTIVE_DATA_VISIBLE, 1)
  EndFrame()
end
