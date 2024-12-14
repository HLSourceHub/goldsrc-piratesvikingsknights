// Created by Crowbar 0.42.0.0

$ModelName "valve/models/woodgibs.mdl"

$BodyGroup "parts"
{
	studio "woodgibs_body0_model0.smd"
	studio "woodgibs_body0_model1.smd"
	studio "woodgibs_body0_model2.smd"
}



$TextureGroup "skinfamilies"
{
	{ "Image9.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "" -0.85 -13.13 -0.28 1.05 13.13 0.73
$HBox 0 "" -0.58 -16.35 -3.09 0.58 16.370001 3.34
$HBox 0 "" -0.58 -19.5 -3.48 0.58 19.5 3.48

$Sequence "idle1" {
	"woodgibs_anims\idle1.smd"
	fps 30
}
