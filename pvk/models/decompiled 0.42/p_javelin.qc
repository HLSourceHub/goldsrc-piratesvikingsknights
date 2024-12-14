// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/p_javelin.mdl"

$BodyGroup "body"
{
	studio "p_javelin_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "javelin.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" -3.805066 0 -30.941048 0 1.381168 0
$HBox 0 "NGon02" -1.38 -0.81 -6.86 9.94 0.82 47.93

$Sequence "idle" {
	"p_javelin_anims\idle.smd"
	fps 1
}
