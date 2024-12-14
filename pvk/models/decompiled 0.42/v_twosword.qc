// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/v_twosword.mdl"

$BodyGroup "studio"
{
	studio "v_twosword_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "sword.bmp" "hilt2.bmp" "handle.bmp" "upperarmor.bmp" "chainmail.bmp" "armarmor1.bmp" "handarmor1.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L UpperArm" 0 -3.64 -2.51 12.46 1.46 3.13
$HBox 0 "Bip01 L Forearm" 0 -2.85 -2.63 12.79 2.99 2.92
$HBox 0 "Bip01 L Hand" 0 -1.39 -2.16 4.02 1.59 2.09
$HBox 0 "Bip01 L Finger01" -0.07 -0.56 -0.67 1.097446 1.19 0.37
$HBox 0 "Bip01 R UpperArm" 0 -3.46 -2.5 12.68 1.41 2.86
$HBox 0 "Bip01 R Forearm" -0.37 -3.01 -2.96 12.79 2.99 2.59
$HBox 0 "Bip01 R Hand" 0 -1.43 -2.09 10.973007 2.393738 11.327302
$HBox 0 "Bip01 R Finger01" -0.07 -0.57 -0.38 1.097445 1.18 0.67
$HBox 0 "Bone02" -6.97 -1.05 -10.99 6.96 1.34 42.200001

$Sequence "idle1" {
	"v_twosword_anims\idle1.smd"
	fps 10
}
$Sequence "sideslash1" {
	"v_twosword_anims\sideslash1.smd"
	fps 30
}
$Sequence "sideslash2" {
	"v_twosword_anims\sideslash2.smd"
	fps 30
}
$Sequence "slashstart" {
	"v_twosword_anims\slashstart.smd"
	fps 30
}
$Sequence "slashhit" {
	"v_twosword_anims\slashhit.smd"
	fps 20
}
$Sequence "slashmiss" {
	"v_twosword_anims\slashmiss.smd"
	fps 20
}
$Sequence "draw" {
	"v_twosword_anims\draw.smd"
	fps 20
}
$Sequence "holster" {
	"v_twosword_anims\holster.smd"
	fps 20
}
