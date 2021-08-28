// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/weapons/w_minigun.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "w_model.smd"
}

//Creates simple physics
$CollisionModel "w_model.smd" {
	$automass
}

// Called when bullets or physics touch the model
$SurfaceProp "weapon"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/xylvania/"

// Attachments
$attachment "muzzle" "Muzzle" 0 0 0 rotate 0 -180 0

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"w_model.smd"
	activity "ACT_IDLE" 1
}