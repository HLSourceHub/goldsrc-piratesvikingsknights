// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/chicken.mdl"

$BodyGroup "body"
{
	studio "chicken_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "chicken.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "LinkBox07" -3.44 -4.44 -6.73 3.46 5.83 4.713538
$HBox 0 "LinkBox08" -2.09 -2.87 0 2.12 1.62 5.090091
$HBox 0 "LinkBox09" -1.41 -1.3 -1.55 1.43 2.11 2.34
$HBox 0 "LinkBox05" -2.2 -1.55 0 0.54 0.53 6.693305
$HBox 0 "LinkBox02" -0.54 -1.57 0 2.21 0.51 6.693331

$Sequence "peck" {
	"chicken_anims\peck.smd"
	fps 10
	loop
}
