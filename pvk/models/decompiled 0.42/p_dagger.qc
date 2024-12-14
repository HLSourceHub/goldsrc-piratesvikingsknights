// Created by Crowbar 0.42.0.0

$ModelName "p_dagger.mdl"

$BodyGroup "body"
{
	studio "p_dagger_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "blade.bmp" "hilt2.bmp" "hiltside.bmp" "handle.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Line01" -1.93 -7.15 -0.55 1.71 6.53 0.74

$Sequence "idle" {
	"p_dagger_anims\idle.smd"
	fps 1
}
