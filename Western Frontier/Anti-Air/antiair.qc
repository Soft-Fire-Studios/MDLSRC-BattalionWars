// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/westernfrontier/antiair.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "antiair.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$rootbone "Wantiair"
	$mass 10300
    $concave
    $maxconvexpieces 50
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
$attachment "muzzle" "mainTurret_Pitch" 0.00 0.00 1.00 rotate -90 -0 0
$attachment "tube1" "mainTurret_Pitch" 1.00 0.35 1.50 rotate -90 -0 0
$attachment "tube2" "mainTurret_Pitch" 1.60 0.35 1.50 rotate -90 -0 0
$attachment "tube3" "mainTurret_Pitch" 1.00 -0.35 1.50 rotate -90 -0 0
$attachment "tube4" "mainTurret_Pitch" 1.60 -0.35 1.50 rotate -90 -0 0
$attachment "tube5" "mainTurret_Pitch" -1.00 0.35 1.50 rotate -90 -0 0
$attachment "tube6" "mainTurret_Pitch" -1.60 0.35 1.50 rotate -90 -0 0
$attachment "tube7" "mainTurret_Pitch" -1.00 -0.35 1.50 rotate -90 -0 0
$attachment "tube8" "mainTurret_Pitch" -1.60 -0.35 1.50 rotate -90 -0 0
$attachment "muzzleTurret" "sideTurret" 0.03 0.60 2.10 rotate -90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "driver_pitch" -90 90 loop 0
$poseparameter "driver_yaw" -180 180 loop 360
$poseparameter "turret_yaw" -90 90 loop 0

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

$Animation Taimleft "pp/sTurret_left.smd" subtract "subtract_" 0 frames 0 0
$Animation Taimright "pp/sTurret_right.smd" subtract "subtract_" 0 frames 0 0

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

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"antiair.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}