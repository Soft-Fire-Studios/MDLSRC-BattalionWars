// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/battlestation.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "battlestation.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 80000
	$concave
    $maxconvexpieces 90
}

// Called when bullets or physics touch the model
$SurfaceProp "metalvehicle"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/xylvania/"

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "Mount" 0.00 0.00 0.00 rotate -90 -0 0
$attachment "lMain" "Turrets" 1.50 0.50 4.40 rotate -90 -0 0
$attachment "rMain" "Turrets" -1.50 0.50 4.40 rotate -90 -0 0
$attachment "lCannon" "lCannon" 0.00 -0.40 -1.50 rotate 90 -0 0
$attachment "rCannon" "rCannon" 0.00 -0.40 -1.50 rotate 90 -0 0
$attachment "lTurret" "lTurret" 2.10 0.00 0.00 rotate -0 0 0
$attachment "rTurret" "rTurret" -2.20 0.00 0.00 rotate 0 -180 -180
$attachment "cTurret" "cTurret" 0.00 0.00 -2.10 rotate 90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "lcannon_yaw" 0 90 loop 0
$poseparameter "rcannon_yaw" 0 90 loop 0
$poseparameter "lMG_yaw" -90 90 loop 0
$poseparameter "rMG_yaw" -90 90 loop 0
$poseparameter "cMG_yaw" -90 90 loop 0

$Sequence "subtract_" {
	"aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimcenter "aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "pp_n/mUp.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "pp_n/mDown.smd" subtract "subtract_" 0 frames 0 0

$Animation aimleft "pp_n/mLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "pp_n/mRight.smd" subtract "subtract_" 0 frames 0 0
$Animation aimback "pp_n/mBack.smd" subtract "subtract_" 0 frames 0 0

$Sequence "turret_pitch" {
	"aimdown"
	"aimcenter"
	"aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "turret_pitch" -90 90
	autoplay
}

$Sequence "turret_yaw" {
	"aimback"
	"aimright"
	"aimcenter"
	"aimleft"
	"aimback"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "turret_yaw" -180 180
	autoplay
}

$Animation lc_aimhalf "pp_n/lHalf.smd" subtract "subtract_" 0 frames 0 0
$Animation lC_aimback "pp_n/lBack.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lcannon_yaw" {
	"aimcenter"
	"lc_aimhalf"
	"lC_aimback"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lcannon_yaw" 0 90
	autoplay
}

$Animation rc_aimhalf "pp_n/rHalf.smd" subtract "subtract_" 0 frames 0 0
$Animation rC_aimback "pp_n/rBack.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rcannon_yaw" {
	"aimcenter"
	"rc_aimhalf"
	"rC_aimback"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rcannon_yaw" 0 90
	autoplay
}

$Animation lT_aimleft "pp_n/ltLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation lT_aimright "pp_n/ltRight.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lMG_yaw" {
	"lT_aimright"
	"aimcenter"
	"lT_aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lMG_yaw" -90 90
	autoplay
}

$Animation rT_aimleft "pp_n/rtLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation rT_aimright "pp_n/rtRight.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rMG_yaw" {
	"rT_aimright"
	"aimcenter"
	"rT_aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rMG_yaw" -90 90
	autoplay
}

$Animation cT_aimleft "pp_n/ctLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation cT_aimright "pp_n/ctRight.smd" subtract "subtract_" 0 frames 0 0

$Sequence "cMG_yaw" {
	"cT_aimright"
	"aimcenter"
	"cT_aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "cMG_yaw" -90 90
	autoplay
}

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"battlestation.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}