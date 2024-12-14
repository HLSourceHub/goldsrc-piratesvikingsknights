// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/p_hammer.mdl"

$BodyGroup "body"
{
	studio "p_hammer_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "hammer.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L Hand" 0 0 -27.210575 4.569476 1.26496 0
$HBox 0 "NGon02" -2.9 -6.61 -40.099998 2.95 5.38 14.57

$Sequence "idle" {
	"p_hammer_anims\idle.smd"
	fps 1
}
