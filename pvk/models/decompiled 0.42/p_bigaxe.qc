// Created by Crowbar 0.42.0.0

$ModelName "p_bigaxe.mdl"

$BodyGroup "body"
{
	studio "p_bigaxe_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "topthing.bmp" "shaft.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L Hand" 0 0 -2.281186 3.294391 1.151212 0
$HBox 0 "Line01" -0.96 -13.67 -9.62 0.83 40.41 9.6

$Sequence "idle" {
	"p_bigaxe_anims\idle.smd"
	fps 1
}
