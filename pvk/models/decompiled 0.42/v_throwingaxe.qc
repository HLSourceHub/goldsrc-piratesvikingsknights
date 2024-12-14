// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_throwingaxe.mdl"

$BodyGroup "studio"
{
	studio "v_throwingaxe_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_throwingaxe_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "handle.bmp" "headside.bmp" "headtop.bmp" "viksleeve.bmp" "furry.bmp" "vikhandfront.bmp" "vikhandback.bmp" "vikthumb.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L UpperArm" 0 -2.29 -2.88 12.20574 3.1 2.72
$HBox 0 "Bip01 L Forearm" 0 -3.05 -3.13 12.61 3.53 2.66
$HBox 0 "Bip01 L Hand" -0.44 -13.05917 -8.765593 4.003349 1.41 2.03
$HBox 0 "Dummy24" -0.77 -0.24 -2.63 0.75 17.030001 4.07
$HBox 0 "Dummy26" -0.77 -0.24 -2.63 0.75 17.030001 4.07
$HBox 0 "Dummy22" -0.77 -0.24 -2.63 0.75 17.030001 4.07
$HBox 0 "Bip01 R UpperArm" 0 -2.29 -2.72 12.205736 3.1 2.88
$HBox 0 "Bip01 R Forearm" 0 -3.05 -2.66 12.61 3.53 3.13
$HBox 0 "Bip01 R Hand" -0.44 -1.03 -2.03 3.890134 1.687339 8.567264
$HBox 0 "Dummy12" -0.77 -0.24 -2.63 0.75 17.030001 4.07
$HBox 0 "Bip01 L Finger01" 0 -0.9 -0.41 1.316935 0.44 0.9
$HBox 0 "Bip01 L Finger02" 0 -0.55 -0.43 1.69 0.61 0.63
$HBox 0 "Bip01 L Finger4" -0.34 -0.8 -0.51 0.941346 0.56 0.56
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.9 1.316936 0.44 0.41
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.61 0.43
$HBox 0 "Bip01 R Finger4" -0.34 -0.8 -0.56 0.941345 0.56 0.51

$Sequence "idle" {
	"v_throwingaxe_anims\idle.smd"
	fps 10
}
$Sequence "pullback" {
	"v_throwingaxe_anims\pullback.smd"
	fps 36
}
$Sequence "throwlight" {
	"v_throwingaxe_anims\throwlight.smd"
	fps 30
}
$Sequence "throwmed" {
	"v_throwingaxe_anims\throwmed.smd"
	fps 30
}
$Sequence "throwhard" {
	"v_throwingaxe_anims\throwhard.smd"
	fps 30
}
$Sequence "reload" {
	"v_throwingaxe_anims\reload.smd"
	fps 24
}
$Sequence "pullbacklast" {
	"v_throwingaxe_anims\pullbacklast.smd"
	fps 36
}
$Sequence "throwlightlast" {
	"v_throwingaxe_anims\throwlightlast.smd"
	fps 30
}
$Sequence "throwmedlast" {
	"v_throwingaxe_anims\throwmedlast.smd"
	fps 30
}
$Sequence "throwhardlast" {
	"v_throwingaxe_anims\throwhardlast.smd"
	fps 30
}
$Sequence "reloadlast" {
	"v_throwingaxe_anims\reloadlast.smd"
	fps 24
}
$Sequence "draw" {
	"v_throwingaxe_anims\draw.smd"
	fps 30
}
$Sequence "fidget1" {
	"v_throwingaxe_anims\fidget1.smd"
	fps 50
}
