// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/tundranterritories/heavyrecon.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "heavyrecon.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 2550
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
$CDMaterials "models/cpthazama/bwii/tundranterritories/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "cTurret_Barrel" 0.00 0.00 -0.90 rotate 90 -0 0
$attachment "muzzleTurret" "rTurret_Barrel" 0.00 0.00 0.88 rotate -90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "cturret_pitch" -90 90 loop 0
$poseparameter "cturret_yaw" -90 90 loop 0
$poseparameter "rturret_pitch" -90 90 loop 0
$poseparameter "rturret_yaw" -90 90 loop 0

$poseparameter "lwheel_sus" -5 5 loop 0
$poseparameter "lwheel_turn" -10 10 loop 0
$poseparameter "rwheel_sus" -5 5 loop 0
$poseparameter "rwheel_turn" -10 10 loop 0
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

$Sequence "cturret_pitch" {
	"aimdown"
	"aimcenter"
	"aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "cturret_pitch" -90 90
	autoplay
}

$Sequence "cturret_yaw" {
	"aimright"
	"aimcenter"
	"aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "cturret_yaw" -90 90
	autoplay
}

$Animation Taimup "pp/rturret_p_up.smd" subtract "subtract_" 0 frames 0 0
$Animation Taimdown "pp/rturret_p_down.smd" subtract "subtract_" 0 frames 0 0

$Animation Taimleft "pp/rturret_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation Taimright "pp/rturret_y_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rturret_pitch" {
	"Taimdown"
	"aimcenter"
	"Taimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rturret_pitch" -90 90
	autoplay
}

$Sequence "rturret_yaw" {
	"Taimright"
	"aimcenter"
	"Taimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rturret_yaw" -90 90
	autoplay
}

$Animation lt_l "pp/lwheel_left.smd" subtract "subtract_" 0 frames 0 0
$Animation lt_r "pp/lwheel_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel_turn" {
	"lt_l"
	"aimcenter"
	"lt_r"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lwheel_turn" -10 10
	autoplay
}

$Animation rt_l "pp/rhweel_left.smd" subtract "subtract_" 0 frames 0 0
$Animation rt_r "pp/rhweel_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel_turn" {
	"rt_l"
	"aimcenter"
	"rt_r"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rwheel_turn" -10 10
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

$Animation rsus_t "pp/rhweel_up.smd" subtract "subtract_" 0 frames 0 0
$Animation rsus_b "pp/rhweel_down.smd" subtract "subtract_" 0 frames 0 0

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

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"heavyrecon.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}