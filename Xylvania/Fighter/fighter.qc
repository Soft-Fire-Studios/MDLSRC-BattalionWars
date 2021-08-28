// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/fighter.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 65

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "xfighter.smd"
}

//Creates simple physics
$CollisionModel "xfighter.smd" {
	$automass
}

// Called when bullets or physics touch the model
$SurfaceProp "metal"

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
$attachment "turret" "TURRET" 0.00 0.04 -0.80 rotate 90 0 0
$attachment "left_wheel" "leftwheel" 0.00 -0.18 0.00 rotate 90 0 0
$attachment "right_wheel" "rightwheel" 0 -0.18 0 rotate 90 0 0

$attachment "missile_left" "Fighter" 0.85 1.05 1.00 rotate -90 0 0
$attachment "missile_right" "Fighter" -0.85 1.05 1.00 rotate -90 0 0
$attachment "engine_left" "Fighter" 0.45 1.15 1.00 rotate -90 -0 0
$attachment "engine_right" "Fighter" -0.45 1.15 1.00 rotate -90 -0 0
$attachment "exhuast_left" "Fighter" 0.67 1.10 -0.47 rotate 90 -0 0
$attachment "exhaust_right" "Fighter" -0.67 1.10 -0.47 rotate 90 -0 0
$attachment "winglight_left" "Fighter" 2.78 0.88 -0.13 rotate -90 -0 0
$attachment "winglight_right" "Fighter" -2.78 0.88 -0.13 rotate -90 -0 0

// Sets the min max z for a pose parameter
$PoseParameter "move_yaw" -180 180 0

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"animations/idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}