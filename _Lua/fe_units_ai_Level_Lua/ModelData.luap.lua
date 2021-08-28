function ModelData(owner)
end
local cleanUpName = 26
local cleanUpDesc = 28
UnitNames = {
  {
    2,
    6,
    10,
    14,
    18,
    22,
    cleanUpName
  },
  {
    44,
    48,
    52,
    56,
    60,
    64
  },
  {
    86,
    90,
    94,
    98,
    102,
    106
  },
  {
    124,
    128,
    132,
    136,
    140,
    144
  }
}
UnitDescriptions = {
  {
    4,
    8,
    12,
    16,
    20,
    24,
    cleanUpDesc
  },
  {
    46,
    50,
    54,
    58,
    62,
    66
  },
  {
    88,
    92,
    96,
    100,
    104,
    108
  },
  {
    126,
    130,
    134,
    138,
    142,
    146
  }
}
function GetModelWidget(unit)
  local units = {
    {
      GUI_3D_Model_Array.Unit_Troop_Ground_AI_Grunt,
      GUI_3D_Model_Array.Unit_Troop_Ground_AI_Bazooka_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_AI_Flamer_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_AI_A_A_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_AI_Mortar_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_AI_H_M_Gun_Vet,
      GUI_3D_Model_Array.Unit_Troop_Ground_AI_Clean_Up
    },
    {
      0,
      GUI_3D_Model_Array.Unit_Ground_AI_Light_Tank,
      GUI_3D_Model_Array.Unit_Ground_AI_Heavy_Tank,
      0,
      0,
      GUI_3D_Model_Array.Unit_Ground_AI_Artillery
    },
    {
      0,
      GUI_3D_Model_Array.Unit_Air_AI_Fighter,
      GUI_3D_Model_Array.Unit_Air_AI_Bomber,
      0,
      GUI_3D_Model_Array.Unit_Air_AI_Air_Transport,
      0
    },
    {
      GUI_3D_Model_Array.Unit_Water_AI_Frigate,
      GUI_3D_Model_Array.Unit_Water_AI_Battleship,
      0,
      GUI_3D_Model_Array.Unit_Water_AI_Submarine,
      GUI_3D_Model_Array.Unit_Water_AI_Transport,
      0
    }
  }
  return units[ForcesType][unit]
end
function GetModelCount()
  local units = {
    7,
    6,
    5,
    5
  }
  return units[ForcesType]
end
function ModelData_end()
end
