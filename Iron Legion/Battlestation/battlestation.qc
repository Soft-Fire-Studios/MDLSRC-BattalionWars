// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/ironlegion/battlestation.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "battlestation.smd"
}

//Creates simple physics
$CollisionModel "battlestation.smd" {
	$mass 80000
}

// Called when bullets or physics touch the model
$SurfaceProp "metalvehicle"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/ironlegion/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "Turret" 0.00 0.00 0.00 rotate -90 -0 0
$attachment "lMain" "Turret" 1.50 0.50 4.40 rotate -90 -0 0
$attachment "rMain" "Turret" -1.50 0.50 4.40 rotate -90 -0 0
$attachment "lCannon" "lCannon" 0.00 -0.40 -1.50 rotate 90 -0 0
$attachment "rCannon" "rCannon" 0.00 -0.40 -1.50 rotate 90 -0 0
$attachment "lTurret" "lTurret_Gun" 2.10 0.00 0.00 rotate -0 0 0
$attachment "rTurret" "rTurret_Gun" -2.20 0.00 0.00 rotate 0 -180 -180
$attachment "cTurret" "cTurret" 0.00 0.00 -2.10 rotate 90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "lcannon_yaw" 0 90 loop 0
$poseparameter "rcannon_yaw" -90 0 loop 0
$poseparameter "lMG_yaw" -90 10 loop 0
$poseparameter "rMG_yaw" -10 90 loop 0
$poseparameter "lMG_pitch" -90 90 loop 0
$poseparameter "rMG_pitch" -90 90 loop 0
$poseparameter "cMG_pitch" -90 90 loop 0

$poseparameter "lwheel_sus" -5 5 loop 0
$poseparameter "rwheel_sus" -5 5 loop 0
$poseparameter "lbwheel_sus" -5 5 loop 0
$poseparameter "rbwheel_sus" -5 5 loop 0
$poseparameter "lwheel" -180 180 loop 360
$poseparameter "rwheel" -180 180 loop 360
$poseparameter "lbwheel" -180 180 loop 360
$poseparameter "rbwheel" -180 180 loop 360
$poseparameter "cwheel" -180 180 loop 360

$Sequence "subtract_" {
	"pp/ch_y_forward.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Sequence "subtractwheel_" {
	"pp/wheel_neutral.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation neutral "pp/wheel_neutral.smd" subtract "subtractwheel_" 0 frames 0 0

$Animation aimcenter "pp/ch_y_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "pp/ch_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "pp/ch_p_down.smd" subtract "subtract_" 0 frames 0 0

$Animation aimleft "pp/ch_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "pp/ch_y_right.smd" subtract "subtract_" 0 frames 0 0
$Animation aimback "pp/ch_y_backward.smd" subtract "subtract_" 0 frames 0 0

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

$Animation lC_aimleft "pp/lcannon_y_backward.smd" subtract "subtract_" 0 frames 0 0
$Animation lC_aimright "pp/lcannon_y_forward.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lcannon_yaw" {
	"lC_aimright"
	//"aimcenter"
	"lC_aimleft"
	fps 30
	delta
	blendwidth 2
	blendcenter aimcenter
	blend "lcannon_yaw" 0 90
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
	blend "lMG_yaw" -90 10
	autoplay
}

$Animation lT_aimup "pp/lturret_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation lT_aimip "pp/lturret_p_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lMG_pitch" {
	"lT_aimup"
	"aimcenter"
	"lT_aimip"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lMG_pitch" -90 90
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
	blend "rMG_yaw" -10 90
	autoplay
}

$Animation rT_aimup "pp/rturret_p_ up.smd" subtract "subtract_" 0 frames 0 0
$Animation rT_aimip "pp/rturret_p_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rMG_pitch" {
	"rT_aimup"
	"aimcenter"
	"rT_aimip"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rMG_pitch" -90 90
	autoplay
}

$Animation cT_aimup "pp/cturret_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation cT_aimip "pp/cturret_p_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "cMG_pitch" {
	"cT_aimup"
	"aimcenter"
	"cT_aimip"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "cMG_pitch" -90 90
	autoplay
}

$Animation lwheel_90 "pp/lwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel_180 "pp/lwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel_270 "pp/lwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel" {
	"lwheel_180"
	"lwheel_90"
	"neutral"
	"lwheel_270"
	"lwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter neutral
	blend "lwheel" -180 180
	autoplay
}

$Animation rwheel_90 "pp/rwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel_180 "pp/rwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel_270 "pp/rwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel" {
	"rwheel_180"
	"rwheel_90"
	"neutral"
	"rwheel_270"
	"rwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter neutral
	blend "rwheel" -180 180
	autoplay
}

$Animation lbwheel_90 "pp/lbwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lbwheel_180 "pp/lbwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lbwheel_270 "pp/lbwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lbwheel" {
	"lbwheel_180"
	"lbwheel_90"
	"neutral"
	"lbwheel_270"
	"lbwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter neutral
	blend "lbwheel" -180 180
	autoplay
}

$Animation rbwheel_90 "pp/rbwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rbwheel_180 "pp/rbwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rbwheel_270 "pp/rbwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rbwheel" {
	"rbwheel_180"
	"rbwheel_90"
	"neutral"
	"rbwheel_270"
	"rbwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter neutral
	blend "rbwheel" -180 180
	autoplay
}

$Animation cwheel_90 "pp/cwheel_90.smd" subtract "subtract_" 0 frames 0 0
$Animation cwheel_180 "pp/cwheel_180.smd" subtract "subtract_" 0 frames 0 0
$Animation cwheel_270 "pp/cwheel_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "cwheel" {
	"cwheel_180"
	"cwheel_90"
	"neutral"
	"cwheel_270"
	"cwheel_180"
	fps 30
	delta
	blendwidth 5
	blendcenter neutral
	blend "cwheel" -180 180
	autoplay
}

$Animation lsus_t "pp/lwheel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation lsus_b "pp/lwheel_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel_sus" {
	"lsus_b"
	"neutral"
	"lsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter neutral
	blend "lwheel_sus" -5 5
	autoplay
}

$Animation rsus_t "pp/rwheel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation rsus_b "pp/rwheel_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel_sus" {
	"rsus_b"
	"neutral"
	"rsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter neutral
	blend "rwheel_sus" -5 5
	autoplay
}

$Animation lbsus_t "pp/lbwheel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation lbsus_b "pp/lbwheel_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lbwheel_sus" {
	"lbsus_b"
	"neutral"
	"lbsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter neutral
	blend "lbwheel_sus" -5 5
	autoplay
}

$Animation rbsus_t "pp/rbwheel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation rbsus_b "pp/rbwheel_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rbwheel_sus" {
	"rbsus_b"
	"neutral"
	"rbsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter neutral
	blend "rbwheel_sus" -5 5
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