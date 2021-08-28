// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/westernfrontier/lightrecon.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "lightrecon.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$rootbone "WLightReconMKI"
	$mass 2250
    $concave
    $maxconvexpieces 35
}

// Called when bullets or physics touch the model
$SurfaceProp "metalvehicle"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/westernfrontier/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "mainTurret_Pitch" 0.00 0.22 0.75 rotate -90 -0 0
$attachment "muzzleTurret" "backTurret_Pitch" 0.00 0.30 -0.95 rotate 90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "driver_pitch" -90 90 loop 0
$poseparameter "driver_yaw" -180 180 loop 360
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "turret_yaw" -90 90 loop 0

$poseparameter "lwheel_turn" -10 10 loop 0
$poseparameter "rwheel_turn" -10 10 loop 0
$poseparameter "lwheel" -180 180 loop 360
$poseparameter "rwheel" -180 180 loop 360
$poseparameter "lbwheel" -180 180 loop 360
$poseparameter "rbwheel" -180 180 loop 360

$Sequence "subtract_" {
	"pp/aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimcenter "pp/aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "pp/mTurret_up.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "pp/mTurret_down.smd" subtract "subtract_" 0 frames 0 0

$Animation aimleft "pp/mTurret_left.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "pp/mTurret_right.smd" subtract "subtract_" 0 frames 0 0
$Animation aimback "pp/mTurret_back.smd" subtract "subtract_" 0 frames 0 0

$Sequence "driver_pitch" {
	"aimdown"
	"aimcenter"
	"aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "driver_pitch" -90 90
	autoplay
}

$Sequence "driver_yaw" {
	"aimback"
	"aimright"
	"aimcenter"
	"aimleft"
	"aimback"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "driver_yaw" -180 180
	autoplay
}

$Animation Taimup "pp/bTurret_up.smd" subtract "subtract_" 0 frames 0 0
$Animation Taimdown "pp/bTurret_down.smd" subtract "subtract_" 0 frames 0 0

$Animation Taimleft "pp/bTurret_left.smd" subtract "subtract_" 0 frames 0 0
$Animation Taimright "pp/bTurret_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "turret_pitch" {
	"Taimdown"
	"aimcenter"
	"Taimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "turret_pitch" -90 90
	autoplay
}

$Sequence "turret_yaw" {
	"Taimright"
	"aimcenter"
	"Taimleft"
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

$Animation lbwheel_90 "pp/lbwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lbwheel_180 "pp/lbwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lbwheel_270 "pp/lbwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lbwheel" {
	"lbwheel_180"
	"lbwheel_90"
	"aimcenter"
	"lbwheel_270"
	"lbwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lbwheel" -180 180
	autoplay
}

$Animation rbwheel_90 "pp/rbwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rbwheel_180 "pp/rbwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rbwheel_270 "pp/rbwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rbwheel" {
	"rbwheel_180"
	"rbwheel_90"
	"aimcenter"
	"rbwheel_270"
	"rbwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "rbwheel" -180 180
	autoplay
}

$Animation lsus_t "pp/lwheel_left.smd" subtract "subtract_" 0 frames 0 0
$Animation lsus_b "pp/lwheel_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel_turn" {
	"lsus_b"
	"aimcenter"
	"lsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lwheel_turn" -10 10
	autoplay
}

$Animation rsus_t "pp/rwheel_left.smd" subtract "subtract_" 0 frames 0 0
$Animation rsus_b "pp/rwheel_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel_turn" {
	"rsus_b"
	"aimcenter"
	"rsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rwheel_turn" -10 10
	autoplay
}

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"lightrecon.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}