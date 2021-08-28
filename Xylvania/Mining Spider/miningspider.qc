// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/structures/miningspider.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "miningspider.smd"
}

//Creates simple physics
$CollisionModel "miningspider.smd" {
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

// Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "turret1" "XMiningSpider" 21.50 27.60 -16.80 rotate 17 0 -0
$attachment "turret2" "XMiningSpider" -21.50 27.60 -16.80 rotate 16 -180 180
$attachment "turret3" "XMiningSpider" 21.50 27.60 16.80 rotate -17 0 -0
$attachment "turret4" "XMiningSpider" -21.50 27.60 16.80 rotate -15 -180 180
$attachment "smokestack" "XMiningSpider" 0.00 54.00 2.70 rotate 0 0 -0

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"miningspider.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}