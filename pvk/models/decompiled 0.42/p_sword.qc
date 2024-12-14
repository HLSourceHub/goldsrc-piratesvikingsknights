// Created by Crowbar 0.42.0.0

$ModelName "smallsword_p.mdl"

$BodyGroup "body"
{
	studio "p_sword_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "smallsword.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" 0 0 0 7.596036 2.019097 12.124032
$HBox 0 "Line01" -2.82 -0.86 -3.74 2.87 1.04 24.200001

$Sequence "idle" {
	"p_sword_anims\idle.smd"
	fps 1
}
