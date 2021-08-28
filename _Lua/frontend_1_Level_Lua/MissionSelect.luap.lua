function MissionSelect(owner)
  local msTable = {}
  msTable.selectedButton = 1
  msTable.clearColour = {
    0,
    0,
    0,
    127
  }
  msTable.repeatRate = 4
  msTable.diagNav = true
  local chosenSelectedLevel = 0
  local moveIdx = 0
  local triggerArrowScaleL = 0
  local triggerArrowScaleR = 0
  local triggerArrowScaleU = 0
  local triggerArrowScaleD = 0
  local arrowScaleMax = 120
  local arrowScaleRate = 12
  local bExitingFlag = false
  local bExitFlag = false
  local exitFadeCount = 0
  local missionsDoneOK = {
    {
      6,
      21,
      1,
      7,
      7,
      85
    },
    {
      9,
      22,
      8,
      11,
      4,
      85
    },
    {
      15,
      23,
      12,
      16,
      5,
      85
    },
    {
      18,
      24,
      17,
      20,
      4,
      90
    }
  }
  local oldSelectedLevel = 0
  local newSelectedLevel = 0
  local msXPos = 0
  local msYPos = 0
  local function bgpos()
    return msXPos * 0.2, msYPos * 0.1
  end
  local wlp = function()
    return 0, 22
  end
  local function wls()
    return 640 - (msXPos - 320), 379
  end
  local function wrp()
    return 640 - (msXPos - 320), 22
  end
  local function wrs()
    return msXPos - 320, 379
  end
  local function tlp()
    return msXPos - 320, msYPos - 240 + 22
  end
  local function tls()
    return 640 - (msXPos - 320), 379
  end
  local function trp()
    return 0, msYPos - 240 + 22
  end
  local function trs()
    return msXPos - 320, 379
  end
  local BGShade = {
    90,
    90,
    127,
    127
  }
  local mapShade = {
    95,
    95,
    95,
    127
  }
  msTable.backgrounds = {
    {
      "BG_MAP02_BG",
      {0, 22},
      {640, 379},
      bgpos,
      {640, 379},
      BGShade
    },
    {
      "BG_MAP02_L",
      wlp,
      wls,
      tlp,
      tls,
      mapShade
    },
    {
      "BG_MAP02_R",
      wrp,
      wrs,
      trp,
      trs,
      mapShade
    }
  }
  local triggerColourStart = 180
  local triggerColour = 0
  local triggerColourRate = 8 * 6
  local function triggeredTextColour()
    local a = 127
    if triggerColour >= triggerColourStart then
      a = 0
    elseif triggerColour > 0 then
      a = cos(triggerColour) * 64 + 64
    end
    return 127, 100, 0, a
  end
  local triggerPanelStart = 360
  local triggerPanel = 0
  local triggerPanelRate = 5 * 6
  local function triggeredPanelColour()
    local a = 127
    if triggerPanel >= triggerColourStart then
      a = 0
    elseif triggerPanel > 0 then
      a = cos(triggerPanel) * 64 + 64
    end
    return 127, 127, 127, a
  end
  local function triggeredTextColourYellow()
    local a = 127
    if triggerPanel >= triggerColourStart then
      a = 0
    elseif triggerPanel > 0 then
      a = cos(triggerPanel) * 64 + 64
    end
    return 127, 127, 0, a
  end
  local nextText = {
    StringID.NEXT,
    {220, 207},
    {200, 20},
    triggeredTextColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local replayText = {
    StringID.REPLAY,
    {220, 207},
    {200, 20},
    triggeredTextColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local bonusText = {
    StringID.BONUS,
    {220, 207},
    {200, 20},
    triggeredTextColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local missionText = {
    StringID.MISSION,
    {220, 245},
    {200, 20},
    triggeredTextColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local rmsRota = 0
  local function rmsRot()
    rmsRota = rmsRota + 6
    return cos(rmsRota) * 180
  end
  local newMissionSprite1 = {
    SpriteID.FE_BTN_MAP04_PLAY1,
    {320, 240},
    1,
    0,
    triggeredTextColour
  }
  local newMissionSprite2 = {
    SpriteID.FE_BTN_MAP04_PLAY2,
    {320, 240},
    1,
    0,
    triggeredTextColour
  }
  local replayMissionSprite = {
    SpriteID.FE_BTN_MAP02_PLAYa,
    {320, 240},
    1,
    rmsRot,
    triggeredTextColour
  }
  local rectBlank = {
    Top = {
      {-10, 0},
      {660, 22},
      {
        0,
        0,
        0,
        127
      }
    },
    Bottom = {
      {-10, 401},
      {660, 101},
      {
        0,
        0,
        0,
        127
      }
    }
  }
  local bezierCurves = {}
  local bezierDot, newDotSel, newDotUnsel, oldDot
  local doneBadges = {}
  local newUnsel, newBonus, lockedBonus
  local dotCount = 0
  local dotCount2 = 0
  local nextMissionNum = 1
  local function openSprites()
    newBonus = GetSprite(SpriteID.FE_BTN_MAP01_BONUS)
    ZDepthSprite(newBonus, 14780)
    lockedBonus = GetSprite(SpriteID.FE_BTN_MAP01_BONUS2)
    ZDepthSprite(lockedBonus, 14780)
    newUnsel = GetSprite(SpriteID.FE_BTN_MAP02_PLAYb)
    ZDepthSprite(newUnsel, 14780)
    newDotSel = GetSprite(SpriteID.FE_BTN_MAP03_LINKc)
    ZDepthSprite(newDotSel, 14770)
    newDotUnsel = GetSprite(SpriteID.FE_BTN_MAP03_LINKb)
    ZDepthSprite(newDotUnsel, 14770)
    oldDot = GetSprite(SpriteID.FE_BTN_MAP03_LINKa)
    ZDepthSprite(oldDot, 14770)
    doneBadges[GRADE.C] = GetSprite(SpriteID.FE_BTN_DONE_C)
    ZDepthSprite(doneBadges[GRADE.C], 14770)
    doneBadges[GRADE.B] = GetSprite(SpriteID.FE_BTN_DONE_B)
    ZDepthSprite(doneBadges[GRADE.B], 14770)
    doneBadges[GRADE.A] = GetSprite(SpriteID.FE_BTN_DONE_A)
    ZDepthSprite(doneBadges[GRADE.A], 14770)
    doneBadges[GRADE.S] = GetSprite(SpriteID.FE_BTN_DONE_S)
    ZDepthSprite(doneBadges[GRADE.S], 14770)
    OpenSprite(newMissionSprite1)
    OpenSprite(newMissionSprite2)
    OpenSprite(replayMissionSprite)
  end
  local function closeSprites()
    CloseSprite(newMissionSprite1)
    CloseSprite(newMissionSprite2)
    CloseSprite(replayMissionSprite)
  end
  local function openBezier()
    local gap
    bezierCurves[1] = {}
    bezierCurves[1].n = 0
    for i = 2, maxMissions do
      bezierCurves[i] = {}
      bezierCurves[i].n = 0
      if missionDataTable[i].status ~= LEVELSTATUS.NEW then
        if missionDataTable[i].status == LEVELSTATUS.DONE then
          gap = 8
        elseif missionDataTable[i].status == LEVELSTATUS.NEXT then
          gap = 12
        end
        QuadraticBezier(missionDataTable[i - 1].X, missionDataTable[i - 1].Y, missionDataTable[i].X, missionDataTable[i].Y, gap, 30, bezierCurves[i])
      end
    end
  end
  local function closeBezier()
    bezierCurves = {}
  end
  local function IsBonusUnlocked(bonus)
    local speed, power, technique, grade
    local missions = 0
    local total = 0
    local average
    local data = missionsDoneOK[bonus]
    if IsBonusDone(bonus) then
      return true
    end
    for i = 1, data[5] do
      local mission = i + data[3] - 1
      speed, power, technique, grade = GetStoredMissionData(mission)
      total = total + speed + power + technique
    end
    average = rint(total / 3 / data[5])
    if average >= data[6] then
      return true
    end
    return false
  end
  local function openMap()
    LevelsDone, SelectedLevel, SelectedSlot = GetPersistentData()
    LoadCurrentMissionStats(SelectedLevel)
    nextMissionNum = LevelsDone + 1
    if nextMissionNum > maxMissions then
      nextMissionNum = maxMissions
    end
    if SelectedLevel < 1 then
      SelectedLevel = nextMissionNum
    end
    SetCurrentLevel(SelectedLevel)
    msTable.selectedButton = SelectedLevel
    oldSelectedLevel = SelectedLevel
    for i = 1, maxMissions do
      if i <= LevelsDone then
        local junk, grade
        junk, junk, junk, grade = GetStoredMissionData(i)
        if grade == GRADE.NONE then
          missionDataTable[i].grade = GRADE.C
        else
          missionDataTable[i].grade = grade
        end
        missionDataTable[i].status = LEVELSTATUS.DONE
      elseif i == nextMissionNum then
        missionDataTable[i].status = LEVELSTATUS.NEXT
      else
        missionDataTable[i].status = LEVELSTATUS.NEW
      end
    end
    for i = 1, maxBonusMissions do
      local bonus = maxMissions + i
      if IsBonusDone(i) then
        local junk, grade
        junk, junk, junk, grade = GetStoredMissionData(bonus)
        if grade == GRADE.NONE then
          missionDataTable[bonus].grade = GRADE.C
        else
          missionDataTable[bonus].grade = grade
        end
        missionDataTable[bonus].status = LEVELSTATUS.DONE
      elseif IsBonusUnlocked(i) then
        missionDataTable[bonus].status = LEVELSTATUS.NEW
      else
        missionDataTable[bonus].status = LEVELSTATUS.LOCKED
      end
    end
  end
  local function renderBeziers()
    for mission = 1, maxMissions do
      if missionDataTable[mission].status == LEVELSTATUS.DONE then
        for i = 1, bezierCurves[mission].n do
          MoveSprite(oldDot, bezierCurves[mission][i][1] - msXPos + 320, bezierCurves[mission][i][2] - msYPos + 240)
          DrawSprite(oldDot)
        end
      elseif missionDataTable[mission].status == LEVELSTATUS.NEXT then
        local thisDotCount = 0
        if SelectedLevel == mission then
          dotCount2 = dotCount2 + 1
          if dotCount2 > 2 then
            dotCount = dotCount + 1
            dotCount2 = 0
          end
          if dotCount > bezierCurves[mission].n then
            dotCount = 1
          end
          thisDotCount = dotCount
          bezierDot = newDotSel
        else
          bezierDot = newDotUnsel
        end
        for i = 1, bezierCurves[mission].n do
          if thisDotCount ~= i then
            MoveSprite(bezierDot, bezierCurves[mission][i][1] - msXPos + 320, bezierCurves[mission][i][2] - msYPos + 240)
            DrawSprite(bezierDot)
          end
        end
      end
    end
  end
  local function renderBonusButton(bonus)
    local mission = missionsDoneOK[bonus][2]
    if missionsDoneOK[bonus][1] <= LevelsDone then
      if missionDataTable[mission].status == LEVELSTATUS.DONE then
        if mission == SelectedLevel then
          local doneVictory = doneBadges[missionDataTable[mission].grade]
          MoveSprite(doneVictory, missionDataTable[mission].X - msXPos + 320, missionDataTable[mission].Y - msYPos + 240)
          local j, a
          j, j, j, a = triggeredPanelColour()
          FadeSprite(doneVictory, 127 - a)
          DrawSprite(doneVictory)
          RenderTextBox(replayText, 20)
          RenderTextBox(missionText, 20)
          RenderSprite(replayMissionSprite, 100)
        else
          local doneVictory = doneBadges[missionDataTable[mission].grade]
          MoveSprite(doneVictory, missionDataTable[mission].X - msXPos + 320, missionDataTable[mission].Y - msYPos + 240)
          FadeSprite(doneVictory, 127)
          DrawSprite(doneVictory)
        end
      elseif missionDataTable[mission].status == LEVELSTATUS.NEW then
        if mission == SelectedLevel then
          local j, a
          j, j, j, a = triggeredPanelColour()
          MoveSprite(newBonus, missionDataTable[mission].X - msXPos + 320, missionDataTable[mission].Y - msYPos + 240)
          FadeSprite(newBonus, 127 - a)
          DrawSprite(newBonus)
          RenderSprite(newMissionSprite1, 50)
          RenderSprite(newMissionSprite2, 50)
          RenderTextBox(bonusText, 100)
          RenderTextBox(missionText, 100)
        else
          MoveSprite(newBonus, missionDataTable[mission].X - msXPos + 320, missionDataTable[mission].Y - msYPos + 240)
          FadeSprite(newBonus, 127)
          DrawSprite(newBonus)
        end
      else
        MoveSprite(lockedBonus, missionDataTable[mission].X - msXPos + 320, missionDataTable[mission].Y - msYPos + 240)
        DrawSprite(lockedBonus)
      end
    end
  end
  local function renderMissionButton(mission)
    if missionDataTable[mission].status == LEVELSTATUS.DONE then
      if mission == SelectedLevel then
        local doneVictory = doneBadges[missionDataTable[mission].grade]
        MoveSprite(doneVictory, missionDataTable[mission].X - msXPos + 320, missionDataTable[mission].Y - msYPos + 240)
        local j, a
        j, j, j, a = triggeredPanelColour()
        FadeSprite(doneVictory, 127 - a)
        DrawSprite(doneVictory)
        RenderTextBox(replayText, 100)
        RenderTextBox(missionText, 100)
        RenderSprite(replayMissionSprite, 100)
      else
        local doneVictory = doneBadges[missionDataTable[mission].grade]
        MoveSprite(doneVictory, missionDataTable[mission].X - msXPos + 320, missionDataTable[mission].Y - msYPos + 240)
        FadeSprite(doneVictory, 127)
        DrawSprite(doneVictory)
      end
    elseif missionDataTable[mission].status == LEVELSTATUS.NEXT then
      MoveSprite(newUnsel, missionDataTable[mission].X - msXPos + 320, missionDataTable[mission].Y - msYPos + 240)
      DrawSprite(newUnsel)
      if mission == SelectedLevel then
        RenderSprite(newMissionSprite1, 50)
        RenderSprite(newMissionSprite2, 50)
        RenderTextBox(nextText, 100)
        RenderTextBox(missionText, 100)
      end
    end
  end
  local function renderMS()
    for mission = 1, maxBonusMissions do
      renderBonusButton(mission)
    end
    for mission = 1, maxMissions do
      renderMissionButton(mission)
    end
  end
  local function setNextMap()
    for i = 1, maxMissions + maxBonusMissions do
      msTable.nextMap[i] = msTable.nextMapData[i]
    end
    msTable.nextMap[nextMissionNum][2] = nextMissionNum
    for i = 1, maxBonusMissions do
      local mission = missionsDoneOK[i][1]
      if mission > LevelsDone then
        msTable.nextMap[mission][3] = mission
        msTable.nextMap[mission][4] = mission
      end
    end
  end
  local function resetNextMap()
    local n
    if nextMissionNum < maxMissions then
      n = nextMissionNum + 1
    else
      n = nextMissionNum
    end
    msTable.nextMap[nextMissionNum][2] = n
  end
  local getMissionName = function()
    return GetString(missionDataTable[SelectedLevel].name)
  end
  local badgePos = {268, 98}
  local gradeBadgeC = {
    SpriteID.FE_OVR_GRADE_C,
    badgePos,
    1,
    0,
    triggeredPanelColour
  }
  local gradeBadgeB = {
    SpriteID.FE_OVR_GRADE_B,
    badgePos,
    1,
    0,
    triggeredPanelColour
  }
  local gradeBadgeA = {
    SpriteID.FE_OVR_GRADE_A,
    badgePos,
    1,
    0,
    triggeredPanelColour
  }
  local gradeBadgeS = {
    SpriteID.FE_OVR_GRADE_S,
    badgePos,
    1,
    0,
    triggeredPanelColour
  }
  local gradeBadgeArray = {
    gradeBadgeC,
    gradeBadgeB,
    gradeBadgeA,
    gradeBadgeS
  }
  local function openGradeBadge()
    OpenSprite(gradeBadgeC)
    OpenSprite(gradeBadgeB)
    OpenSprite(gradeBadgeA)
    OpenSprite(gradeBadgeS)
  end
  local function closeGradeBadge()
    CloseSprite(gradeBadgeC)
    CloseSprite(gradeBadgeB)
    CloseSprite(gradeBadgeA)
    CloseSprite(gradeBadgeS)
  end
  local missionStatStrings = {}
  local function gotStats()
    return missionStatStrings[SelectedLevel].gotStats
  end
  local function setStatStrings()
    local speed, power, technique, grade, total
    if missionDataTable[SelectedLevel].status == LEVELSTATUS.LOCKED then
      local campaign
      local numMissions = 0
      local average
      for i = 1, maxBonusMissions do
        if missionsDoneOK[i][2] == SelectedLevel then
          campaign = i
          break
        end
      end
      total = 0
      for i = missionsDoneOK[campaign][3], missionsDoneOK[campaign][4] do
        speed, power, technique, grade = GetStoredMissionData(i)
        total = total + speed + power + technique
        numMissions = numMissions + 1
      end
      average = rint(total / 3 / numMissions)
      missionStatStrings[SelectedLevel].pointsSoFarStr = GetString(StringID.CAMPAIGN) .. " " .. campaign .. " " .. GetString(StringID.TOTAL_SCORE)
      missionStatStrings[SelectedLevel].pointsSoFarNum = "" .. average .. "%"
      missionStatStrings[SelectedLevel].pointsNeededStr = GetString(StringID.REQUIRED_TO_UNLOCK)
      missionStatStrings[SelectedLevel].pointsNeededNum = "" .. missionsDoneOK[campaign][6] .. "%"
    else
      speed, power, technique, grade = GetMissionData()
      missionStatStrings[SelectedLevel].speedStr = "" .. rint(speed) .. "%"
      missionStatStrings[SelectedLevel].techniqueStr = "" .. rint(technique) .. "%"
      missionStatStrings[SelectedLevel].powerStr = "" .. rint(power) .. "%"
      total = speed + technique + power
      missionStatStrings[SelectedLevel].totalStr = "" .. rint(total / 3) .. "%"
      if grade == GRADE.S then
        missionStatStrings[SelectedLevel].grade = gradeBadgeS
      elseif grade == GRADE.A then
        missionStatStrings[SelectedLevel].grade = gradeBadgeA
      elseif grade == GRADE.B then
        missionStatStrings[SelectedLevel].grade = gradeBadgeB
      else
        missionStatStrings[SelectedLevel].grade = gradeBadgeC
      end
    end
    missionStatStrings[SelectedLevel].gotStats = true
  end
  local function fSpeedStr()
    return missionStatStrings[SelectedLevel].speedStr
  end
  local function fPowerStr()
    return missionStatStrings[SelectedLevel].powerStr
  end
  local function fTechniqueStr()
    return missionStatStrings[SelectedLevel].techniqueStr
  end
  local function fTotalStr()
    return missionStatStrings[SelectedLevel].totalStr
  end
  local function fPointsSoFar()
    return missionStatStrings[SelectedLevel].pointsSoFarStr
  end
  local function fPointsNeeded()
    return missionStatStrings[SelectedLevel].pointsNeededStr
  end
  local function fPointsSoFarNum()
    return missionStatStrings[SelectedLevel].pointsSoFarNum
  end
  local function fPointsNeededNum()
    return missionStatStrings[SelectedLevel].pointsNeededNum
  end
  local statsStringsP0 = {
    StringID.POWER,
    {50, 104},
    {160, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.LEFT
  }
  local statsStringsP1 = {
    fPowerStr,
    {50, 104},
    {160, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.RIGHT
  }
  local statsStringsS0 = {
    StringID.SPEED,
    {50, 68},
    {160, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.LEFT
  }
  local statsStringsS1 = {
    fSpeedStr,
    {50, 68},
    {160, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.RIGHT
  }
  local statsStringsT0 = {
    StringID.TECHNIQUE,
    {50, 86},
    {160, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.LEFT
  }
  local statsStringsT1 = {
    fTechniqueStr,
    {50, 86},
    {160, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.RIGHT
  }
  local statsStringsTot0 = {
    StringID.TOTAL,
    {300, 68},
    {100, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.CENTRE
  }
  local statsStringsTot1 = {
    fTotalStr,
    {300, 86},
    {100, 35},
    triggeredPanelColour,
    GUIFontLarge,
    JUSTIFY.CENTRE
  }
  local statsStringsNext = {
    StringID.NEXT_MISSION,
    {60, 86},
    {320, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.CENTRE
  }
  local statsStringsUnlocked = {
    StringID.UNLOCKED,
    {60, 86},
    {320, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.CENTRE
  }
  local statsPointsSoFar = {
    fPointsSoFar,
    {60, 75},
    {300, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.LEFT
  }
  local statsPointsSoFarNum = {
    fPointsSoFarNum,
    {60, 75},
    {300, 15},
    triggeredPanelColour,
    PlinthFont,
    JUSTIFY.RIGHT
  }
  local statsPointsNeeded = {
    fPointsNeeded,
    {60, 96},
    {300, 15},
    triggeredTextColourYellow,
    PlinthFont,
    JUSTIFY.LEFT
  }
  local statsPointsNeededNum = {
    fPointsNeededNum,
    {60, 96},
    {300, 15},
    triggeredTextColourYellow,
    PlinthFont,
    JUSTIFY.RIGHT
  }
  local missionName = {
    getMissionName,
    {60, 42},
    {320, 15},
    triggeredPanelColour,
    GUIFont,
    JUSTIFY.CENTRE
  }
  local missionPanel = {
    "PNL_MISSION_01",
    {10, 30},
    {408, 120},
    {0, 0},
    {408, 120},
    triggeredPanelColour
  }
  local function openMissionPanel()
    OpenFlat(missionPanel)
  end
  local function closeMissionPanel()
    CloseFlat(missionPanel)
  end
  local function renderMissionPanel()
    RenderFlat(missionPanel, 1700)
    RenderTextBox(missionName, 350)
    if missionDataTable[SelectedLevel].status == LEVELSTATUS.DONE then
      if gotStats() == true then
        RenderSprite(missionStatStrings[SelectedLevel].grade, 750)
        RenderTextBox(statsStringsS0, 350)
        RenderTextBox(statsStringsT0, 350)
        RenderTextBox(statsStringsP0, 350)
        RenderTextBox(statsStringsS1, 350)
        RenderTextBox(statsStringsT1, 350)
        RenderTextBox(statsStringsP1, 350)
        RenderTextBox(statsStringsTot0, 350)
        RenderTextBox(statsStringsTot1, 350)
      end
    elseif SelectedLevel > maxMissions then
      if missionDataTable[SelectedLevel].status == LEVELSTATUS.LOCKED then
        RenderTextBox(statsPointsSoFar, 350)
        RenderTextBox(statsPointsSoFarNum, 350)
        RenderTextBox(statsPointsNeeded, 350)
        RenderTextBox(statsPointsNeededNum, 350)
      else
        RenderTextBox(statsStringsUnlocked, 350)
      end
    else
      RenderTextBox(statsStringsNext, 350)
    end
  end
  local function TopBotton()
    RenderRect(rectBlank.Top, 1599)
    RenderRect(rectBlank.Bottom, 1203)
  end
  local function bselect(idx)
    if idx > maxMissions then
      triggerArrowScaleD = arrowScaleMax
    elseif SelectedLevel > maxMissions then
      triggerArrowScaleU = arrowScaleMax
    elseif idx > SelectedLevel then
      triggerArrowScaleR = arrowScaleMax
    elseif idx < SelectedLevel then
      triggerArrowScaleL = arrowScaleMax
    end
    SelectedLevel = idx
    SetCurrentLevel(SelectedLevel)
    triggerColour = triggerColourStart
    triggerPanel = triggerPanelStart
    rmsRota = 0
    if moveIdx ~= 0 then
      oldSelectedLevel = newSelectedLevel
    end
    moveIdx = 90
    LoadCurrentMissionStats(SelectedLevel)
    if missionStatStrings[SelectedLevel].gotStats == false then
      setStatStrings(SelectedLevel)
    end
    PlaySound(SoundID.UI_FE_MapNav)
  end
  local function bchoose(idx)
    if bFadeNotDone() or bExitingFlag then
      return
    end
    if missionDataTable[SelectedLevel].status == LEVELSTATUS.LOCKED then
      PlaySound(SoundID.UI_FE_Fail)
    else
      chosenSelectedLevel = SelectedLevel
      PushPageStack("Briefing")
      PlaySound(SoundID.UI_FE_Open)
    end
  end
  local function bcancel()
    if bFadeNotDone() or bExitingFlag then
      return
    end
    bExitingFlag = true
    exitFadeCount = 180
    SetMusicVolume(0, musicFadeTime)
    PlaySound(SoundID.UI_FE_Close)
  end
  msTable.buttons = {
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    },
    {
      onSelect = bselect,
      onPressA = bchoose,
      onPressB = bcancel
    }
  }
  local eal = function()
    if SelectedLevel == 1 then
      return false
    elseif SelectedLevel > maxMissions then
      return false
    end
    return true
  end
  local function ear()
    if SelectedLevel == nextMissionNum then
      return false
    elseif SelectedLevel > maxMissions then
      return false
    end
    return true
  end
  local function eau()
    for i = 1, maxBonusMissions do
      if missionsDoneOK[i][1] == SelectedLevel and LevelsDone >= SelectedLevel then
        return true
      end
    end
    return false
  end
  local ead = function()
    if SelectedLevel > maxMissions then
      return true
    end
    return false
  end
  local function aScale(arrowScale)
    local scale = 1
    if arrowScale > 0 then
      local x = arrowScaleMax - arrowScale
      scale = 6 / x * sin(x * 6) + 1
    end
    return scale, scale
  end
  local function aScaleL()
    return aScale(triggerArrowScaleL)
  end
  local function aScaleR()
    return aScale(triggerArrowScaleR)
  end
  local function aScaleU()
    return aScale(triggerArrowScaleU)
  end
  local function aScaleD()
    return aScale(triggerArrowScaleD)
  end
  local function updateArrowScale()
    if triggerArrowScaleL ~= 0 then
      if triggerArrowScaleL > 0 then
        triggerArrowScaleL = triggerArrowScaleL - arrowScaleRate
      else
        triggerArrowScaleL = 0
      end
    end
    if triggerArrowScaleR ~= 0 then
      if triggerArrowScaleR > 0 then
        triggerArrowScaleR = triggerArrowScaleR - arrowScaleRate
      else
        triggerArrowScaleR = 0
      end
    end
    if triggerArrowScaleU ~= 0 then
      if triggerArrowScaleU > 0 then
        triggerArrowScaleU = triggerArrowScaleU - arrowScaleRate
      else
        triggerArrowScaleU = 0
      end
    end
    if triggerArrowScaleD ~= 0 then
      if triggerArrowScaleD > 0 then
        triggerArrowScaleD = triggerArrowScaleD - arrowScaleRate
      else
        triggerArrowScaleD = 0
      end
    end
  end
  local arrowColour = {
    127,
    127,
    127,
    127
  }
  local arrowSpriteL = {
    SpriteID.FE_BTN_ARROW01_L,
    {45, 380},
    aScaleL,
    0,
    arrowColour,
    isActive = eal
  }
  local arrowSpriteR = {
    SpriteID.FE_BTN_ARROW01_R,
    {600, 380},
    aScaleR,
    0,
    arrowColour,
    isActive = ear
  }
  local arrowSpriteU = {
    SpriteID.FE_BTN_ARROW01_R,
    {320, 370},
    aScaleU,
    90,
    arrowColour,
    isActive = eau
  }
  local arrowSpriteD = {
    SpriteID.FE_BTN_ARROW01_L,
    {320, 370},
    aScaleD,
    90,
    arrowColour,
    isActive = ead
  }
  local AButtonSprite = {
    SpriteID.FE_GAMEPAD_A,
    {600, 424}
  }
  local BButtonSprite = {
    SpriteID.FE_GAMEPAD_B,
    {40, 424}
  }
  local prevArrowText = {
    StringID.PREVIOUS,
    {23, 328.3},
    {100, 20},
    arrowColour,
    GUIFont,
    JUSTIFY.LEFT,
    isActive = eal
  }
  local bonusArrowText = {
    StringID.BONUS,
    {267, 328.3},
    {100, 20},
    arrowColour,
    GUIFont,
    JUSTIFY.CENTRE,
    isActive = eau
  }
  local nextArrowText = {
    StringID.NEXT,
    {510, 328.3},
    {100, 20},
    arrowColour,
    GUIFont,
    JUSTIFY.RIGHT,
    isActive = ear
  }
  local function openArrows()
    OpenSprite(arrowSpriteL)
    OpenSprite(arrowSpriteR)
    OpenSprite(arrowSpriteU)
    OpenSprite(arrowSpriteD)
    OpenSprite(AButtonSprite)
    OpenSprite(BButtonSprite)
  end
  local function renderArrows()
    RenderSprite(arrowSpriteL, 420)
    RenderSprite(arrowSpriteR, 420)
    RenderSprite(arrowSpriteU, 420)
    RenderSprite(arrowSpriteD, 420)
    RenderSprite(AButtonSprite, 420)
    RenderSprite(BButtonSprite, 420)
    RenderTextBox(prevArrowText, 350)
    RenderTextBox(bonusArrowText, 350)
    RenderTextBox(nextArrowText, 350)
  end
  local function closeArrows()
    CloseSprite(arrowSpriteL)
    CloseSprite(arrowSpriteR)
    CloseSprite(arrowSpriteU)
    CloseSprite(arrowSpriteD)
    CloseSprite(AButtonSprite)
    CloseSprite(BButtonSprite)
  end
  local function tposn()
    local x = missionDataTable[nextMissionNum].X - msXPos + 220
    local y = missionDataTable[nextMissionNum].Y - msYPos + 207
    return x, y
  end
  local function tposm()
    local x = missionDataTable[nextMissionNum].X - msXPos + 220
    local y = missionDataTable[nextMissionNum].Y - msYPos + 245
    return x, y
  end
  local function tshow()
    if nextMissionNum >= maxMissions then
      return false
    end
    return true
  end
  local function tposName(idx)
    local x = MapNameData[idx].X - msXPos + 320
    local y = MapNameData[idx].Y - msYPos + 240
    return x, y
  end
  local function tposWest()
    return tposName(1)
  end
  local function tposAll()
    return tposName(2)
  end
  local function tposTun()
    return tposName(3)
  end
  local function tposTerr()
    return tposName(4)
  end
  local function tposSol()
    return tposName(5)
  end
  local function tposEmp()
    return tposName(6)
  end
  local function tposCoral()
    return tposName(7)
  end
  local function tposAtol()
    return tposName(8)
  end
  local function tposDune()
    return tposName(9)
  end
  local function tposXyl()
    return tposName(10)
  end
  msTable.textBoxes = {
    {
      StringID.NEXT,
      tposn,
      {200, 20},
      {
        100,
        100,
        100,
        127
      },
      GUIFont,
      JUSTIFY.CENTRE,
      isActive = tshow
    },
    {
      StringID.MISSION,
      tposm,
      {200, 20},
      {
        100,
        100,
        100,
        127
      },
      GUIFont,
      JUSTIFY.CENTRE,
      isActive = tshow
    },
    {},
    {},
    {
      StringID.MAIN,
      {60, 404},
      {250, 15},
      {
        127,
        32,
        32,
        127
      },
      StatusFont,
      JUSTIFY.LEFT
    },
    {
      StringID.MISSION_SELECT,
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
      StringID.CONFIRM,
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
  local tNameCol = {
    100,
    100,
    100,
    80
  }
  local tNameBox = {100, 15}
  local tNameColWFrontier = {
    120 / 2,
    204 / 2,
    131 / 2,
    80
  }
  local tNameColTTerritories = {
    204 / 2,
    113 / 2,
    115 / 2,
    80
  }
  local tNameColSEmpire = {
    255 / 2,
    207 / 2,
    255 / 2,
    80
  }
  local tNameColDuneSea = {
    210 / 2,
    204 / 2,
    118 / 2,
    80
  }
  local tNameColXylvania = {
    110 / 2,
    122 / 2,
    204 / 2,
    80
  }
  local mapNames = {
    {
      StringID.WESTERN,
      tposWest,
      tNameBox,
      tNameColWFrontier,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.FRONTIER,
      tposAll,
      tNameBox,
      tNameColWFrontier,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.TUNDRAN,
      tposTun,
      tNameBox,
      tNameColTTerritories,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.TERRITORIES,
      tposTerr,
      tNameBox,
      tNameColTTerritories,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.SOLAR,
      tposSol,
      tNameBox,
      tNameColSEmpire,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.EMPIRE,
      tposEmp,
      tNameBox,
      tNameColSEmpire,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.CORAL,
      tposCoral,
      tNameBox,
      tNameColSEmpire,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.ATOL,
      tposAtol,
      tNameBox,
      tNameColSEmpire,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.DUNESEA,
      tposDune,
      tNameBox,
      tNameColDuneSea,
      GUIFont,
      JUSTIFY.CENTRE
    },
    {
      StringID.XYLVANIA,
      tposXyl,
      tNameBox,
      tNameColXylvania,
      GUIFont,
      JUSTIFY.CENTRE
    }
  }
  local function renderMapNames()
    for i = 1, 10 do
      RenderTextBox(mapNames[i], -1500)
    end
  end
  msTable.nextMapData = {
    {
      1,
      2,
      1,
      1
    },
    {
      1,
      3,
      2,
      2
    },
    {
      2,
      4,
      3,
      3
    },
    {
      3,
      5,
      4,
      4
    },
    {
      4,
      6,
      5,
      5
    },
    {
      5,
      7,
      21,
      6
    },
    {
      6,
      8,
      7,
      7
    },
    {
      7,
      9,
      8,
      8
    },
    {
      8,
      10,
      22,
      9
    },
    {
      9,
      11,
      10,
      10
    },
    {
      10,
      12,
      11,
      11
    },
    {
      11,
      13,
      12,
      12
    },
    {
      12,
      14,
      13,
      13
    },
    {
      13,
      15,
      14,
      14
    },
    {
      14,
      16,
      23,
      15
    },
    {
      15,
      17,
      16,
      16
    },
    {
      16,
      18,
      17,
      17
    },
    {
      17,
      19,
      24,
      18
    },
    {
      18,
      20,
      19,
      19
    },
    {
      19,
      20,
      20,
      20
    },
    {
      21,
      21,
      21,
      6
    },
    {
      22,
      22,
      22,
      9
    },
    {
      23,
      23,
      23,
      15
    },
    {
      24,
      24,
      24,
      18
    }
  }
  msTable.nextMap = {}
  local gradientOverlay = {
    {
      "OVR_MAP08_EDGE",
      {-10, 22},
      {330, 190},
      {2, 2},
      {316, 186},
      64
    },
    {
      "OVR_MAP08_EDGE",
      {320, 22},
      {330, 190},
      {316, 2},
      {-316, 186},
      64
    },
    {
      "OVR_MAP08_EDGE",
      {-10, 212},
      {330, 190},
      {2, 186},
      {316, -186},
      64
    },
    {
      "OVR_MAP08_EDGE",
      {320, 212},
      {330, 190},
      {316, 186},
      {-316, -186},
      64
    }
  }
  local function openGradient()
    for i = 1, 4 do
      OpenFlat(gradientOverlay[i])
    end
  end
  local function renderGradient()
    for i = 1, 4 do
      RenderFlat(gradientOverlay[i], 1500)
    end
  end
  local function closeGradient()
    for i = 1, 4 do
      CloseFlat(gradientOverlay[i])
    end
  end
  local function updateFades()
    if bExitFlag == false then
      updateFadeColour(msTable)
    else
      msTable.fadeColour = 0
    end
    if triggerColour > 0 then
      triggerColour = triggerColour - triggerColourRate
    end
    if triggerColour <= 0 then
      triggerColour = 0
    end
    if triggerPanel >= triggerColourStart then
      triggerColour = triggerColourStart
    end
    if triggerPanel > 0 then
      triggerPanel = triggerPanel - triggerPanelRate
    end
    if triggerPanel <= 0 then
      triggerPanel = 0
    end
  end
  local Lerp = function(lo, hi, amount)
    return lo + (hi - lo) * amount
  end
  local moveRate = 90 / 8
  local function updatePos()
    if oldSelectedLevel == SelectedLevel then
      msXPos = missionDataTable[SelectedLevel].X
      msYPos = missionDataTable[SelectedLevel].Y
    else
      if moveIdx >= 90 then
        newSelectedLevel = SelectedLevel
      end
      local amount = cos(moveIdx)
      msXPos = Lerp(missionDataTable[oldSelectedLevel].X, missionDataTable[newSelectedLevel].X, amount)
      msYPos = Lerp(missionDataTable[oldSelectedLevel].Y, missionDataTable[newSelectedLevel].Y, amount)
      moveIdx = moveIdx - moveRate
      if moveIdx <= 0 then
        oldSelectedLevel = SelectedLevel
        moveIdx = 0
      end
      triggerColour = triggerColourStart
      triggerPanel = triggerPanelStart
    end
  end
  local function init()
    triggerColour = 0
    triggerPanel = 360
    msTable.fadeColour = 127
    missionStatStrings = {}
    for i = 1, maxMissions + maxBonusMissions do
      missionStatStrings[i] = {}
      missionStatStrings[i].gotStats = false
    end
    bExitFlag = false
    bExitingFlag = false
  end
  local function close()
    missionStatStrings = {}
  end
  local function setSelectedLevel()
    SelectedLevel = chosenSelectedLevel
  end
  local function checkExit()
    if bExitingFlag == true then
      local a = 0
      if exitFadeCount > 0 then
        a = cos(exitFadeCount) * 64 + 64
        exitFadeCount = exitFadeCount - fadeRate
      elseif exitFadeCount < 0 then
        exitFadeCount = 0
      end
      msTable.fadeColour = a
      if a <= 0 then
        bExitFlag = true
      end
    end
    if bExitFlag == false then
      return
    end
    StopMusic()
    if FrontendSplit == true then
      chosenSelectedLevel = FrontendMainLevel - FrontendOffset
      PageDone = true
      FrontendDone = true
      SetMissionStatus(GAMESTATUS.MISSIONS)
    else
      bPopPage()
    end
  end
  local blank = {
    {-10, 0},
    {660, 480},
    {
      0,
      0,
      0,
      127
    }
  }
  local function renderBlank()
    if bExitFlag then
      RenderRect(blank, 1551)
    end
  end
  local pollMusic = function()
    if Fanfare == 2 then
      return
    elseif Fanfare == 1 then
      SetMusicVolume(MapLoopVol, 0.1)
      FEMusic = StartMusic(constant.FILENAME, MusicDirectory, "Map_Loop")
      if FEMusic == true then
        Fanfare = 2
      end
    elseif CheckMusicFinished() == true then
      Fanfare = 1
      StopMusic()
    end
  end
  msTable.open = {
    init,
    initFadeIn,
    openMap,
    setStatStrings,
    openSprites,
    openArrows,
    openMissionPanel,
    openBezier,
    openGradient,
    setNextMap,
    openGradeBadge
  }
  msTable.update = {
    updateFades,
    updatePos,
    updateArrowScale,
    checkExit,
    pollMusic
  }
  msTable.render = {
    renderMapNames,
    renderBeziers,
    renderMS,
    TopBotton,
    renderGradient,
    renderArrows,
    renderMissionPanel,
    renderBlank
  }
  msTable.close = {
    close,
    closeSprites,
    closeArrows,
    closeMissionPanel,
    closeBezier,
    closeGradient,
    resetNextMap,
    closeGradeBadge,
    setSelectedLevel
  }
  function GetMissionSelectPage()
    return msTable
  end
  DebugOut("Mission Select ticked ***")
end
