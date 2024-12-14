// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/w_powderhorn.mdl"

$BodyGroup "body"
{
	studio "w_powderhorn_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "powderhorn.bmp" "shiny.bmp" "cord.bmp" "balls.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "NGon02" -17.99 -4.17 -14.32 4.71 4.17 16.01

$Sequence "idle" {
	"w_powderhorn_anims\idle.smd"
	fps 1
}
