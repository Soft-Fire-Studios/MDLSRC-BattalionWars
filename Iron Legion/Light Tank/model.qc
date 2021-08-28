// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/ironlegion/lighttank.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "model.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$mass 25000
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
$CDMaterials "models/cpthazama/bwii/ironlegion/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "mTurret_Pitch" 0.00 0.00 1.10 rotate -90 0 0
$attachment "turret" "lTurret_Pitch" 0.00 0.30 1.00 rotate -90 0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_yaw" -180 180 loop 360
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "l_yaw" -90 90 loop 360
$poseparameter "l_pitch" -45 45 loop 0

$poseparameter "lWheels" -180 180 loop 360
$poseparameter "rWheels" -180 180 loop 360

$Sequence "subtract_" {
	"mCenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation mCenter "mCenter.smd" subtract "subtract_" 0 frames 0 0
$Animation mBack "mBack.smd" subtract "subtract_" 0 frames 0 0
$Animation mUp "mUp.smd" subtract "subtract_" 0 frames 0 0
$Animation mDown "mDown.smd" subtract "subtract_" 0 frames 0 0
$Animation mLeft "mLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation mRight "mRight.smd" subtract "subtract_" 0 frames 0 0

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

$Animation lUp "lUp.smd" subtract "subtract_" 0 frames 0 0
$Animation lDown "lDown.smd" subtract "subtract_" 0 frames 0 0
$Animation lLeft "lLeft.smd" subtract "subtract_" 0 frames 0 0
$Animation lRight "lRight.smd" subtract "subtract_" 0 frames 0 0

$Sequence "l_pitch" {
	"lDown"
	"mCenter"
	"lUp"
	fps 30
	delta
	blendwidth 3
	blendcenter mCenter
	blend "l_pitch" -45 45
	autoplay
}

$Sequence "l_yaw" {
	"lRight"
	"mCenter"
	"lLeft"
	fps 30
	delta
	blendwidth 3
	blendcenter mCenter
	blend "l_yaw" -90 90
	autoplay
}

$weightlist "wheels_left" {
	"L_WHEEL_A" 1
	"L_WHEEL_B" 1
	"L_WHEEL_C" 1
	"L_INTERP_AB" 1
	"L_INTERP_BC" 1
}

$weightlist "wheels_right" {
	"R_WHEEL_A" 1
	"R_WHEEL_B" 1
	"R_WHEEL_C" 1
	"R_INTERP_AB" 1
	"R_INTERP_BC" 1
}

$Animation lWheels1 "lWheels1.smd" subtract "subtract_" 0 frames 0 0
$Animation lWheels2 "lWheels2.smd" subtract "subtract_" 0 frames 0 0
$Animation lWheels3 "lWheels3.smd" subtract "subtract_" 0 frames 0 0
$Animation lWheels4 "lWheels4.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lWheels" {
	"lWheels1"
	"lWheels2"
	"lWheels3"
	"lWheels4"
	fps 30
	delta
	blendwidth 4
	blend "lWheels" -180 180
	autoplay
	weightlist "wheels_left"
}

$Animation rWheels1 "rWheels1.smd" subtract "subtract_" 0 frames 0 0
$Animation rWheels2 "rWheels2.smd" subtract "subtract_" 0 frames 0 0
$Animation rWheels3 "rWheels3.smd" subtract "subtract_" 0 frames 0 0
$Animation rWheels4 "rWheels4.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rWheels" {
	"rWheels1"
	"rWheels2"
	"rWheels3"
	"rWheels4"
	fps 30
	delta
	blendwidth 4
	blend "rWheels" -180 180
	autoplay
	weightlist "wheels_right"
}

$Sequence "idle" {
	"model.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}