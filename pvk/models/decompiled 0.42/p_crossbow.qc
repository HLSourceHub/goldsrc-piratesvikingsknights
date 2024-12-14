// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/p_crossbow.mdl"

$BodyGroup "body"
{
	studio "p_crossbow_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "top.bmp" "front.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" 0 0 0 3.42898 1.796161 5.562785
$HBox 0 "Line16" -15.26 -2.6 -11.71 12.79 2.33 12.68

$Sequence "idle" {
	"p_crossbow_anims\idle.smd"
	fps 1
}
