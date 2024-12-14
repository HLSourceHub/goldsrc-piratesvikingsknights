// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/p_chest.mdl"

$BodyGroup "body"
{
	studio "p_chest_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "back.bmp" "front.bmp" "panelwide.bmp" "right.bmp" "top.bmp" "topright.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" 0 0 0 9.043768 13.342605 8.359976
$HBox 0 "Box01" -12.71 -6.35 0 12.71 12.5 16.950001

$Sequence "still" {
	"p_chest_anims\still.smd"
	fps 1
}
