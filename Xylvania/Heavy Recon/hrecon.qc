// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/heavyrecon.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "hrecon.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$rootbone "XHRecon"
	$mass 2500
    //$concave
    //$maxconvexpieces 11
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
$attachment "muzzle" "DriverTurret" 0.00 0.00 0.90 rotate -90 -0 0
$attachment "muzzleTurret" "TURRET" 0.00 0.00 1.15 rotate -90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "driver_pitch" -90 90 loop 0
$poseparameter "driver_yaw" -90 90 loop 0
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "turret_yaw" -180 180 loop 360

$poseparameter "lwheel_sus" -5 5 loop 0
$poseparameter "rwheel_sus" -5 5 loop 0
$poseparameter "lbwheel_sus" -5 5 loop 0
$poseparameter "rbwheel_sus" -5 5 loop 0
$poseparameter "lwheel" -180 180 loop 360
$poseparameter "rwheel" -180 180 loop 360
$poseparameter "lbwheel" -180 180 loop 360
$poseparameter "rbwheel" -180 180 loop 360

$Sequence "subtract_" {
	"pp/ch_y_forward.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimcenter "pp/ch_y_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "pp/ch_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "pp/ch_p_down.smd" subtract "subtract_" 0 frames 0 0

$Animation aimleft "pp/ch_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "pp/ch_y_right.smd" subtract "subtract_" 0 frames 0 0

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
	"aimright"
	"aimcenter"
	"aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "driver_yaw" -90 90
	autoplay
}

$Animation Taimup "pp/turret_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation Taimdown "pp/turret_p_down.smd" subtract "subtract_" 0 frames 0 0

$Animation Taimleft "pp/turret_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation Taimright "pp/turret_y_right.smd" subtract "subtract_" 0 frames 0 0
$Animation Taimback "pp/turret_y_backward.smd" subtract "subtract_" 0 frames 0 0

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
	"Taimback"
	"Taimright"
	"aimcenter"
	"Taimleft"
	"Taimback"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "turret_yaw" -180 180
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

$Animation lsus_t "pp/lwheel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation lsus_b "pp/lwheel_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel_sus" {
	"lsus_b"
	"aimcenter"
	"lsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lwheel_sus" -5 5
	autoplay
}

$Animation rsus_t "pp/rwheel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation rsus_b "pp/rwheel_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel_sus" {
	"rsus_b"
	"aimcenter"
	"rsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rwheel_sus" -5 5
	autoplay
}

$Animation lbsus_t "pp/lbwheel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation lbsus_b "pp/lbwheel_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lbwheel_sus" {
	"lbsus_b"
	"aimcenter"
	"lbsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lbwheel_sus" -5 5
	autoplay
}

$Animation rbsus_t "pp/rbwheel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation rbsus_b "pp/rbwheel_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rbwheel_sus" {
	"rbsus_b"
	"aimcenter"
	"rbsus_t"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rbwheel_sus" -5 5
	autoplay
}

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"hrecon.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}