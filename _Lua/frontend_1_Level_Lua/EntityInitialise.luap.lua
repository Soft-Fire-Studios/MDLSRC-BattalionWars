if Unit_Group == nil then
  Unit_Group = {}
end
if Scripted_Effect == nil then
  Scripted_Effect = {}
end
if Objective_Marker == nil then
  Objective_Marker = {}
end
if Damage_Zone == nil then
  Damage_Zone = {}
end
if SpriteID == nil then
  SpriteID = {}
end
if Capture_Point == nil then
  Capture_Point = {}
end
if Pickup == nil then
  Pickup = {}
end
if Sound_Ambient_Sound_Area_Point_Sphere == nil then
  Sound_Ambient_Sound_Area_Point_Sphere = {}
end
if Objective == nil then
  Objective = {}
end
if Map_Zone == nil then
  Map_Zone = {}
end
if Building == nil then
  Building = {}
end
if Sound_Ambient_Sound_Area_Point_Box == nil then
  Sound_Ambient_Sound_Area_Point_Box = {}
end
if SoundID == nil then
  SoundID = {}
end
if Air_Vehicle == nil then
  Air_Vehicle = {}
end
if Waypoint == nil then
  Waypoint = {}
end
if Ground_Vehicle == nil then
  Ground_Vehicle = {}
end
if Camera == nil then
  Camera = {}
end
if Troop == nil then
  Troop = {}
end
if Destroyable_Object == nil then
  Destroyable_Object = {}
end
SoundID.UI_FE_Adjust = RegisterReflectionId("1300001350")
SoundID.UI_FE_Close = RegisterReflectionId("1300001351")
SoundID.UI_FE_Fail = RegisterReflectionId("1300001352")
SoundID.UI_FE_MapNav = RegisterReflectionId("1300001353")
SoundID.UI_FE_Navigate = RegisterReflectionId("1300001354")
SoundID.UI_FE_Open = RegisterReflectionId("1300001355")
SoundID.UI_FE_Page = RegisterReflectionId("1300001356")
SoundID.UI_FE_Popup = RegisterReflectionId("1300001357")
SpriteID.FE_BTN_DONE_S = RegisterReflectionId("1300001563")
SpriteID.FE_BTN_DONE_C = RegisterReflectionId("1300001562")
SpriteID.FE_BTN_DONE_B = RegisterReflectionId("1300001561")
SpriteID.FE_BTN_DONE_A = RegisterReflectionId("1300001560")
SpriteID.FE_BTN_MAP01_BONUS = RegisterReflectionId("1300001347")
SpriteID.FE_OVR_GRADE_C = RegisterReflectionId("1300001296")
SpriteID.FE_OVR_GRADE_B = RegisterReflectionId("1300001295")
SpriteID.FE_OVR_GRADE_A = RegisterReflectionId("1300001294")
SpriteID.FE_OVR_GRADE_S = RegisterReflectionId("1300001293")
SpriteID.FE_OVR_BADGE_S = RegisterReflectionId("1300000951")
SpriteID.FE_OVR_BADGE_C = RegisterReflectionId("1300000950")
SpriteID.FE_OVR_BADGE_B = RegisterReflectionId("1300000949")
SpriteID.FE_OVR_BADGE_A = RegisterReflectionId("1300000948")
SpriteID.FE_OVR_FIRE_01 = RegisterReflectionId("1300000844")
SpriteID.FE_OVR_DEFEAT_T = RegisterReflectionId("1300000843")
SpriteID.FE_OVR_DEFEAT_A = RegisterReflectionId("1300000842")
SpriteID.FE_OVR_DEFEAT_F = RegisterReflectionId("1300000841")
SpriteID.FE_OVR_DEFEAT_E = RegisterReflectionId("1300000840")
SpriteID.FE_OVR_DEFEAT_D = RegisterReflectionId("1300000839")
SpriteID.FE_BTN_MAP03_LINKb = RegisterReflectionId("1300000540")
SpriteID.FE_BTN_MAP03_LINKa = RegisterReflectionId("1300000539")
SpriteID.FE_BTN_MAP04_PLAY2 = RegisterReflectionId("1300000477")
SpriteID.FE_BTN_MAP04_PLAY1 = RegisterReflectionId("1300000474")
SpriteID.FE_BTN_MAP03_LINKc = RegisterReflectionId("1300000471")
SpriteID.FE_BTN_MAP02_PLAYa = RegisterReflectionId("1300000468")
SpriteID.FE_BTN_MAP01_DONE = RegisterReflectionId("1300000465")
SpriteID.FE_BTN_ARROW01_R = RegisterReflectionId("1300000444")
SpriteID.FE_BTN_ARROW01_L = RegisterReflectionId("1300000441")
SpriteID.FE_GAMEPAD_A = RegisterReflectionId("1300000421")
SpriteID.FE_GAMEPAD_B = RegisterReflectionId("1300000420")
SpriteID.FE_BTN_LNG01_UNSEL = RegisterReflectionId("1300000419")
SpriteID.FE_BTN_LNG01_SEL = RegisterReflectionId("1300000418")
Camera.Frontend = RegisterReflectionId("2138050664")
SpriteID.FE_BTN_MAP02_PLAYb = RegisterReflectionId("1300000549")
SpriteID.FE_OVR_BADGE_01 = RegisterReflectionId("1300000706")
SpriteID.FE_OVR_BADGE_STAR = RegisterReflectionId("1300000713")
SpriteID.FE_OVR_VICTORY_V = RegisterReflectionId("1300000781")
SpriteID.FE_OVR_VICTORY_V01 = RegisterReflectionId("1300000782")
SpriteID.FE_OVR_VICTORY_V02 = RegisterReflectionId("1300000783")
SpriteID.FE_OVR_VICTORY_I = RegisterReflectionId("1300000784")
SpriteID.FE_OVR_VICTORY_I01 = RegisterReflectionId("1300000785")
SpriteID.FE_OVR_VICTORY_I02 = RegisterReflectionId("1300000786")
SpriteID.FE_OVR_VICTORY_C = RegisterReflectionId("1300000787")
SpriteID.FE_OVR_VICTORY_C01 = RegisterReflectionId("1300000788")
SpriteID.FE_OVR_VICTORY_C02 = RegisterReflectionId("1300000789")
SpriteID.FE_OVR_VICTORY_T = RegisterReflectionId("1300000790")
SpriteID.FE_OVR_VICTORY_T01 = RegisterReflectionId("1300000791")
SpriteID.FE_OVR_VICTORY_T02 = RegisterReflectionId("1300000792")
SpriteID.FE_OVR_VICTORY_O = RegisterReflectionId("1300000793")
SpriteID.FE_OVR_VICTORY_O01 = RegisterReflectionId("1300000794")
SpriteID.FE_OVR_VICTORY_O02 = RegisterReflectionId("1300000795")
SpriteID.FE_OVR_VICTORY_R = RegisterReflectionId("1300000796")
SpriteID.FE_OVR_VICTORY_R01 = RegisterReflectionId("1300000797")
SpriteID.FE_OVR_VICTORY_R02 = RegisterReflectionId("1300000798")
SpriteID.FE_OVR_VICTORY_Y = RegisterReflectionId("1300000799")
SpriteID.FE_OVR_VICTORY_Y01 = RegisterReflectionId("1300000800")
SpriteID.FE_OVR_VICTORY_Y02 = RegisterReflectionId("1300000801")
SpriteID.FE_BTN_MAP01_BONUS2 = RegisterReflectionId("1300001532")
SpriteID.FE_GAMEPAD_X = RegisterReflectionId("1300001573")
