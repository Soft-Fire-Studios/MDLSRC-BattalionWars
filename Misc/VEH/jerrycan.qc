// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/items/jerrycan.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 10

//Creates simple physics
$CollisionModel "vehref.smd" {
	$automass
}

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "vehref.smd"
}

// Called when bullets or physics touch the model
$SurfaceProp "canister"

// Used for non-hitbox traces
$Contents "solid"

// Directory for textures
$CDMaterials "models/cpthazama/bwii/pickups/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -8 -8 0 8 8 10

$attachment "anglo_isles_is_the_most_useless_nation" "bone" 0.65 0.00 0.00 rotate -0 0 0

$Sequence "idle" {
	"vehref.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}