// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/tundranterritories/battlestation_old.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "battlestation_old.smd"
}

//Creates simple physics
$CollisionModel "battlestation_old_phy.smd" {
	$mass 95000
    $concave
    $maxconvexpieces 50
}

// Called when bullets or physics touch the model
$SurfaceProp "metalvehicle"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/tundranterritories/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
//$attachment "muzzle" "cTurret_Barrel" 0.00 0.00 -0.90 rotate 90 -0 0
//$attachment "muzzleTurret" "rTurret_Barrel" 0.00 0.00 0.88 rotate -90 -0 0

// Sets the min max z for a pose parameter
$poseparameter "turret_pitch" -90 90 loop 0
$poseparameter "cturret_pitch" -90 90 loop 0
$poseparameter "cturret_yaw" -90 90 loop 0
$poseparameter "lturret_pitch" -90 90 loop 0
$poseparameter "lturret_yaw" -90 90 loop 0
$poseparameter "rturret_pitch" -90 90 loop 0
$poseparameter "rturret_yaw" -90 90 loop 0

$poseparameter "lwheel" -180 180 loop 360
$poseparameter "rwheel" -180 180 loop 360
$poseparameter "lbwheel" -180 180 loop 360
$poseparameter "rbwheel" -180 180 loop 360

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"battlestation_old.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}