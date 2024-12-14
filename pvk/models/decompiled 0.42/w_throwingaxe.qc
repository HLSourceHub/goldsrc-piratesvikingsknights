// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/w_throwingaxe.mdl"

$BodyGroup "body"
{
	studio "w_throwingaxe_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "throwingaxe.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Line01" -0.94 -5.95 -16.75 1.03 2.75 5.52

$Sequence "still" {
	"w_throwingaxe_anims\still.smd"
	fps 1
}
$Sequence "spinning" {
	"w_throwingaxe_anims\spinning.smd"
	fps 20
}
