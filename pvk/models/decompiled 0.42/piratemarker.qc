// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/piratemarker.mdl"

$BodyGroup "body"
{
	studio "piratemarker_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "marker.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Dummy12" -23.49 -0.52 -1.96 22.139999 100.669998 4.1
$HBox 0 "Dummy11" -19.188408 -17.486595 0 18.36408 0 4.315334

$Sequence "ripple" {
	"piratemarker_anims\ripple.smd"
	fps 15
	loop
}
