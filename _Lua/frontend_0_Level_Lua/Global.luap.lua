function Global(owner)
end
FrontendSplit = true
FrontendOffset = 3
FrontendMainLevel = 0
FrontendMissionSelect = 1
FrontendUnits = 2
FrontendGallery = 3
NextPage = 0
PageDone = false
FrontendDone = false
PlinthFont = 0
GUIFont = 1
StatusFont = 1
GUIFontLarge = 2
DebugFont = 3
GameFont = 4
SelectedLevel = 0
LevelsDone = 0
SelectedSlot = 0
MStatus = 0
bgArrayOffset = 6
MusicDirectory = "Data/Audio/Music/Ingame"
FEMusic = false
Fanfare = 1
FirstTime = false
TitleLoopVol = 0.6
MapLoopVol = 0.8
StingsVol = 0.5
fadeCount = 0
fadeRate = 180 / 30
musicFadeTime = 0.75
function initFadeIn()
  fadeCount = 0
end
function updateFadeColour(table)
  local a = 0
  if fadeCount < 180 then
    a = cos(fadeCount) * 64 + 64
    fadeCount = fadeCount + fadeRate
  end
  table.fadeColour = a
end
function bFadeNotDone()
  return fadeCount < 120
end
local PageStack = {}
local PageStackTop = 0
function PushPageStack(aPage)
  PageStackTop = PageStackTop + 1
  PageStack[PageStackTop] = aPage
  NextPage = aPage
  PageDone = true
end
function PopPageStack()
  if PageStackTop > 1 then
    PageStack[PageStackTop] = nil
    PageStackTop = PageStackTop - 1
  end
  NextPage = PageStack[PageStackTop]
  PageDone = true
end
function SetPageStack(aPage)
  PageStack[PageStackTop] = aPage
  NextPage = aPage
  PageDone = true
end
function ResetPageStack(aPage)
  PageStackTop = 0
  PushPageStack(aPage)
end
function bPopPage()
  if bFadeNotDone() then
    return
  end
  PopPageStack()
  PlaySound(SoundID.UI_FE_Close)
end
bg1x = 0
function bg1pos()
  bg1x = bg1x + 0.2
  if bg1x > 640 then
    bg1x = 0
  end
  return bg1x, 22
end
bg2x = -640
function bg2pos()
  bg2x = bg2x + 0.2
  if bg2x > 0 then
    bg2x = -640
  end
  return bg2x, 22
end
bg3p = {
  {
    x = 640,
    y = 20,
    rate = 0.4,
    limitx = 640,
    limity = 336
  },
  {
    x = 800,
    y = 240,
    rate = 0.45,
    limitx = 800,
    limity = 160
  },
  {
    x = 0,
    y = 300,
    rate = 0.6,
    limitx = 700,
    limity = 29
  },
  {
    x = 0,
    y = 340,
    rate = 0.3,
    limitx = 710,
    limity = 48
  },
  {
    x = 500,
    y = 80,
    rate = 1.4,
    limitx = 1500,
    limity = 48
  },
  {
    x = 1000,
    y = 180,
    rate = 1.7,
    limitx = 1500,
    limity = 48
  },
  {
    x = 1500,
    y = 280,
    rate = 1.1,
    limitx = 1500,
    limity = 48
  },
  {
    x = -750,
    y = 60,
    rate = 0.55,
    limitx = 750,
    limity = 240
  },
  {
    x = -250,
    y = 40,
    rate = 0.55,
    limitx = 750,
    limity = 240
  },
  {
    x = 0,
    y = 70,
    rate = 0.55,
    limitx = 750,
    limity = 240
  },
  {
    x = 250,
    y = 50,
    rate = 0.55,
    limitx = 750,
    limity = 320
  },
  {
    x = 750,
    y = 20,
    rate = 0.55,
    limitx = 750,
    limity = 320
  },
  {
    x = 0,
    y = 80,
    rate = 0.7,
    limitx = 650,
    limity = 112
  },
  {
    x = 60,
    y = 110,
    rate = 0.73,
    limitx = 670,
    limity = 112
  },
  {
    x = 120,
    y = 140,
    rate = 0.76,
    limitx = 690,
    limity = 112
  },
  {
    x = 180,
    y = 170,
    rate = 0.79,
    limitx = 710,
    limity = 112
  },
  {
    x = 240,
    y = 200,
    rate = 0.81,
    limitx = 730,
    limity = 112
  },
  {
    x = 0,
    y = 90,
    rate = 0.85,
    limitx = 650,
    limity = 48
  },
  {
    x = 60,
    y = 120,
    rate = 0.86,
    limitx = 670,
    limity = 48
  },
  {
    x = 120,
    y = 150,
    rate = 0.87,
    limitx = 690,
    limity = 48
  },
  {
    x = 180,
    y = 180,
    rate = 0.88,
    limitx = 710,
    limity = 48
  },
  {
    x = 240,
    y = 210,
    rate = 0.9,
    limitx = 730,
    limity = 48
  },
  {
    x = 250,
    y = 80,
    rate = 1.2,
    limitx = 750,
    limity = 80
  },
  {
    x = 250,
    y = 50,
    rate = 0.65,
    limitx = 750,
    limity = 240
  },
  {
    x = 750,
    y = 20,
    rate = 0.67,
    limitx = 750,
    limity = 379
  },
  {
    x = 15,
    y = 80,
    rate = 0.75,
    limitx = 650,
    limity = 56
  },
  {
    x = 75,
    y = 110,
    rate = 0.78,
    limitx = 670,
    limity = 64
  },
  {
    x = 135,
    y = 140,
    rate = 0.82,
    limitx = 690,
    limity = 56
  },
  {
    x = 195,
    y = 170,
    rate = 0.87,
    limitx = 710,
    limity = 56
  },
  {
    x = 255,
    y = 200,
    rate = 0.91,
    limitx = 730,
    limity = 48
  }
}
function bg3pos(idx)
  local vars = bg3p[idx - bgArrayOffset]
  vars.x = vars.x - vars.rate
  if vars.x < -vars.limitx then
    vars.x = vars.limitx
    vars.y = GetRandom(22, 379 - vars.limity)
  end
  return vars.x, vars.y
