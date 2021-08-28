// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/battleship.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "battleship.smd"
}

// Skins
$texturegroup "skinfamilies"
{
	{"vx_battleship01_main"}
	{"vx_battleship01_main_old"}
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$rootbone "XBattleship"
	$mass 8346100
    $concave
    $maxconvexpieces 80
}

// Called when bullets or physics touch the model
$SurfaceProp "metalvehicle"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/xylvania/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "mainTurret_Pitch" 0.00 0.00 1.15 rotate -90 -0 0
$attachment "muzzle1" "mainTurret_Pitch" 0.50 0.00 3.50 rotate -90 -0 0
$attachment "muzzle2" "mainTurret_Pitch" -0.50 0.00 3.50 rotate -90 -0 0
$attachment "lTurret" "lTurret_Pitch" 0.80 0.20 0.00 rotate 0 -0 0
$attachment "rTurret" "rTurret_Pitch" -0.80 0.20 0.00 rotate -0 180 -180
$attachment "lCannon" "lCannon_Pitch" 1.60 0.00 0.00 rotate 0 -0 0
$attachment "rCannon" "rCannon_Pitch" -1.60 0.00 0.00 rotate -0 180 -180
$attachment "antiair" "antiAir_Pitch" 0.00 0.00 -1.00 rotate 90 -0 0
$attachment "antiair1" "antiAir_Pitch" 0.85 0.15 -1.00 rotate 90 -0 0
$attachment "antiair2" "antiAir_Pitch" -0.85 0.15 -1.00 rotate 90 -0 0
$attachment "antiair3" "antiAir_Pitch" 0.85 -0.2 -1.00 rotate 90 -0 0
$attachment "antiair4" "antiAir_Pitch" -0.85 -0.2 -1.00 rotate 90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "turret_yaw" -90 90 loop 0

$poseparameter "lwheel" -180 180 loop 360
$poseparameter "rwheel" -180 180 loop 360

$Sequence "subtract_" {
	"pp/aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimcenter "pp/aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "pp/aimup.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "pp/aimdown.smd" subtract "subtract_" 0 frames 0 0

$Animation aimleft "pp/aimleft.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "pp/aimright.smd" subtract "subtract_" 0 frames 0 0

$Sequence "turret_pitch" {
	"aimdown"
	"aimcenter"
	"aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "turret_pitch" -45 45
	autoplay
}

$Sequence "turret_yaw" {
	"aimright"
	"aimcenter"
	"aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "turret_yaw" -90 90
	autoplay
}

$Animation lwheel_90 "pp/lwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel_180 "pp/lwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel_270 "pp/lwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel" {
	"lwheel_180"
	"lwheel_90"
	"aimcenter"
	"lwheel_270"
	"lwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheel" -180 180
	autoplay
}

$Animation rwheel_90 "pp/rwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel_180 "pp/rwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel_270 "pp/rwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel" {
	"rwheel_180"
	"rwheel_90"
	"aimcenter"
	"rwheel_270"
	"rwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "rwheel" -180 180
	autoplay
}

$Animation rcaimup "pp/rCannon_up.smd" subtract "subtract_" 0 frames 0 0
$Animation rcaimdown "pp/rCannon_down.smd" subtract "subtract_" 0 frames 0 0
$Animation rcaimleft "pp/rCannon_left.smd" subtract "subtract_" 0 frames 0 0
$Animation rcaimright "pp/rCannon_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rCannon_pitch" {
	"rcaimdown"
	"aimcenter"
	"rcaimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rCannon_pitch" -45 45
	autoplay
}

$Sequence "rCannon_yaw" {
	"rcaimright"
	"aimcenter"
	"rcaimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rCannon_yaw" -90 90
	autoplay
}

$Animation rtaimup "pp/rTurret_up.smd" subtract "subtract_" 0 frames 0 0
$Animation rtaimdown "pp/rTurret_down.smd" subtract "subtract_" 0 frames 0 0
$Animation rtaimleft "pp/rTurret_left.smd" subtract "subtract_" 0 frames 0 0
$Animation rtaimright "pp/rTurret_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rTurret_pitch" {
	"rtaimdown"
	"aimcenter"
	"rtaimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rTurret_pitch" -45 45
	autoplay
}

$Sequence "rTurret_yaw" {
	"rtaimright"
	"aimcenter"
	"rtaimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rTurret_yaw" -90 90
	autoplay
}

$Animation lcaimup "pp/lCannon_up.smd" subtract "subtract_" 0 frames 0 0
$Animation lcaimdown "pp/lCannon_down.smd" subtract "subtract_" 0 frames 0 0
$Animation lcaimleft "pp/lCannon_left.smd" subtract "subtract_" 0 frames 0 0
$Animation lcaimright "pp/lCannon_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lCannon_pitch" {
	"lcaimdown"
	"aimcenter"
	"lcaimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lCannon_pitch" -45 45
	autoplay
}

$Sequence "lCannon_yaw" {
	"lcaimright"
	"aimcenter"
	"lcaimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lCannon_yaw" -90 90
	autoplay
}

$Animation ltaimup "pp/lTurret_up.smd" subtract "subtract_" 0 frames 0 0
$Animation ltaimdown "pp/lTurret_down.smd" subtract "subtract_" 0 frames 0 0
$Animation ltaimleft "pp/lTurret_left.smd" subtract "subtract_" 0 frames 0 0
$Animation ltaimright "pp/lTurret_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lTurret_pitch" {
	"ltaimdown"
	"aimcenter"
	"ltaimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lTurret_pitch" -45 45
	autoplay
}

$Sequence "lTurret_yaw" {
	"ltaimright"
	"aimcenter"
	"ltaimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lTurret_yaw" -90 90
	autoplay
}

$Animation aaaimup "pp/antiair_up.smd" subtract "subtract_" 0 frames 0 0
$Animation aaaimdown "pp/antiair_down.smd" subtract "subtract_" 0 frames 0 0
$Animation aaaimleft "pp/antiair_left.smd" subtract "subtract_" 0 frames 0 0
$Animation aaaimright "pp/antiair_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "antiair_pitch" {
	"aaaimdown"
	"aimcenter"
	"aaaimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "antiair_pitch" -45 45
	autoplay
}

$Sequence "antiair_yaw" {
	"aaaimright"
	"aimcenter"
	"aaaimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "antiair_yaw" -90 90
	autoplay
}

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"battleship.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "sink" {
	"sink.smd"
	activity "ACT_YOUSUNKMYBATTLESHIP" 1
	fadein 0.2
	fadeout 0.2
	fps 12
}