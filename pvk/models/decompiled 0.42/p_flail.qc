// Created by Crowbar 0.42.0.0

$ModelName "p_flail.mdl"

$BodyGroup "body"
{
	studio "p_flail_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "flail.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "GeoSphere01" -2.66 -3 -19.190001 2.57 2.99 3.45

$Sequence "idle" {
	"p_flail_anims\idle.smd"
	fps 1
}
