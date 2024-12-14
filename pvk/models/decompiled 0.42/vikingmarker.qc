// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/vikingmarker.mdl"

$BodyGroup "body"
{
	studio "vikingmarker_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "marker.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Dummy12" -23.49 -0.52 -10.83 22.139999 112.57 8.8
$HBox 0 "Dummy11" -19.188408 -19.6 0 18.36408 0 5.89
$HBox 0 "Dummy08" -10.41 -25.66 -1.31 9.7 0 0

$Sequence "ripple" {
	"vikingmarker_anims\ripple.smd"
	fps 15
	loop
}
