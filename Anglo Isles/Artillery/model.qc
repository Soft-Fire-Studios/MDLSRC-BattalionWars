// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/angloisles/artillery.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "artillery.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 16500
    $concave
    $maxconvexpieces 180
}

// Assign skins here
$texturegroup "skinfamilies"
{
	{
		"vaiartillery1_main_old"
		"vaiartillery2_main_old"
		"c5smvehicleunderside"
		"vthtnkt_treads2"
	}
	{
		"vaiartillery1_main"
		"vaiartillery2_main"
		"c5smvehicleunderside"
		"vthtnkt_treads2"
	}
}

// Called when bullets or physics touch the model
$SurfaceProp "metalvehicle"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/angloisles/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "mainPitch" 0.00 2.80 4.70 rotate -77 90 90
$attachment "lt" "turretPitch" 0.50 0.08 0.00 rotate 0 -0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_pitch" -45 45 loop 0
$poseparameter "gun_yaw" -90 90 loop 0
$poseparameter "gun_pitch" -45 45 loop 0

$poseparameter "lWheels" -180 180 loop 360
$poseparameter "rWheels" -180 180 loop 360

$Sequence "subtract_" {
	"pp/aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimcenter "pp/aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "pp/aimup.smd" subtract "subtract_" 0 frames 0 0

$Sequence "turret_pitch" {
	"aimcenter"
	"aimup"
	fps 30
	delta
	blendwidth 2
	blendcenter aimcenter
	blend "turret_pitch" -45 45
	autoplay
}

$Animation gunleft "pp/gunLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation gunright "pp/gunRight.smd" subtract "subtract_" 0 frames 0 0
$Animation gunup "pp/gunUp.smd" subtract "subtract_" 0 frames 0 0
$Animation gundown "pp/gunDown.smd" subtract "subtract_" 0 frames 0 0

$Sequence "gun_pitch" {
	"gundown"
	"aimcenter"
	"gunup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "gun_pitch" -45 45
	autoplay
}

$Sequence "gun_yaw" {
	"gunright"
	"aimcenter"
	"gunleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "gun_yaw" -90 90
	autoplay
}

$weightlist "wheels_left" {
	"lWheel1" 1
	"lWheel2" 1
	"lWheel3" 1
	"lWheel4" 1
}

$weightlist "wheels_right" {
	"rWheel1" 1
	"rWheel2" 1
	"rWheel3" 1
	"rWheel4" 1
}

$Animation lWheels_1 "pp/lWheels_1.smd" subtract "subtract_" 0 frames 0 0
$Animation lWheels_2 "pp/lWheels_2.smd" subtract "subtract_" 0 frames 0 0
$Animation lWheels_3 "pp/lWheels_3.smd" subtract "subtract_" 0 frames 0 0
$Animation lWheels_4 "pp/lWheels_4.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lWheels" {
	"lWheels_1"
	"lWheels_2"
	"lWheels_3"
	"lWheels_4"
	fps 30
	delta
	blendwidth 4
	blend "lWheels" -180 180
	autoplay
	weightlist "wheels_left"
}

$Animation rWheels_1 "pp/rWheels_1.smd" subtract "subtract_" 0 frames 0 0
$Animation rWheels_2 "pp/rWheels_2.smd" subtract "subtract_" 0 frames 0 0
$Animation rWheels_3 "pp/rWheels_3.smd" subtract "subtract_" 0 frames 0 0
$Animation rWheels_4 "pp/rWheels_4.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rWheels" {
	"rWheels_1"
	"rWheels_2"
	"rWheels_3"
	"rWheels_4"
	fps 30
	delta
	blendwidth 4
	blend "rWheels" -180 180
	autoplay
	weightlist "wheels_right"
}

$Sequence "idle" {
	"artillery.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}