end
bg3a = {
  {
    rate = 5,
    offset = 0,
    amp = 1024
  },
  {
    rate = 5,
    offset = 2000,
    amp = 512
  },
  {
    rate = 5,
    offset = 1000,
    amp = 1524
  },
  {
    rate = 5,
    offset = 150,
    amp = 256
  },
  {
    rate = 5,
    offset = 230,
    amp = 1024
  },
  {
    rate = 5,
    offset = 360,
    amp = 1024
  },
  {
    rate = 5,
    offset = 430,
    amp = 1024
  },
  {
    rate = 6,
    offset = 1000,
    amp = 2000
  },
  {
    rate = 6,
    offset = 1070,
    amp = 2000
  },
  {
    rate = 6,
    offset = 1140,
    amp = 2000
  },
  {
    rate = 6,
    offset = 1210,
    amp = 2000
  },
  {
    rate = 6,
    offset = 1280,
    amp = 2000
  },
  {
    rate = 7,
    offset = 360 / 5 * 0,
    amp = 120
  },
  {
    rate = 7,
    offset = 360 / 5 * 1,
    amp = 120
  },
  {
    rate = 7,
    offset = 360 / 5 * 2,
    amp = 120
  },
  {
    rate = 7,
    offset = 360 / 5 * 3,
    amp = 120
  },
  {
    rate = 7,
    offset = 360 / 5 * 4,
    amp = 120
  },
  {
    rate = 5,
    offset = 10,
    amp = 1024
  },
  {
    rate = 5,
    offset = 40,
    amp = 1024
  },
  {
    rate = 5,
    offset = 80,
    amp = 1024
  },
  {
    rate = 5,
    offset = 110,
    amp = 1024
  },
  {
    rate = 5,
    offset = 150,
    amp = 1024
  },
  {
    rate = 6,
    offset = 920,
    amp = 2000
  },
  {
    rate = 6,
    offset = 1210,
    amp = 2000
  },
  {
    rate = 6,
    offset = 1280,
    amp = 2000
  },
  {
    rate = 8,
    offset = 360 / 5 * 0,
    amp = 220
  },
  {
    rate = 8,
    offset = 360 / 5 * 1,
    amp = 220
  },
  {
    rate = 8,
    offset = 360 / 5 * 2,
    amp = 220
  },
  {
    rate = 8,
    offset = 360 / 5 * 3,
    amp = 220
  },
  {
    rate = 8,
    offset = 360 / 5 * 4,
    amp = 220
  }
}
function bg3colour(idx)
  local vars = bg3a[idx - bgArrayOffset]
  local i = sin((GetTime() + vars.offset) * vars.rate) * vars.amp
  if i > 127 then
    i = 127
  elseif i < 0 then
    i = 0
  end
  return 127, 127, 32, i
