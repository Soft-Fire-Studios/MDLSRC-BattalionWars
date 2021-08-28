// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/advancedtank.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 40

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "advancedtank.smd"
}

$origin 0 0 -9

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 15000
    $concave
    $maxconvexpieces 47
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
$attachment "muzzle" "bmuzzle01" 0.00 0.00 0 rotate -0 90 0
$attachment "turret" "amuzzle" 0.00 0 0 rotate -0 90 0

// Sets the min max z for a pose parameter
$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "t_yaw" -180 180 loop 360
$poseparameter "t_pitch" -45 45 loop 0

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

$Animation tBack "pp/tBack.smd" subtract "subtract_" 0 frames 0 0
$Animation tUp "pp/tUp.smd" subtract "subtract_" 0 frames 0 0
$Animation tDown "pp/tDown.smd" subtract "subtract_" 0 frames 0 0
$Animation tLeft "pp/tLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation tRight "pp/tRight.smd" subtract "subtract_" 0 frames 0 0

$Sequence "t_pitch" {
	"tDown"
	"mCenter"
	"tUp"
	fps 30
	delta
	blendwidth 3
	blendcenter mCenter
	blend "t_pitch" -45 45
	autoplay
}

$Sequence "t_yaw" {
	"tBack"
	"tRight"
	"mCenter"
	"tLeft"
	"tBack"
	fps 30
	delta
	blendwidth 5
	blendcenter mCenter
	blend "t_yaw" -180 180
	autoplay
}

$weightlist "wheels_left" {
	"LTRACKMIDDLE" 1
	"LTRACKIBACK" 1
	"LTRACKFRONT" 1
	"LTRACKBACK" 1
	"LTHIGH02" 1
}

$weightlist "wheels_right" {
	"RTRACKMIDDLE" 1
	"RTRACKIBACK" 1
	"RTRACKFRONT" 1
	"RTRACKBACK" 1
	"RTHIGH01" 1
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
	"advancedtank.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}