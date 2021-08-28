// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/artillery.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "artillery.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 20500
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
$attachment "muzzle" "cannon" -0.35 0.30 4.80 rotate -90 -0 0
$attachment "turret" "gun" 0.00 0.80 2.15 rotate -90 0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_pitch" -40 40 loop 0
$poseparameter "gun_yaw" -60 60 loop 0

$poseparameter "lwheela" -180 180 loop 360
$poseparameter "lwheelb" -180 180 loop 360
$poseparameter "lwheelc" -180 180 loop 360
$poseparameter "lwheeld" -180 180 loop 360
$poseparameter "rwheela" -180 180 loop 360
$poseparameter "rwheelb" -180 180 loop 360
$poseparameter "rwheelc" -180 180 loop 360
$poseparameter "rwheeld" -180 180 loop 360

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

$Sequence "turret_pitch" {
	"aimdown"
	"aimcenter"
	"aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "turret_pitch" -70 70
	autoplay
}

$Animation tl_aimleft "pp/turret_y_left.smd" subtract "subtract_" 0 frames 0 0
$Animation tl_aimright "pp/turret_y_right.smd" subtract "subtract_" 0 frames 0 0

$Sequence "gun_yaw" {
	"tl_aimright"
	"aimcenter"
	"tl_aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "gun_yaw" -60 60
	autoplay
}

$Animation lwheela_90 "pp/lwheela_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheela_180 "pp/lwheela_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheela_270 "pp/lwheela_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheela" {
	"lwheela_180"
	"lwheela_90"
	"aimcenter"
	"lwheela_270"
	"lwheela_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheela" -180 180
	autoplay
}

$Animation lwheelb_90 "pp/lwheelb_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheelb_180 "pp/lwheelb_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheelb_270 "pp/lwheelb_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheelb" {
	"lwheelb_180"
	"lwheelb_90"
	"aimcenter"
	"lwheelb_270"
	"lwheelb_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheelb" -180 180
	autoplay
}

$Animation lwheelc_90 "pp/lwheelc_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheelc_180 "pp/lwheelc_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheelc_270 "pp/lwheelc_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheelc" {
	"lwheelc_180"
	"lwheelc_90"
	"aimcenter"
	"lwheelc_270"
	"lwheelc_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheelc" -180 180
	autoplay
}

$Animation lwheeld_90 "pp/lwheeld_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheeld_180 "pp/lwheeld_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheeld_270 "pp/lwheeld_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheeld" {
	"lwheeld_180"
	"lwheeld_90"
	"aimcenter"
	"lwheeld_270"
	"lwheeld_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheeld" -180 180
	autoplay
}

$Animation rwheela_90 "pp/rwheela_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheela_180 "pp/rwheela_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheela_270 "pp/rwheela_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheela" {
	"rwheela_180"
	"rwheela_90"
	"aimcenter"
	"rwheela_270"
	"rwheela_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "rwheela" -180 180
	autoplay
}

$Animation rwheelb_90 "pp/rwheelb_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheelb_180 "pp/rwheelb_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheelb_270 "pp/rwheelb_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheelb" {
	"rwheelb_180"
	"rwheelb_90"
	"aimcenter"
	"rwheelb_270"
	"rwheelb_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "rwheelb" -180 180
	autoplay
}

$Animation rwheelc_90 "pp/rwheelc_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheelc_180 "pp/rwheelc_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheelc_270 "pp/rwheelc_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheelc" {
	"rwheelc_180"
	"rwheelc_90"
	"aimcenter"
	"rwheelc_270"
	"rwheelc_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "rwheelc" -180 180
	autoplay
}

$Animation rwheeld_90 "pp/rwheeld_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheeld_180 "pp/rwheeld_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheeld_270 "pp/rwheeld_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheeld" {
	"rwheeld_180"
	"rwheeld_90"
	"aimcenter"
	"rwheeld_270"
	"rwheeld_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "rwheeld" -180 180
	autoplay
}

$Sequence "idle" {
	"artillery.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}