end
StringID = {}
StringID.START = 0
StringID.MAIN = 1
StringID.MISSION_SELECT = 2
StringID.SETTINGS = 3
StringID.EXTRAS = 4
StringID.WESTERN = 5
StringID.ALLIANCE = 6
StringID.TUNDRAN = 7
StringID.TERRITORIES = 8
StringID.SOLAR = 9
StringID.EMPIRE = 10
StringID.CORAL = 11
StringID.ATOL = 12
StringID.DUNESEA = 13
StringID.XYLVANIA = 14
StringID.NEXT = 15
StringID.MISSION = 16
StringID.REPLAY = 17
StringID.MISSION_BRIEFING = 18
StringID.FINISH_BRIEFING = 19
StringID.Music_Volume = 20
StringID.FX_Volume = 21
StringID.Voice_Volume = 22
StringID.Vertical_Position = 23
StringID.Horizontal_Position = 24
StringID.Brightness = 25
StringID.Screen_Ratio = 26
StringID.Language = 27
StringID.Movie_Subtitles = 28
StringID.Invert_Y = 29
StringID.Rumble = 30
StringID.CURRENT_SETTING = 31
StringID.On = 32
StringID.Off = 33
StringID.Normal = 34
StringID.Widescreen = 35
StringID.English = 36
StringID.Espanol = 37
StringID.Deutch = 38
StringID.Francais = 39
StringID.Italiano = 40
StringID.Sound_Mode = 41
StringID.BONUS = 42
StringID.CAMPAIGN = 43
StringID.TOTAL_SCORE = 44
StringID.CREDITS = 45
StringID.REQUIRED_TO_UNLOCK = 46
StringID.UNLOCKED = 47
StringID.CONFIRM = 48
StringID.CANCEL = 49
StringID.Stereo = 50
StringID.FRONTIER = 51
StringID.XYLVANIAN = 52
StringID.LEGION = 53
StringID.VICTORY = 54
StringID.DEFEAT = 55
StringID.CONTINUE = 56
StringID.SLOT_OPTIONS = 57
StringID.LOAD_CAMPAIGN = 58
StringID.NEW_CAMPAIGN = 59
StringID.NEW_SLOT_WARN = 60
StringID.NEW_UNIT = 61
StringID.NEXT_MISSION = 62
StringID.QUIT = 63
StringID.SPEED = 64
StringID.POWER = 65
StringID.TECHNIQUE = 66
StringID.TOTAL = 67
StringID.BYKUJU = 68
StringID.NEW_UNITS = 69
StringID.CHOOSE = 70
StringID.BACK = 71
StringID.EMPTY = 72
StringID.PRESSSTART = 73
StringID.INVERTED = 74
StringID.SAVE = 75
StringID.SETTINGSMSG = 76
StringID.Mono = 77
StringID.CardFull = 78
StringID.Surround = 79
StringID.NoData = 80
StringID.Corrupt = 81
StringID.Unformatted = 81
StringID.LoadFailed = 82
StringID.SaveFailed = 83
StringID.LoadOK = 84
StringID.SaveOK = 85
StringID.AskOverwrite = 86
StringID.FormatFailed = 87
StringID.Damaged = 88
StringID.CRCError = 89
StringID.MemcardStatus = 90
StringID.NoPrevious = 91
StringID.NotSupported = 92
StringID.NoMemoryCard = 93
StringID.NoFiles = 94
StringID.WrongDevice = 95
StringID.FormatOK = 96
StringID.DeleteOK = 97
StringID.AskDelete = 98
StringID.Format = 99
StringID.Cont_NoSave = 100
StringID.Yes = 101
StringID.Cancel = 102
StringID.GameStarting = 103
StringID.LoadingGame = 104
StringID.Retry = 105
StringID.Create = 106
StringID.AccessingCard = 107
StringID.DifferentFile = 108
StringID.Delete = 109
StringID.SaveGameProgress = 110
StringID.AskFormat = 111
StringID.FileOK = 112
StringID.NoSpace = 113
StringID.DoNotTouch = 115
StringID.ContinueOK = 116
StringID.CardOK = 0
StringID.PREVIOUS = 118
StringID.GotoIPL = 119
StringID.DifferentCard = 121
StringID.CRCRecoverable = 172
StringID.Recover = 173
StringID.Overwrite = 174
StringID.C1M1Name = 123
StringID.C1M2Name = 124
StringID.C1M3Name = 125
StringID.C1M4Name = 126
StringID.C1M5Name = 127
StringID.C1M6Name = 128
StringID.C1M7Name = 129
StringID.C2M1Name = 130
StringID.C2M2Name = 131
StringID.C2M3Name = 132
StringID.C2M4Name = 133
StringID.C3M1Name = 134
StringID.C3M2Name = 135
StringID.C3M3Name = 136
StringID.C3M4Name = 137
StringID.C3M5Name = 138
StringID.C4M1Name = 139
StringID.C4M2Name = 140
StringID.C4M3Name = 141
StringID.C4M4Name = 142
StringID.C1BonusName = 143
StringID.C2BonusName = 144
StringID.C3BonusName = 145
StringID.C4BonusName = 146
StringID.C1M1Mission = 147
StringID.C1M2Mission = 148
StringID.C1M3Mission = 149
StringID.C1M4Mission = 150
StringID.C1M5Mission = 151
StringID.C1M6Mission = 152
StringID.C1M7Mission = 153
StringID.C2M1Mission = 154
StringID.C2M2Mission = 155
StringID.C2M3Mission = 156
StringID.C2M4Mission = 157
StringID.C3M1Mission = 158
StringID.C3M2Mission = 159
StringID.C3M3Mission = 160
StringID.C3M4Mission = 161
StringID.C3M5Mission = 162
StringID.C4M1Mission = 163
StringID.C4M2Mission = 164
StringID.C4M3Mission = 165
StringID.C4M4Mission = 166
StringID.C1BonusMission = 167
StringID.C2BonusMission = 168
StringID.C3BonusMission = 169
StringID.C4BonusMission = 170
StringID.NewStuff1 = 177
StringID.NewStuff2 = 178
StringID.NewStuff3 = 179
StringID.NewStuff4 = 180
StringID.NewStuff5 = 181
StringID.NewStuff6 = 182
StringID.NewStuff7 = 183
StringID.NewStuff8 = 184
StringID.NewStuff9 = 185
StringID.NewStuff10 = 186
StringID.NewStuff11 = 187
StringID.NewStuff12 = 188
StringID.NewStuff13 = 189
StringID.NewStuff14 = 190
StringID.NewStuff15 = 191
StringID.NewStuff16 = 192
StringID.NewStuff17 = 193
StringID.NewStuff18 = 194
StringID.NewStuffStats1 = 197
StringID.NewStuffStats2 = 198
StringID.NewStuffStats3 = 199
StringID.NewStuffStats4 = 200
StringID.NewStuffStats5 = 201
StringID.NewStuffStats6 = 202
StringID.NewStuffStats7 = 203
StringID.NewStuffStats8 = 204
StringID.NewStuffStats9 = 205
StringID.NewStuffStats10 = 206
StringID.NewStuffStats11 = 207
StringID.NewStuffStats12 = 208
StringID.NewStuffStats13 = 209
StringID.NewStuffStats14 = 210
StringID.NewStuffStats15 = 211
StringID.NewStuffStats16 = 212
StringID.NewStuffStats17 = 213
StringID.NewStuffStats18 = 214
StringID.NewStuffStatsB1 = 240
StringID.NewStuffStatsB2 = 241
StringID.NewStuffStatsB3 = 242
StringID.NewStuffStatsB4 = 243
StringID.NewStuffStatsB5 = 244
StringID.NewStuffStatsB6 = 245
StringID.NewStuffStatsB7 = 246
StringID.NewStuffStatsB8 = 247
StringID.NewStuffStatsB9 = 248
StringID.NewStuffStatsB10 = 249
StringID.NewStuffStatsB11 = 250
StringID.NewStuffStatsB12 = 251
StringID.NewStuffStatsB13 = 252
StringID.NewStuffStatsB14 = 253
StringID.NewStuffStatsB15 = 254
StringID.NewStuffStatsB16 = 255
StringID.NewStuffStatsB17 = 256
StringID.NewStuffStatsB18 = 257
StringID.NewStuffDesc1 = 217
StringID.NewStuffDesc2 = 218
StringID.NewStuffDesc3 = 219
StringID.NewStuffDesc4 = 220
StringID.NewStuffDesc5 = 221
StringID.NewStuffDesc6 = 222
StringID.NewStuffDesc7 = 223
StringID.NewStuffDesc8 = 224
StringID.NewStuffDesc9 = 225
StringID.NewStuffDesc10 = 226
StringID.NewStuffDesc11 = 227
StringID.NewStuffDesc12 = 228
StringID.NewStuffDesc13 = 229
StringID.NewStuffDesc14 = 230
StringID.NewStuffDesc15 = 231
StringID.NewStuffDesc16 = 232
StringID.NewStuffDesc17 = 233
StringID.NewStuffDesc18 = 234
CardStatus = CARD.NONE
NoSpaceIPL = CARD.CRCRecoverable + 1
DialogCountStart = 40
TriggerPanelRate = 20
TriggerPanelStart = 180 + TriggerPanelRate
oY = 148
local retryOp = 0
local quitOp = 0
function None()
end
function NoMemoryCard()
  UseMemoryCard(false)
  quitOp()
