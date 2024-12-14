// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/p_viksword.mdl"

$BodyGroup "body"
{
	studio "p_viksword_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "sword.bmp" "shield.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L Hand" -13.87 -5.03 -14.5 14.33 2.66 13.75
$HBox 0 "Bip01 R Hand" 0 -1.79 -4.67 5.11 3.5 26.799999

$Sequence "idle" {
	"p_viksword_anims\idle.smd"
	fps 1
}
