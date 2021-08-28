$ModelName "cpthazama/bwii/xylvania/weapons/c_minigun.mdl"
$include c_arms_definebones.qci
$body studio "v_model.smd"
$CDMaterials "models/cpthazama/bwii/xylvania/"

$origin 0 0 66

$attachment "muzzle" "Muzzle" 0 0 0 rotate 0 -180 0

$ikchain rhand "ValveBiped.Bip01_R_Hand" Z 0 knee 0.707 0.707 0
$ikchain lhand "ValveBiped.Bip01_L_Hand" Z 0 knee 0.707 0.707 0

$Sequence "idle" {
	"animations/idle.smd"
	activity "ACT_VM_IDLE" 1
	fps 15
	loop
}

$Sequence "fire" {
	"animations/fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fps 30
}

$Sequence "overheat" {
	"animations/overheat.smd"
	activity "ACT_VM_RELOAD" 1
	fps 8
}

$Sequence "run" {
	"animations/run.smd"
	activity "ACT_RUN" 1
	fps 25
	loop
}