end
function RetryLoad()
  SetCardSlot(0)
  retryOp()
end
function RetryNewLoad()
  SetCardSlot(0)
  SetNewCard()
  retryOp()
end
function SaveOverwrite()
  SaveToCard(true)
end
function SaveNew()
  SaveToCard(false)
end
function MemcardQuitOp(op)
  quitOp = op
end
function MemcardRetryOp(op)
  retryOp = op
end
function reInit()
  retryOp = InitialCheck
  InitialCheck()
end
StringState = 1
StringAOp = 2
StringBOp = 3
ButtonAOp = 4
ButtonBOp = 5
StringXOp = 6
ButtonXOp = 7
DialogDataTable = {
  {
    StringID.CardFull,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.NoSpace,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.NoData,
    StringID.Create,
    StringID.Retry,
    SaveNew,
    RetryLoad,
    0,
    None
  },
  {
    StringID.AskFormat,
    StringID.Format,
    StringID.Retry,
    FormatCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.LoadFailed,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.SaveFailed,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.LoadOK,
    0,
    0,
    None,
    None,
    0,
    None
  },
  {
    StringID.SaveOK,
    0,
    0,
    None,
    None,
    0,
    None
  },
  {
    StringID.AskOverwrite,
    StringID.Overwrite,
    StringID.Retry,
    SaveOverwrite,
    RetryLoad,
    0,
    None
  },
  {
    StringID.FormatFailed,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.Damaged,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.CRCError,
    StringID.Delete,
    StringID.Retry,
    AskDelete,
    RetryLoad,
    StringID.Cont_NoSave,
    NoMemoryCard
  },
  {
    StringID.NotSupported,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.NoMemoryCard,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.NoFiles,
    StringID.Create,
    StringID.Retry,
    SaveNew,
    RetryLoad,
    StringID.Cont_NoSave,
    NoMemoryCard
  },
  {
    StringID.FormatOK,
    StringID.ContinueOK,
    0,
    RetryLoad,
    None,
    0,
    None
  },
  {
    StringID.DeleteOK,
    StringID.ContinueOK,
    0,
    RetryLoad,
    None,
    0,
    None
  },
  {
    StringID.AskDelete,
    StringID.Delete,
    StringID.Retry,
    DeleteSaveFile,
    RetryLoad,
    0,
    None
  },
  {
    StringID.Corrupt,
    StringID.Format,
    StringID.Retry,
    AskFormat,
    RetryLoad,
    StringID.Cont_NoSave,
    NoMemoryCard
  },
  {
    StringID.Unformatted,
    StringID.Format,
    StringID.Retry,
    AskFormat,
    RetryLoad,
    StringID.Cont_NoSave,
    NoMemoryCard
  },
  {
    StringID.WrongDevice,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    0,
    None
  },
  {
    StringID.DifferentFile,
    StringID.Overwrite,
    StringID.Retry,
    SaveOverwrite,
    RetryLoad,
    StringID.Cont_NoSave,
    NoMemoryCard
  },
  {
    StringID.FileOK,
    0,
    0,
    None,
    None,
    0,
    None
  },
  {
    StringID.CardOK,
    0,
    0,
    None,
    None,
    0,
    None
  },
  {
    StringID.DifferentCard,
    StringID.ContinueOK,
    0,
    RetryNewLoad,
    None,
    0,
    None
  },
  {
    StringID.NoPrevious,
    StringID.Overwrite,
    StringID.Retry,
    SaveOverwrite,
    RetryLoad,
    0,
    None
  },
  {
    StringID.CRCRecoverable,
    0,
    0,
    None,
    None,
    0,
    None
  },
  {
    StringID.NoSpace,
    StringID.Cont_NoSave,
    StringID.Retry,
    NoMemoryCard,
    RetryLoad,
    StringID.GotoIPL,
    ResetToIPL
  }
}
pos1X = 150
pos1Y = 38 + oY
pos1 = {pos1X, pos1Y}
pos2X = 250
pos3X = 250
posAX = 210
posBX = 213
pos4X = 250
posXX = 215
offTop = 0
offMid = 0
offBot = 0
posTopXY = {116, oY}
posMidXY = {
  116,
  92 + oY
}
posBotXY = {
  116,
  93 + oY
}
MemCardMessagePos = {
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    47,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      189 + oY
    },
    {
      pos3X,
      230 + oY
    },
    163,
    {
      posAX,
      208 + oY
    },
    {
      posBX,
      252 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    47,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      135 + oY
    },
    68,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      157 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      135 + oY
    },
    68,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      157 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      135 + oY
    },
    68,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      157 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      62 + oY
    },
    {
      pos3X,
      155 + oY
    },
    1,
    {
      posAX,
      133 + oY
    },
    {
      posBX,
      177 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      62 + oY
    },
    {
      pos3X,
      155 + oY
    },
    1,
    {
      posAX,
      133 + oY
    },
    {
      posBX,
      177 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    47,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      135 + oY
    },
    68,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      157 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      135 + oY
    },
    68,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      157 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      176 + oY
    },
    110,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      198 + oY
    },
    {
      pos4X,
      135 + oY
    },
    {
      posXX,
      156 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    47,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    47,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      116 + oY
    },
    {
      pos3X,
      198 + oY
    },
    132,
    {
      posAX,
      135 + oY
    },
    {
      posBX,
      220 + oY
    },
    {
      pos4X,
      157 + oY
    },
    {
      posXX,
      178 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    9,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    9,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    47,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      176 + oY
    },
    110,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      198 + oY
    },
    {
      pos4X,
      135 + oY
    },
    {
      posXX,
      156 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      176 + oY
    },
    110,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      198 + oY
    },
    {
      pos4X,
      135 + oY
    },
    {
      posXX,
      156 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      135 + oY
    },
    68,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      157 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      116 + oY
    },
    {
      pos3X,
      198 + oY
    },
    132,
    {
      posAX,
      135 + oY
    },
    {
      posBX,
      220 + oY
    },
    {
      pos4X,
      157 + oY
    },
    {
      posXX,
      178 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      116 + oY
    },
    {
      pos3X,
      155 + oY
    },
    1,
    {
      posAX,
      135 + oY
    },
    {
      posBX,
      177 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      116 + oY
    },
    {
      pos3X,
      155 + oY
    },
    1,
    {
      posAX,
      135 + oY
    },
    {
      posBX,
      177 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      73 + oY
    },
    {
      pos3X,
      114 + oY
    },
    9,
    {
      posAX,
      92 + oY
    },
    {
      posBX,
      136 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      94 + oY
    },
    {
      pos3X,
      135 + oY
    },
    68,
    {
      posAX,
      113 + oY
    },
    {
      posBX,
      157 + oY
    }
  },
  {
    pos1,
    {
      pos2X,
      114 + oY
    },
    {
      pos3X,
      157 + oY
    },
    90,
    {
      posAX,
      133 + oY
    },
    {
      posBX,
      179 + oY
    }
  },
  {
    {
      pos1X,
      38 + oY - 41
    },
    {
      pos2X,
      146 + oY
    },
    {
      pos3X,
      228 + oY
    },
    202,
    {
      posAX,
      165 + oY
    },
    {
      posBX,
      250 + oY
    },
    {
      pos4X,
      187 + oY
    },
    {
      posXX,
      207 + oY
    }
  }
}
function Message1Str()
  return DialogDataTable[CardStatus][StringState]
