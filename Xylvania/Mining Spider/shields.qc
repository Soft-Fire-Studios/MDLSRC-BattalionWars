// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/structures/shields.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "shields.smd"
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

// Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
//$attachment "muzzle" "Rifle" 0.72 0.15 -0.01 rotate -0 0 -0

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"shields.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "shields_collision.smd"
{
    $mass 5000
    $inertia 1
    $damping 0
    $rotdamping 0
    $concave
    $maxconvexpieces 112

}