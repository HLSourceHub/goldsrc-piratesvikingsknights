// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/cow.mdl"

$BodyGroup "body"
{
	studio "cow_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "body.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Dummy01" -49.119999 -49.290001 -16.33 36.689999 22.91 16.4
$HBox 0 "Dummy05" -10.32 -3.44 -2.16 0 1.71 1.95
$HBox 0 "Dummy06" -13.29 -8.86 -0.99 0 0 1
$HBox 0 "Dummy07" -22.92 -0.84 -2.26 0 1.32 2.24
$HBox 0 "Dummy02" 0 0 -10.62 23.547647 24.18 10.61
$HBox 0 "Dummy03" -9.81 -7.34 -17.959999 16.059999 13.34 17.959999
$HBox 0 "Dummy09" 0 -1.98 -1.75 9.18 0 1.7

$Sequence "idle" {
	"cow_anims\idle.smd"
	fps 10
	loop
}
$Sequence "dead" {
	"cow_anims\dead.smd"
	fps 1
}
