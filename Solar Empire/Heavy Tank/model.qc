// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/solarempire/heavytank.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "heavytank.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 25000
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
$CDMaterials "models/cpthazama/bwii/solarempire/"

// Assign skins here
$texturegroup "skinfamilies"
{
	{
		"vsehtnk"
	}
	{
		"vsehtnk_old"
	}
}

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "Barrel" 0.00 0.00 4.20 rotate -90 -0 0
$attachment "lTurret" "lTurret_Pitch" 1.30 0.00 0.00 rotate -0 -0 0
$attachment "rTurret" "rTurret_Pitch" -1.30 0.00 0.00 rotate -0 180 -180

// Sets the min max z for a pose parameter
$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "lgun_yaw" -90 90 loop 0
$poseparameter "lgun_pitch" -90 90 loop 0
$poseparameter "rgun_yaw" -90 90 loop 0
$poseparameter "rgun_pitch" -90 90 loop 0

$poseparameter "lwheel1" -180 180 loop 360
$poseparameter "lwheel2" -180 180 loop 360
$poseparameter "lwheel3" -180 180 loop 360
$poseparameter "rwheel1" -180 180 loop 360
$poseparameter "rwheel2" -180 180 loop 360
$poseparameter "rwheel3" -180 180 loop 360

$Sequence "subtract_" {
	"pp/aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimleft "pp/mTurret_90.smd" subtract "subtract_" 0 frames 0 0
$Animation aimcenter "pp/aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "pp/mTurret_270.smd" subtract "subtract_" 0 frames 0 0
$Animation aimback "pp/mTurret_180.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "pp/mTurret_up.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "pp/mTurret_down.smd" subtract "subtract_" 0 frames 0 0

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

$Animation tl_aimleft "pp/lTurret_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation tl_aimright "pp/lTurret_backward.smd" subtract "subtract_" 0 frames 0 0
$Animation tl_aimup "pp/lTurret_up.smd" subtract "subtract_" 0 frames 0 0
$Animation tl_aimdown "pp/lTurret_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lgun_pitch" {
	"tl_aimdown"
	"aimcenter"
	"tl_aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lgun_pitch" -90 90
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

$Animation tr_aimleft "pp/rTurret_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation tr_aimright "pp/rTurret_backward.smd" subtract "subtract_" 0 frames 0 0
$Animation tr_aimup "pp/rTurret_up.smd" subtract "subtract_" 0 frames 0 0
$Animation tr_aimdown "pp/rTurret_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rgun_pitch" {
	"tr_aimdown"
	"aimcenter"
	"tr_aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rgun_pitch" -90 90
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

$Animation lwheel1_90 "pp/lwheel1_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel1_180 "pp/lwheel1_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel1_270 "pp/lwheel1_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel1" {
	"lwheel1_180"
	"lwheel1_90"
	"aimcenter"
	"lwheel1_270"
	"lwheel1_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheel1" -180 180
	autoplay
}

$Animation lwheel2_90 "pp/lwheel2_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel2_180 "pp/lwheel2_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel2_270 "pp/lwheel2_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel2" {
	"lwheel2_180"
	"lwheel2_90"
	"aimcenter"
	"lwheel2_270"
	"lwheel2_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheel2" -180 180
	autoplay
}

$Animation lwheel3_90 "pp/lwheel3_90.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel3_180 "pp/lwheel3_180.smd" subtract "subtract_" 0 frames 0 0
$Animation lwheel3_270 "pp/lwheel3_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lwheel3" {
	"lwheel3_180"
	"lwheel3_90"
	"aimcenter"
	"lwheel3_270"
	"lwheel3_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheel3" -180 180
	autoplay
}

$Animation rwheel1_90 "pp/rwheel1_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel1_180 "pp/rwheel1_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel1_270 "pp/rwheel1_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel1" {
	"rwheel1_180"
	"rwheel1_90"
	"aimcenter"
	"rwheel1_270"
	"rwheel1_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "lwheel1" -180 180
	autoplay
}

$Animation rwheel2_90 "pp/rwheel2_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel2_180 "pp/rwheel2_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel2_270 "pp/rwheel2_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel2" {
	"rwheel2_180"
	"rwheel2_90"
	"aimcenter"
	"rwheel2_270"
	"rwheel2_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "rwheel2" -180 180
	autoplay
}

$Animation rwheel3_90 "pp/rwheel3_90.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel3_180 "pp/rwheel3_180.smd" subtract "subtract_" 0 frames 0 0
$Animation rwheel3_270 "pp/rwheel3_270.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rwheel3" {
	"rwheel3_180"
	"rwheel3_90"
	"aimcenter"
	"rwheel3_270"
	"rwheel3_180"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "rwheel3" -180 180
	autoplay
}

$Sequence "idle" {
	"heavytank.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}