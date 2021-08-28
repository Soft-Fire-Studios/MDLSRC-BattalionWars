// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/frigate.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "model.smd"
}

//Creates simple physics
$CollisionModel "phy.smd" {
	$rootbone "XFrigate"
	$mass 83461
    $concave
    $maxconvexpieces 80
}

// Called when bullets or physics touch the model
$SurfaceProp "metalvehicle"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/xylvania/"

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "turret_pitch" 0.00 0.00 1.6 rotate -90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "turret_yaw" -90 90 loop 0

$Sequence "subtract_" {
	"aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimcenter "aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "aimup.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "aimdown.smd" subtract "subtract_" 0 frames 0 0

$Animation aimleft "aimleft.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "aimright.smd" subtract "subtract_" 0 frames 0 0

$Sequence "turret_pitch" {
	"aimdown"
	"aimcenter"
	"aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "turret_pitch" -45 45
	autoplay
}

$Sequence "turret_yaw" {
	"aimright"
	"aimcenter"
	"aimleft"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "turret_yaw" -90 90
	autoplay
}

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"model.smd"
	activity "ACT_IDLE" 1
	loop
}

$Sequence "sink" {
	"sink.smd"
	activity "ACT_YOUSUNKMYBATTLESHIP" 1
	fps 15
}