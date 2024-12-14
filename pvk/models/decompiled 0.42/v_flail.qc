// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/v_flail.mdl"

$BodyGroup "studio"
{
	studio "v_flail_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_flail_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "ball.bmp" "shine.bmp" "handle.bmp" "spike.bmp" "chainmail.bmp" "bracermetal.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Clavicle" 0 -0.34 0 6.008293 1.24 2.97
$HBox 0 "Bip01 R UpperArm" 0 -3.04 -2.37 12.205732 1.1 2.17
$HBox 0 "Bip01 R Forearm" -0.09 -2.24 -2.44 12.205739 2.19 2.06
$HBox 0 "Bip01 R Hand" 0 -2.340282 -2.08 3.890134 1.48 8.610342
$HBox 0 "GeoSphere01" -2.57 -2.99 -19.219999 2.66 3 3.46
$HBox 0 "Bip01 L Clavicle" 0 -0.34 -2.97 6.008293 1.24 0
$HBox 0 "Bip01 L UpperArm" 0 -3.04 -2.18 12.205736 1.1 2.37
$HBox 0 "Bip01 L Forearm" -0.09 -2.24 -2.06 12.205735 2.19 2.44
$HBox 0 "Bip01 L Hand" 0 -1.01 -1.914384 3.890132 1.48 2.08
$HBox 0 "Bip01 L Finger01" 0 -0.9 -0.45 1.316935 0.46 0.9
$HBox 0 "Bip01 L Finger02" 0 -0.55 -0.47 1.68 0.66 0.65
$HBox 0 "Bip01 L Finger4" -0.34 -0.8 -0.51 0.941346 0.56 0.61
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.9 1.316936 0.46 0.45
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.65 1.68 0.66 0.47
$HBox 0 "Bip01 R Finger4" -0.34 -0.8 -0.61 0.941345 0.56 0.51

$Sequence "idle" {
	"v_flail_anims\idle.smd"
	fps 10
}
$Sequence "attack1" {
	"v_flail_anims\attack1.smd"
	fps 35
}
$Sequence "attack2" {
	"v_flail_anims\attack2.smd"
	fps 35
}
$Sequence "draw" {
	"v_flail_anims\draw.smd"
	fps 30
}
$Sequence "fidget1" {
	"v_flail_anims\fidget1.smd"
	fps 30
}
