// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/w_chest.mdl"

$BodyGroup "body"
{
	studio "w_chest_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "back.bmp" "front.bmp" "panelwide.bmp" "right.bmp" "top.bmp" "topright.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Box01" -15 -7.5 0 15 14.75 20.01

$Sequence "still" {
	"w_chest_anims\still.smd"
	fps 1
}
