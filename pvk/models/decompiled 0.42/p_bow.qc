// Created by Crowbar 0.42.0.0

$ModelName "p_bow.mdl"

$BodyGroup "body"
{
	studio "p_bow_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "bow.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L Hand" 0 0 -3.480885 2.959752 1.473668 0
$HBox 0 "NGon03" -1.26 -1.28 -39.73 1.26 11.74 33.049999

$Sequence "idle" {
	"p_bow_anims\idle.smd"
	fps 1
}
