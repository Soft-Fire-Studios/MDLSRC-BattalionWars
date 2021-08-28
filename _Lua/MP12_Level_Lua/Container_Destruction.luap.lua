function Container_Destruction(owner)
  local container1 = 0
  local container2 = 0
  local container3 = 0
  while true do
    if container1 == 0 and IsDead(Destroyable_Object.Container_1_Bottom) then
      container1 = 1
      if IsDead(Destroyable_Object.Container_1_Top) == false then
        Kill(Destroyable_Object.Container_1_Top)
      end
    end
    EndFrame()
    if container2 == 0 and IsDead(Destroyable_Object.Container_2_Bottom) then
      container2 = 1
      if IsDead(Destroyable_Object.Container_2_Top) == false then
        Kill(Destroyable_Object.Container_2_Top)
      end
    end
    EndFrame()
    if container3 == 0 and IsDead(Destroyable_Object.Container_3_Bottom) then
      container3 = 1
      if IsDead(Destroyable_Object.Container_3_Top) == false then
        Kill(Destroyable_Object.Container_3_Top)
      end
    end
    EndFrame()
  end
end
