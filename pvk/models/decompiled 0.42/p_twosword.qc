// Created by Crowbar 0.42.0.0

$ModelName "p_twosword.mdl"

$BodyGroup "body"
{
	studio "p_twosword_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "sword.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" 0 0 0 2.116291 1.656287 5.004025
$HBox 0 "Line01" -7.24 -1.16 -13.07 7.26 1.24 40.23

$Sequence "idle" {
	"p_twosword_anims\idle.smd"
	fps 1
}
