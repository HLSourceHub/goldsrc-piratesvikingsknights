// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/p_sword_shield.mdl"

$BodyGroup "body"
{
	studio "p_sword_shield_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "shield.bmp" "smallsword.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L Hand" -5.220076 -3.990308 -9.501888 0 0 0
$HBox 0 "Line02" -13.77 -30.57 -4.19 14.04 6.24 1.91
$HBox 0 "Line01" -2.82 -0.86 -3.75 2.87 1.05 24.200001

$Sequence "idle" {
	"p_sword_shield_anims\idle.smd"
	fps 1
}
