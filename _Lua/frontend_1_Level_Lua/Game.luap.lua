function Game(owner)
  local tableData = {}
  tableData.gridColour = {
    127,
    0,
    127,
    127
  }
  tableData.selectedButton = 1
  tableData.clearColour = {
    0,
    0,
    0,
    127
  }
  local bVictory = function()
    local speed = rint(GetRandom(100))
    local power = rint(GetRandom(100))
    local tech = rint(GetRandom(100))
    local grade = rint(GetRandom(GRADE.S - 1)) + 1
    SetMissionComplete(constant.MISSIONOVER_PLAYER1_WINS, speed, power, tech, grade)
  end
  local bDefeat = function()
    SetMissionComplete(constant.MISSIONOVER_LOSE, 0, 0, 0, 0)
  end
  tableData.buttons = {
    {onPressA = bVictory, onPressB = bDefeat}
  }
  tableData.sprites = {
    {
      SpriteID.FE_GAMEPAD_A,
      {600, 424}
    },
    {
      SpriteID.FE_GAMEPAD_B,
      {40, 424}
    }
  }
  tableData.textBoxes = {
    {
      "Defeat",
      {60, 404},
      {250, 15},
      {
        127,
        0,
        32,
        127
      },
      StatusFont,
      JUSTIFY.LEFT
    },
    {
      "Play Game",
      {200, 404},
      {240, 15},
      {
        127,
        127,
        0,
        127
      },
      StatusFont,
      JUSTIFY.CENTRE
    },
    {
      "Victory",
      {320, 404},
      {250, 15},
      {
        0,
        127,
        0,
        127
      },
      StatusFont,
      JUSTIFY.RIGHT
    }
  }
  function GetGamePage()
    return tableData
  end
  DebugOut("Game ticked ***")
end
