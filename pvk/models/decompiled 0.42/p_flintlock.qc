// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/p_flintlock.mdl"

$BodyGroup "body"
{
	studio "p_flintlock_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "pistol.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "pistol" -4.86 -1.72 0 2.42 1.07 15

$Sequence "idle" {
	"p_flintlock_anims\idle.smd"
	fps 1
}
