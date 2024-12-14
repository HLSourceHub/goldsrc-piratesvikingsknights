// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/v_powderkeg.mdl"

$BodyGroup "studio"
{
	studio "v_powderkeg_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_powderkeg_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "kegside.bmp" "fuse.bmp" "kegtop.bmp" "match.bmp" "forearmbottom3.bmp" "forearmtop3.bmp" "thumb.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L UpperArm" 0 -3.09 -1.91 12.36 2.21 0.85
$HBox 0 "Bip01 L Forearm" -0.12 -3.18 -1.95 12.205735 2.42 1.78
$HBox 0 "Bip01 L Hand" 0 -0.97 -1.914384 4.35 1.41 2.03
$HBox 0 "Bip01 L Finger01" 0 -0.44 -0.45 1.316935 0.89 0.94
$HBox 0 "Bip01 L Finger02" -8.267315 -0.43 -0.59 1.69 1.398767 5.923681
$HBox 0 "Bip01 R UpperArm" 0 -3.09 -0.85 12.36 2.21 1.91
$HBox 0 "Bip01 R Forearm" -0.12 -11.611068 -1.78 12.205738 2.42 11.058599
$HBox 0 "Dummy12" -8.77 -5.59 -7.11 9.15 7.11 7.11
$HBox 0 "Dummy17" -0.22 -1.66 -0.58 0.8 0 0.49
$HBox 0 "Bip01 R Hand" 0 -0.97 -2.03 4.35 1.41 1.914383
$HBox 0 "Bip01 R Finger01" 0 -0.44 -0.94 1.316934 0.89 0.45
$HBox 0 "Bip01 R Finger02" 0 -0.43 -0.56 1.69 0.65 0.59

$Sequence "idle" {
	"v_powderkeg_anims\idle.smd"
	fps 10
}
$Sequence "light" {
	"v_powderkeg_anims\light.smd"
	{ event 5004 37 "weapons/match.wav" }
	fps 30
}
$Sequence "set" {
	"v_powderkeg_anims\set.smd"
	fps 30
}
$Sequence "toss" {
	"v_powderkeg_anims\toss.smd"
	fps 30
}
$Sequence "draw" {
	"v_powderkeg_anims\draw.smd"
	fps 30
}
