// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/w_parrot.mdl"

$BodyGroup "studio"
{
	studio "w_parrot_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "side.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Dummy02" -5.43 -3.36 -3.311451 7.439024 2.08 3.257769
$HBox 0 "Dummy03" -0.19 -1.74 -1.28 3 1.33 1.35
$HBox 0 "Dummy14" -2.21 0 -6.038639 0.33 1.189989 0
$HBox 0 "Dummy10" -1.3 -1.01 -7.86 3.16 0.24 0
$HBox 0 "Dummy04" -2.21 0 0 0.33 1.189991 6.091729
$HBox 0 "Dummy09" -1.3 -1.01 0 3.16 0.24 7.86

$Sequence "flap" {
	"w_parrot_anims\flap.smd"
	fps 30
	loop
}
$Sequence "launch" {
	"w_parrot_anims\launch.smd"
	fps 30
}
$Sequence "attack" {
	"w_parrot_anims\attack.smd"
	fps 30
}
$Sequence "still" {
	"w_parrot_anims\still.smd"
	fps 1
}
$Sequence "kaput" {
	"w_parrot_anims\kaput.smd"
	fps 1
}
