// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_sword.mdl"

$BodyGroup "studio"
{
	studio "v_sword_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_sword_body1_model0.smd"
	studio "v_sword_body1_model1.smd"
}
$BodyGroup "shield"
{
	studio "v_sword_body2_model0.smd"
	studio "v_sword_body2_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "blade.bmp" "hilt.bmp" "handle.bmp" "pommel.bmp" "chainmail.bmp" "handarmor1.bmp" "armarmor1.bmp" "upperarmor.bmp" "bluetunic.bmp" "bracer.bmp" "finger.bmp" "handside.bmp" "shield.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R UpperArm" 0 -3.46 -3.37 13.08 4.17 2.98
$HBox 0 "Bip01 R Forearm" 0 -2.85 -2.96 12.79 2.99 2.59
$HBox 0 "Bip01 R Hand" 0 -1.43 -2.1 10.797147 2.46801 11.42064
$HBox 0 "Bone02" -2.96 -0.97 -6.26 2.78 1.1 21.59
$HBox 0 "Bip01 R Finger01" -0.11 -0.58 -0.85 1.097445 1.17 0.7
$HBox 0 "Bip01 R Finger02" 0 -0.58 -0.44 1.68 0.93 0.66
$HBox 0 "Line02" -13.78 -12.85 -1.19 14.04 6.25 1.9

$Sequence "idle1" {
	"v_sword_anims\idle1.smd"
	fps 10
}
$Sequence "pierce" {
	"v_sword_anims\pierce.smd"
	fps 30
}
$Sequence "swing1" {
	"v_sword_anims\swing1.smd"
	fps 30
}
$Sequence "swing2" {
	"v_sword_anims\swing2.smd"
	fps 30
}
$Sequence "swing3" {
	"v_sword_anims\swing3.smd"
	fps 30
}
$Sequence "blockenter" {
	"v_sword_anims\blockenter.smd"
	fps 30
}
$Sequence "blockexit" {
	"v_sword_anims\blockexit.smd"
	fps 30
}
$Sequence "blockattack" {
	"v_sword_anims\blockattack.smd"
	fps 30
}
$Sequence "draw" {
	"v_sword_anims\draw.smd"
	fps 30
}
$Sequence "holster" {
	"v_sword_anims\holster.smd"
	fps 30
}
