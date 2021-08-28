// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/solarempire/lightrecon.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "recon.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 7500
    $concave
    $maxconvexpieces 70
}

// Called when bullets or physics touch the model
$SurfaceProp "metalvehicle"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/solarempire/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "mTurret_Pitch" 0.00 0.15 0.75 rotate -90 -0 0
$attachment "bt" "bTurret_Pitch" 0.00 0.20 -0.90 rotate 90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "lt_yaw" 90 90 loop 0
$poseparameter "lt_pitch" -45 45 loop 0

$poseparameter "lWheels" -180 180 loop 360
$poseparameter "rWheels" -180 180 loop 360

$Sequence "subtract_" {
	"pp/mCenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation mCenter "pp/mCenter.smd" subtract "subtract_" 0 frames 0 0
$Animation mBack "pp/mBack.smd" subtract "subtract_" 0 frames 0 0
$Animation mUp "pp/mUp.smd" subtract "subtract_" 0 frames 0 0
$Animation mDown "pp/mDown.smd" subtract "subtract_" 0 frames 0 0
$Animation mLeft "pp/mLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation mRight "pp/mRight.smd" subtract "subtract_" 0 frames 0 0

$Sequence "turret_pitch" {
	"mDown"
	"mCenter"
	"mUp"
	fps 30
	delta
	blendwidth 3
	blendcenter mCenter
	blend "turret_pitch" -90 90
	autoplay
}

$Sequence "turret_yaw" {
	"mBack"
	"mRight"
	"mCenter"
	"mLeft"
	"mBack"
	fps 30
	delta
	blendwidth 5
	blendcenter mCenter
	blend "turret_yaw" -180 180
	autoplay
}

$Animation ltUp "pp/bUp.smd" subtract "subtract_" 0 frames 0 0
$Animation ltDown "pp/bDown.smd" subtract "subtract_" 0 frames 0 0
$Animation ltLeft "pp/bLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation ltRight "pp/bRight.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lt_pitch" {
	"ltDown"
	"mCenter"
	"ltUp"
	fps 30
	delta
	blendwidth 3
	blendcenter mCenter
	blend "lt_pitch" -45 45
	autoplay
}

$Sequence "lt_yaw" {
	"ltRight"
	"mCenter"
	"ltLeft"
	fps 30
	delta
	blendwidth 3
	blendcenter mCenter
	blend "lt_yaw" -180 180
	autoplay
}

$weightlist "wheels_left" {
	"LWHEEL1" 1
	"LWHEEL2" 1
	"LWHEEL1_TIRE" 1
	"LWHEEL2_TIRE" 1
}

$weightlist "wheels_right" {
	"RWHEEL1" 1
	"RWHEEL2" 1
	"RWHEEL1_TIRE" 1
	"RWHEEL2_TIRE" 1
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
	"recon.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}