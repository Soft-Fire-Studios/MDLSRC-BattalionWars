// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/battlestation_classic.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "battlestation_original.smd"
}

//Creates simple physics
$CollisionModel "phys_original.smd" {
	$mass 78000
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
$attachment "muzzle" "UNITGROUNDXBATTLESTATION" 0.00 3.50 1.80 rotate -90 -0 0
$attachment "lMain" "lMain" 0.00 -0.35 5.00 rotate -90 -0 0
$attachment "rMain" "rMain" 0.00 -0.35 5.00 rotate -90 -0 0
$attachment "lCannon" "lCannon" 0.00 -0.10 1.50 rotate -90 -0 0
$attachment "rCannon" "rCannon" 0.00 -0.10 1.50 rotate -90 -0 0
$attachment "lTurret" "lTurret" 2.10 1.00 0.00 rotate 0 -0 0
$attachment "rTurret" "rTurret" -2.10 1.00 0.00 rotate 180 -0 0
$attachment "cTurret" "cTurret" 0.00 1.00 -2.10 rotate 90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "lcannon_yaw" -90 0 loop 0
$poseparameter "rcannon_yaw" -90 0 loop 0
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
$Animation aimup "pp/ch_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "pp/ch_p_down.smd" subtract "subtract_" 0 frames 0 0

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

$Animation lC_aimleft "pp/lcannon_y_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation lC_aimright "pp/lcannon_y_backward.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lcannon_yaw" {
	"lC_aimright"
	//"aimcenter"
	"lC_aimleft"
	fps 30
	delta
	blendwidth 2
	blendcenter aimcenter
	blend "lcannon_yaw" -90 0
	autoplay
}

$Animation rC_aimleft "pp/rcannon_y_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation rC_aimright "pp/rcannon_y_backward.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rcannon_yaw" {
	"rC_aimright"
	//"aimcenter"
	"rC_aimleft"
	fps 30
	delta
	blendwidth 2
	blendcenter aimcenter
	blend "rcannon_yaw" -90 0
	autoplay
}

$Animation lT_aimleft "pp/lturret_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation lT_aimright "pp/lturret_y_right.smd" subtract "subtract_" 0 frames 0 0

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

$Animation rT_aimleft "pp/rturret_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation rT_aimright "pp/rturret_y_right.smd" subtract "subtract_" 0 frames 0 0

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

$Animation cT_aimleft "pp/cturret_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation cT_aimright "pp/cturret_y_right.smd" subtract "subtract_" 0 frames 0 0

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
	"battlestation_original.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}