end
function Message2Str()
  return DialogDataTable[CardStatus][StringAOp]
end
function Message3Str()
  return DialogDataTable[CardStatus][StringBOp]
end
function Message4Str()
  return DialogDataTable[CardStatus][StringXOp]
end
function MessageStatusPos()
  if CardStatus <= CARD.CRCRecoverable then
    return 170, 11 + oY
  else
    return 170, 11 + oY - 41
  end
end
function Message1Pos()
  return MemCardMessagePos[CardStatus][1][1], MemCardMessagePos[CardStatus][1][2]
end
function Message2Pos()
  return MemCardMessagePos[CardStatus][2][1], MemCardMessagePos[CardStatus][2][2]
end
function Message3Pos()
  return MemCardMessagePos[CardStatus][3][1], MemCardMessagePos[CardStatus][3][2]
end
function Message4Pos()
  return MemCardMessagePos[CardStatus][7][1], MemCardMessagePos[CardStatus][7][2]
end
function DBoxPosTop()
  if CardStatus <= CARD.CRCRecoverable then
    return posTopXY[1], posTopXY[2] + offTop
  else
    return posTopXY[1], posTopXY[2] + offTop - 41
  end
end
function DBoxPosMid()
  if CardStatus <= CARD.CRCRecoverable then
    return posMidXY[1], posMidXY[2] + offMid
  else
    return posMidXY[1], posMidXY[2] + offMid - 41
  end
