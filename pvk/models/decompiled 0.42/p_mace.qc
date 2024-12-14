// Created by Crowbar 0.42.0.0

$ModelName "p_mace.mdl"

$BodyGroup "body"
{
	studio "p_mace_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "mace.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" 0 0 -3.963781 4.02666 1.572582 0
$HBox 0 "NGon09" -3.02 -1.22 0 3.41 9.81 18.360001

$Sequence "idle" {
	"p_mace_anims\idle.smd"
	fps 1
}
