// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/p_mace_spin.mdl"

$BodyGroup "body"
{
	studio "p_mace_spin_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "mace.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" 0 0 -3.428856 3.571284 1.738985 0
$HBox 0 "Dummy12" -1.16 -0.2 -1.06 1.27 15.92 1.25
$HBox 0 "Dummy18" -3.06 -0.76 -3.05 3.14 6.35 3.38

$Sequence "idle" {
	"p_mace_spin_anims\idle.smd"
	fps 30
}
