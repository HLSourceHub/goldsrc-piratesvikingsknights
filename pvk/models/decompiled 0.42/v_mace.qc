// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/v_mace.mdl"

$BodyGroup "studio"
{
	studio "v_mace_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_mace_body1_model0.smd"
	studio "v_mace_body1_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "shine.bmp" "shine2.bmp" "chain.bmp" "ball.bmp" "chainmail.bmp" "handarmor1.bmp" "armarmor1.bmp" "upperarmor.bmp" "bracermetal.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Clavicle" 0 -0.34 0 6.008292 1.24 2.97
$HBox 0 "Bip01 R UpperArm" 0 -3.46 -2.5 12.68 1.46 2.86
$HBox 0 "Bip01 R Forearm" -0.09 -2.85 -2.96 12.79 2.99 2.59
$HBox 0 "Bip01 R Hand" 0 -6.483657 -2.1 21.450251 1.56 4.57572
$HBox 0 "Dummy12" -1.09 -0.21 -0.98 1.22 15.96 1.01
$HBox 0 "Dummy18" -2.74 -0.59 -3.2 3.08 6.42 3.36
$HBox 0 "Bip01 R Finger01" -0.11 -0.9 -0.9 1.097445 1.17 0.66
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.65 1.68 0.93 0.55
$HBox 0 "Bip01 R Finger4" -0.34 -0.8 -0.61 1.24 0.56 0.51

$Sequence "idle1" {
	"v_mace_anims\idle1.smd"
	fps 10
}
$Sequence "windup" {
	"v_mace_anims\windup.smd"
	fps 30
}
$Sequence "woundidle" {
	"v_mace_anims\woundidle.smd"
	fps 40
	loop
}
$Sequence "smashstart" {
	"v_mace_anims\smashstart.smd"
	fps 30
}
$Sequence "smashhit" {
	"v_mace_anims\smashhit.smd"
	fps 30
}
$Sequence "smashmiss" {
	"v_mace_anims\smashmiss.smd"
	fps 30
}
$Sequence "draw" {
	"v_mace_anims\draw.smd"
	fps 30
}
$Sequence "holster" {
	"v_mace_anims\holster.smd"
	fps 30
}
$Sequence "fidget1" {
	"v_mace_anims\fidget1.smd"
	fps 30
}
