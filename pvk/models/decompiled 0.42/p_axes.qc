// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/p_axes.mdl"

$BodyGroup "body"
{
	studio "p_axes_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "axes.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L Hand" -1.37 -0.06 -22.41 8.12 2.58 3.57
$HBox 0 "Bip01 R Hand" -1.37 -0.1 -3.57 8.12 2.6 22.41

$Sequence "idle" {
	"p_axes_anims\idle.smd"
	fps 1
}