end
function DBoxPosBot()
  if CardStatus <= CARD.CRCRecoverable then
    return posBotXY[1], posBotXY[2] + offBot
  else
    return posBotXY[1], posBotXY[2] + offBot - 41
  end
end
function GetAPos()
  return MemCardMessagePos[CardStatus][5][1], MemCardMessagePos[CardStatus][5][2]
end
function GetBPos()
  return MemCardMessagePos[CardStatus][6][1], MemCardMessagePos[CardStatus][6][2]
end
function GetXPos()
  return MemCardMessagePos[CardStatus][8][1], MemCardMessagePos[CardStatus][8][2]
end
NewUnitsList = {
  {
    num = 2,
    title = {
      StringID.NewStuff1,
      StringID.NewStuff2
    },
    stats = {
      StringID.NewStuffStats1,
      StringID.NewStuffStats2
    },
    statsB = {
      StringID.NewStuffStatsB1,
      StringID.NewStuffStatsB2
    },
    desc = {
      StringID.NewStuffDesc1,
      StringID.NewStuffDesc2
    },
    tex = {
      "WF_GRUNT_00",
      "WF_RECO_00"
    },
    icon = {"WF_GRUNT01", "WF_RECO01"}
  },
  {
    num = 2,
    title = {
      StringID.NewStuff3,
      StringID.NewStuff4
    },
    stats = {
      StringID.NewStuffStats3,
      StringID.NewStuffStats4
    },
    statsB = {
      StringID.NewStuffStatsB3,
      StringID.NewStuffStatsB4
    },
    desc = {
      StringID.NewStuffDesc3,
      StringID.NewStuffDesc4
    },
    tex = {"WF_LTNK_00", "WF_TPT_00"},
    icon = {"WF_LTNK01", "WF_TPT01"}
  },
  {
    num = 1,
    title = {
      StringID.NewStuff5
    },
    stats = {
      StringID.NewStuffStats5
    },
    statsB = {
      StringID.NewStuffStatsB5
    },
    desc = {
      StringID.NewStuffDesc5
    },
    tex = {"WF_BAZ_00"},
    icon = {
      "WF_ANTIARM01"
    }
  },
  {
    num = 1,
    title = {
      StringID.NewStuff6
    },
    stats = {
      StringID.NewStuffStats6
    },
    statsB = {
      StringID.NewStuffStatsB6
    },
    desc = {
      StringID.NewStuffDesc6
    },
    tex = {
      "WF_AAVET_00"
    },
    icon = {
      "WF_ANTIAIR01"
    }
  },
  {
    num = 1,
    title = {
      StringID.NewStuff7
    },
    stats = {
      StringID.NewStuffStats7
    },
    statsB = {
      StringID.NewStuffStatsB7
    },
    desc = {
      StringID.NewStuffDesc7
    },
    tex = {
      "WF_FLAME_00"
    },
    icon = {"WF_HOSE01"}
  },
  {num = 0},
  {
    num = 2,
    title = {
      StringID.NewStuff8,
      StringID.NewStuff9
    },
    stats = {
      StringID.NewStuffStats8,
      StringID.NewStuffStats9
    },
    statsB = {
      StringID.NewStuffStatsB8,
      StringID.NewStuffStatsB9
    },
    desc = {
      StringID.NewStuffDesc8,
      StringID.NewStuffDesc9
    },
    tex = {
      "WF_ART_00",
      "WF_CHAIN_00"
    },
    icon = {"WF_ART01", "WF_HMG01"}
  },
  {
    num = 2,
    title = {
      StringID.NewStuff10,
      StringID.NewStuff11
    },
    stats = {
      StringID.NewStuffStats10,
      StringID.NewStuffStats11
    },
    statsB = {
      StringID.NewStuffStatsB10,
      StringID.NewStuffStatsB11
    },
    desc = {
      StringID.NewStuffDesc10,
      StringID.NewStuffDesc11
    },
    tex = {"WF_LTRA_00", "WF_AA_00"},
    icon = {"WF_LTRA01", "WF_AA01"}
  },
  {
    num = 1,
    title = {
      StringID.NewStuff12
    },
    stats = {
      StringID.NewStuffStats12
    },
    statsB = {
      StringID.NewStuffStatsB12
    },
    desc = {
      StringID.NewStuffDesc12
    },
    tex = {"WF_HTNK_00"},
    icon = {"WF_HTNK01"}
  },
  {
    num = 1,
    title = {
      StringID.NewStuff13
    },
    stats = {
      StringID.NewStuffStats13
    },
    statsB = {
      StringID.NewStuffStatsB13
    },
    desc = {
      StringID.NewStuffDesc13
    },
    tex = {"WF_GSHP_00"},
    icon = {"WF_GSHP01"}
  },
  {
    num = 2,
    title = {
      StringID.NewStuff14,
      StringID.NewStuff15
    },
    stats = {
      StringID.NewStuffStats14,
      StringID.NewStuffStats15
    },
    statsB = {
      StringID.NewStuffStatsB14,
      StringID.NewStuffStatsB15
    },
    desc = {
      StringID.NewStuffDesc14,
      StringID.NewStuffDesc15
    },
    tex = {
      "WF_BOMBER_00",
      "WF_PARA_00"
    },
    icon = {
      "WF_BOMBER01",
      "WF_PARABOLIC01"
    }
  },
  {
    num = 1,
    title = {
      StringID.NewStuff16
    },
    stats = {
      StringID.NewStuffStats16
    },
    statsB = {
      StringID.NewStuffStatsB16
    },
    desc = {
      StringID.NewStuffDesc16
    },
    tex = {"WF_FTR_00"},
    icon = {"WF_FTR01"}
  },
  {num = 0},
  {
    num = 1,
    title = {
      StringID.NewStuff17
    },
    stats = {
      StringID.NewStuffStats17
    },
    statsB = {
      StringID.NewStuffStatsB17
    },
    desc = {
      StringID.NewStuffDesc17
    },
    tex = {
      "WF_STRATO_00"
    },
    icon = {"WF_SRATO01"}
  },
  {num = 0},
  {
    num = 1,
    title = {
      StringID.NewStuff18
    },
    stats = {
      StringID.NewStuffStats18
    },
    statsB = {
      StringID.NewStuffStatsB18
    },
    desc = {
      StringID.NewStuffDesc18
    },
    tex = {"WF_BSTA_00"},
    icon = {"WF_BSTA01"}
  },
  {num = 0},
  {num = 0},
  {num = 0},
  {num = 0},
  {num = 0},
  {num = 0},
  {num = 0},
  {num = 0}
}
local boffx = 0
local boffy = -30
missionDataTable = {
  {
    X = 326,
    Y = 250,
    status = LEVELSTATUS.NEW,
    name = StringID.C1M1Name,
    mission = StringID.C1M1Mission,
    grade = GRADE.NONE
  },
  {
    X = 366,
    Y = 258,
    status = LEVELSTATUS.NEW,
    name = StringID.C1M2Name,
    mission = StringID.C1M2Mission,
    grade = GRADE.NONE
  },
  {
    X = 405,
    Y = 237,
    status = LEVELSTATUS.NEW,
    name = StringID.C1M3Name,
    mission = StringID.C1M3Mission,
    grade = GRADE.NONE
  },
  {
    X = 466,
    Y = 272,
    status = LEVELSTATUS.NEW,
    name = StringID.C1M4Name,
    mission = StringID.C1M4Mission,
    grade = GRADE.NONE
  },
  {
    X = 402,
    Y = 324,
    status = LEVELSTATUS.NEW,
    name = StringID.C1M5Name,
    mission = StringID.C1M5Mission,
    grade = GRADE.NONE
  },
  {
    X = 447,
    Y = 367,
    status = LEVELSTATUS.NEW,
    name = StringID.C1M6Name,
    mission = StringID.C1M6Mission,
    grade = GRADE.NONE
  },
  {
    X = 492,
    Y = 346,
    status = LEVELSTATUS.NEW,
    name = StringID.C1M7Name,
    mission = StringID.C1M7Mission,
    grade = GRADE.NONE
  },
  {
    X = 670,
    Y = 366,
    status = LEVELSTATUS.NEW,
    name = StringID.C2M1Name,
    mission = StringID.C2M1Mission,
    grade = GRADE.NONE
  },
  {
    X = 718,
    Y = 369,
    status = LEVELSTATUS.NEW,
    name = StringID.C2M2Name,
    mission = StringID.C2M2Mission,
    grade = GRADE.NONE
  },
  {
    X = 802,
    Y = 330,
    status = LEVELSTATUS.NEW,
    name = StringID.C2M3Name,
    mission = StringID.C2M3Mission,
    grade = GRADE.NONE
  },
  {
    X = 841,
    Y = 372,
    status = LEVELSTATUS.NEW,
    name = StringID.C2M4Name,
    mission = StringID.C2M4Mission,
    grade = GRADE.NONE
  },
  {
    X = 822,
    Y = 424,
    status = LEVELSTATUS.NEW,
    name = StringID.C3M1Name,
    mission = StringID.C3M1Mission,
    grade = GRADE.NONE
  },
  {
    X = 748,
    Y = 428,
    status = LEVELSTATUS.NEW,
    name = StringID.C3M2Name,
    mission = StringID.C3M2Mission,
    grade = GRADE.NONE
  },
  {
    X = 706,
    Y = 512,
    status = LEVELSTATUS.NEW,
    name = StringID.C3M3Name,
    mission = StringID.C3M3Mission,
    grade = GRADE.NONE
  },
  {
    X = 754,
    Y = 517,
    status = LEVELSTATUS.NEW,
    name = StringID.C3M4Name,
    mission = StringID.C3M4Mission,
    grade = GRADE.NONE
  },
  {
    X = 824,
    Y = 507,
    status = LEVELSTATUS.NEW,
    name = StringID.C3M5Name,
    mission = StringID.C3M5Mission,
    grade = GRADE.NONE
  },
  {
    X = 938,
    Y = 266,
    status = LEVELSTATUS.NEW,
    name = StringID.C4M1Name,
    mission = StringID.C4M1Mission,
    grade = GRADE.NONE
  },
  {
    X = 866,
    Y = 203,
    status = LEVELSTATUS.NEW,
    name = StringID.C4M2Name,
    mission = StringID.C4M2Mission,
    grade = GRADE.NONE
  },
  {
    X = 828,
    Y = 164,
    status = LEVELSTATUS.NEW,
    name = StringID.C4M3Name,
    mission = StringID.C4M3Mission,
    grade = GRADE.NONE
  },
  {
    X = 782,
    Y = 141,
    status = LEVELSTATUS.NEW,
    name = StringID.C4M4Name,
    mission = StringID.C4M4Mission,
    grade = GRADE.NONE
  },
  {
    X = 447 + boffx,
    Y = 367 + boffy,
    status = LEVELSTATUS.NEW,
    name = StringID.C1BonusName,
    mission = StringID.C1BonusMission,
    grade = GRADE.NONE
  },
  {
    X = 718 + boffx,
    Y = 369 + boffy,
    status = LEVELSTATUS.NEW,
    name = StringID.C2BonusName,
    mission = StringID.C2BonusMission,
    grade = GRADE.NONE
  },
  {
    X = 754 + boffx,
    Y = 517 + boffy,
    status = LEVELSTATUS.NEW,
    name = StringID.C3BonusName,
    mission = StringID.C3BonusMission,
    grade = GRADE.NONE
  },
  {
    X = 866 + boffx,
    Y = 203 + boffy,
    status = LEVELSTATUS.NEW,
    name = StringID.C4BonusName,
    mission = StringID.C4BonusMission,
    grade = GRADE.NONE
  }
}
bonusMissionMissions = {
  6,
  9,
  15,
  18
}
maxMissions = 20
maxBonusMissions = 4
MapNameData = {
  {X = 180, Y = 260},
  {X = 180, Y = 280},
  {X = 420, Y = 285},
  {X = 420, Y = 305},
  {X = 430, Y = 480},
  {X = 430, Y = 500},
  {X = 700, Y = 460},
  {X = 700, Y = 480},
  {X = 760, Y = 270},
  {X = 800, Y = 170}
}
globeArray = {
  {
    "BG_GLOBE_0000",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0001",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0002",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0003",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0004",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0005",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0006",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0007",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0008",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0009",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0010",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0011",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0012",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0013",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0014",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0015",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0016",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0017",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0018",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0019",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0020",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0021",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0022",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0023",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0024",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0025",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0026",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0027",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0028",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0029",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0030",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0031",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0032",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0033",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0034",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0035",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0036",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0037",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0038",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0039",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0040",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0041",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0042",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0043",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0044",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0045",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0046",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0047",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0048",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  },
  {
    "BG_GLOBE_0049",
    {-10, 183},
    {280, 216},
    {0, 0},
    {280, 216}
  }
}
numGlobeTextures = 50
globeIndex = 2
globeCount = 0
globeRate = 90
function openGlobe(backgrounds)
  for i = 1, numGlobeTextures do
    OpenFlat(globeArray[i])
  end
  backgrounds[37] = globeArray[1]
  backgrounds[37][6] = 128
end
function updateGlobe(backgrounds)
  globeCount = globeCount + 1
  if globeCount > 1 then
    globeCount = 0
    backgrounds[37] = globeArray[globeIndex]
    globeIndex = globeIndex + 1
    if globeIndex > numGlobeTextures then
      globeIndex = 1
    end
  end
end
function closeGlobe()
  for i = 1, numGlobeTextures do
    CloseFlat(globeArray[i])
  end
end
function print(t)
  DebugOut(t)
end
DebugOut("Global ticked ***")
function GlobalEnd()
end
