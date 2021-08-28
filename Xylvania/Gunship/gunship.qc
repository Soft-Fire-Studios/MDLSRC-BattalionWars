// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/xylvania/gunship.mdl"

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
$CDMaterials "models/cpthazama/bwii/xylvania/"

// Collision box
$CBox 0 0 0 0 0 0

//Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "left_gun" "lturret_p" 1.2 0.00 0.0 rotate -0 0 0
$attachment "right_gun" "rturret_p" -1.2 0.00 0.0 rotate 0 -180 -180

// Sets the min max z for a pose parameter
$PoseParameter "move_yaw" -180 180 0
$poseparameter "lgun_yaw" -90 90 loop 0
$poseparameter "lgun_pitch" -45 45 loop 0
$poseparameter "rgun_yaw" -90 90 loop 0
$poseparameter "rgun_pitch" -45 45 loop 0

$Sequence "subtract_" {
	"pp/aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimcenter "pp/aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation lt_back "pp/lt_back.smd" subtract "subtract_" 0 frames 0 0
$Animation lt_forward "pp/lt_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation lt_up "pp/lt_up.smd" subtract "subtract_" 0 frames 0 0
$Animation lt_down "pp/lt_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "lgun_pitch" {
	"lt_down"
	"aimcenter"
	"lt_up"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lgun_pitch" -45 45
	autoplay
}

$Sequence "lgun_yaw" {
	"lt_forward"
	"aimcenter"
	"lt_back"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "lgun_yaw" -90 90
	autoplay
}

$Animation rt_back "pp/rt_back.smd" subtract "subtract_" 0 frames 0 0
$Animation rt_forward "pp/rt_forward.smd" subtract "subtract_" 0 frames 0 0
$Animation rt_up "pp/rt_up.smd" subtract "subtract_" 0 frames 0 0
$Animation rt_down "pp/rt_down.smd" subtract "subtract_" 0 frames 0 0

$Sequence "rgun_pitch" {
	"rt_down"
	"aimcenter"
	"rt_up"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rgun_pitch" -45 45
	autoplay
}

$Sequence "rgun_yaw" {
	"rt_forward"
	"aimcenter"
	"rt_back"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "rgun_yaw" -90 90
	autoplay
}

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"gunship.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}