// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/ironlegion/bomb.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 20

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "bomb.smd"
}

//Creates simple physics
$CollisionModel "bomb.smd" {
	$mass 1000
}

// Called when bullets or physics touch the model
$SurfaceProp "metal"

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

// Sets the min max z for a pose parameter
$PoseParameter "move_yaw" -180 180 0

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"bomb.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}