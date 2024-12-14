// Created by Crowbar 0.42.0.0

$ModelName "p_markmusket.mdl"

$BodyGroup "body"
{
	studio "p_markmusket_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "markmusket.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" 0 0 0 13.996906 2.338878 17.539879
$HBox 0 "NGon06" -1.24 -3.93 -28.190001 1.45 1.65 14.92

$Sequence "idle" {
	"p_markmusket_anims\idle.smd"
	fps 1
}
