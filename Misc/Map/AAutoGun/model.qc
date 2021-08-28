// Saved directory for model when initialized in game. If this is changed after the model is compiled it will make an error
$ModelName "cpthazama/bwii/angloisles/structures/autogun.mdl"

// Makes it scaled to Garry's Mod standards
$Scale 30

// This is where you will add bodygroups
$BodyGroup "studio"
{
	studio "model.smd"
}

// Called when bullets or physics touch the model
$SurfaceProp "metal"

// Used for non-hitbox traces
$Contents "solid"

// The degrees for how far the eyes can look
$MaxEyeDeflection 90

// Directory for textures
$CDMaterials "models/cpthazama/bwii/angloisles/"

// Collision box
$CBox 0 0 0 0 0 0

// Bound box (min x) (min y) (min z) | (max x) (max y) (max z)
$BBox -35 -35 0 35 35 120

// Attachments
$attachment "muzzle" "bone" 0.00 1.20 2.20 rotate -90 -0 0
$attachment "flash1" "bone" 0.00 0.80 2.20 rotate -90 -0 0

$poseparameter "aim_yaw" -180 180 loop 360
$poseparameter "aim_pitch" -90 90 loop 0

$Sequence "subtract_" {
	"aimcenter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	hidden
}

$Animation aimleft "aimleft.smd" subtract "subtract_" 0 frames 0 0
$Animation aimcenter "aimcenter.smd" subtract "subtract_" 0 frames 0 0
$Animation aimright "aimright.smd" subtract "subtract_" 0 frames 0 0
$Animation aimback "aimback.smd" subtract "subtract_" 0 frames 0 0
$Animation aimup "aimup.smd" subtract "subtract_" 0 frames 0 0
$Animation aimdown "aimdown.smd" subtract "subtract_" 0 frames 0 0

$Sequence "aim_pitch" {
	"aimdown"
	"aimcenter"
	"aimup"
	fps 30
	delta
	blendwidth 3
	blendcenter aimcenter
	blend "aim_pitch" -90 90
	autoplay
}

$Sequence "aim_yaw" {
	"aimback"
	"aimright"
	"aimcenter"
	"aimleft"
	"aimback"
	fps 30
	delta
	blendwidth 5
	blendcenter aimcenter
	blend "aim_yaw" -180 180
	autoplay
}

// ------------------------------- BASE ANIMATION -------------------------------

$Sequence "idle" {
	"model.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}