// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/antiair.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "antiair.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 12500
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
$attachment "muzzle" "barrel" 0 0 0 rotate -90 -0 0
$attachment "muzzle1" "barrel" 0.74 -0.20 4.00 rotate -90 -0 0
$attachment "muzzle2" "barrel" -0.74 -0.20 4.00 rotate -90 -0 0
$attachment "muzzle3" "barrel" 0.74 0.40 3.50 rotate -90 -0 0
$attachment "muzzle4" "barrel" -0.74 0.40 3.50 rotate -90 -0 0
$attachment "turret" "TURRET" 0.00 0.10 1.10 rotate -90 0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "turret_pitch" -40 40 loop 0
$poseparameter "gun_yaw" -90 90 loop 0
$poseparameter "gun_pitch" -40 40 loop 0

$Sequence "subtract_" {
	"pp/ch_y_forward.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimleft "pp/ch_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation aimcenter "pp/ch_y_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "pp/ch_y_right.smd" subtract "subtract_" 0 frames 0 0
$Animation aimback "pp/ch_y_backward.smd" subtract "subtract_" 0 frames 0 0
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
	blend "turret_pitch" -40 40
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

$Animation t_aimleft "pp/tA_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation t_aimright "pp/tA_y_right.smd" subtract "subtract_" 0 frames 0 0
$Animation t_aimup "pp/tA_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation t_aimdown "pp/tA_p_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "gun_pitch" {
	"t_aimdown"
	"aimcenter"
	"t_aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "gun_pitch" -40 40
	autoplay
}

$Sequence "gun_yaw" {
	"t_aimright"
	"aimcenter"
	"t_aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "gun_yaw" -90 90
	autoplay
}

$Sequence "idle" {
	"antiair.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}