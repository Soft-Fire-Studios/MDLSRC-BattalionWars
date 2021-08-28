// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/bomber.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "bomber.smd"
}

//Creates simple physics
$CollisionModel "bomber.smd" {
	$mass 13000
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
$attachment "center_gun" "center_gun" 0.00 0.00 -1.10 rotate 90 -0 0
$attachment "left_gun" "left_gun" 1.30 0.00 0.00 rotate 0 -0 0
$attachment "right_gun" "right_gun" -1.30 0.00 0.00 rotate 0 -180 -180
$attachment "left_rotor" "left_rotor" 0.00 0.00 0.00 rotate 90 -0 0
$attachment "right_rotor" "right_rotor" 0.00 0.00 0.00 rotate 90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "lgun_yaw" -90 90 loop 0
$poseparameter "lgun_pitch" -20 20 loop 0
$poseparameter "rgun_yaw" -90 90 loop 0
$poseparameter "rgun_pitch" -20 20 loop 0
$poseparameter "cgun_pitch" -70 10 loop 0

$Sequence "subtract_" {
	"pp/aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimcenter "pp/aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation tl_aimleft "pp/lturret_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation tl_aimright "pp/lturret_y_right.smd" subtract "subtract_" 0 frames 0 0
$Animation tl_aimup "pp/lturret_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation tl_aimdown "pp/lturret_p_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lgun_pitch" {
	"tl_aimdown"
	"aimcenter"
	"tl_aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lgun_pitch" -20 20
	autoplay
}

$Sequence "lgun_yaw" {
	"tl_aimright"
	"aimcenter"
	"tl_aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lgun_yaw" -90 90
	autoplay
}

$Animation tr_aimleft "pp/rturret_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation tr_aimright "pp/rturret_y_right.smd" subtract "subtract_" 0 frames 0 0
$Animation tr_aimup "pp/rturret_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation tr_aimdown "pp/rturret_p_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rgun_pitch" {
	"tr_aimdown"
	"aimcenter"
	"tr_aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rgun_pitch" -20 20
	autoplay
}

$Sequence "rgun_yaw" {
	"tr_aimright"
	"aimcenter"
	"tr_aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rgun_yaw" -90 90
	autoplay
}

$Animation tc_aimup "pp/cturret_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation tc_aimdown "pp/cturret_p_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "cgun_pitch" {
	"tc_aimdown"
	"aimcenter"
	"tc_aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "cgun_pitch" -70 10
	autoplay
}

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"animations/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}