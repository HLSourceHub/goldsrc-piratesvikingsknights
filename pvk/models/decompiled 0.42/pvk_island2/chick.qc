// Created by Crowbar 0.42.0.0

$ModelName "C:\3DMAX31\Scenes\natural_selection\antsmap\chick.mdl"

$BodyGroup "body"
{
	studio "chick_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "chick_skin.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bone01" -3.05 -1.14 0 2.92 2.62 2.99
$HBox 0 "Bone02" -2.83 -7.48 -1.13 2.84 2.64 4.73

$Sequence "idle" {
	"chick_anims\idle.smd"
	ACT_IDLE 1
	fps 20
	loop
}
