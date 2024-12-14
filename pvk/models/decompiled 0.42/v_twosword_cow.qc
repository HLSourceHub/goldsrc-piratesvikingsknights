// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_twosword_cow.mdl"

$BodyGroup "studio"
{
	studio "v_twosword_cow_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_twosword_cow_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "cowface.BMP" "cowhorns.bmp" "cowhandle.bmp" "sword.bmp" "cowudder.bmp" "cowhilt.bmp" "cowring.bmp" "upperarmor.bmp" "chainmail.bmp" "armarmor1.bmp" "handarmor1.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Clavicle" 0 -0.03 0 6.008292 1.24 3
$HBox 0 "Bip01 R UpperArm" 0 -3.46 -2.5 12.68 1.46 2.86
$HBox 0 "Bip01 R Forearm" 0 -2.85 -2.96 12.79 2.99 2.59
$HBox 0 "Bip01 R Hand" 0 -1.43 -2.09 10.973007 2.393738 11.327302
$HBox 0 "head" -3.54 -5.87 -9.46 2.81 5.83 48.18
$HBox 0 "Bip01 L Clavicle" 0 -1.5 -2.79 6.008292 0 0
$HBox 0 "Bip01 L UpperArm" 0 -3.64 -2.51 12.46 1.46 3.13
$HBox 0 "Bip01 L Forearm" 0 -2.85 -2.63 12.79 2.99 2.92
$HBox 0 "Bip01 L Hand" 0 -1.39 -1.914384 3.890133 1.59 2.09

$Sequence "idle1" {
	"v_twosword_cow_anims\idle1.smd"
	fps 10
}
$Sequence "sideslash1" {
	"v_twosword_cow_anims\sideslash1.smd"
	fps 30
}
$Sequence "sideslash2" {
	"v_twosword_cow_anims\sideslash2.smd"
	fps 30
}
$Sequence "slashstart" {
	"v_twosword_cow_anims\slashstart.smd"
	fps 30
}
$Sequence "slashhit" {
	"v_twosword_cow_anims\slashhit.smd"
	fps 20
}
$Sequence "slashmiss" {
	"v_twosword_cow_anims\slashmiss.smd"
	fps 20
}
$Sequence "draw" {
	"v_twosword_cow_anims\draw.smd"
	fps 20
}
$Sequence "holster" {
	"v_twosword_cow_anims\holster.smd"
	fps 20
}
