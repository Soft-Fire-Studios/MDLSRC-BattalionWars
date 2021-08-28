// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/westernfrontier/gunship.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "gunship.smd"
}

//Creates simple physics
$CollisionModel "gunship.smd" {
	$automass
}

// Called when bullets or physics touch the model
$SurfaceProp "metal"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/westernfrontier/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "left_gun" "left_turret" 1.00 0.35 0.00 rotate -0 0 0
$attachment "right_gun" "right_turret" -1.00 0.35 0.00 rotate 0 -180 -180

// Sets the min max z for a pose parameter
$PoseParameter "move_yaw" -180 180 0

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"gunship.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}