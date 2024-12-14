// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_spear.mdl"

$BodyGroup "studio"
{
	studio "v_spear_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_spear_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "spearhead.bmp" "spearconnector.bmp" "spearshaft.bmp" "svsleeve.bmp" "cuff.bmp" "vikhandfront.bmp" "vikhandback.bmp" "vikthumb.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R UpperArm" 0 -2.29 -2.72 12.205732 3.1 2.88
$HBox 0 "Bip01 R Forearm" 0 -2.49 -2.48 12.81 2.9 3.13
$HBox 0 "Bip01 R Hand" -1.78 -1.03 -2.03 32.274639 4.779462 1.914384
$HBox 0 "Bone01" -1.01 -0.51 -0.61 0.89 0.57 69.860001
$HBox 0 "Bip01 L UpperArm" 0 -2.29 -2.88 12.205736 3.1 2.72
$HBox 0 "Bip01 L Forearm" 0 -2.49 -3.13 12.81 2.9 2.48
$HBox 0 "Bip01 L Hand" -0.44 -1.03 -1.914384 3.890132 1.41 2.03
$HBox 0 "Bip01 L Finger01" 0 -0.9 -0.41 1.316935 0.44 0.9
$HBox 0 "Bip01 L Finger02" 0 -0.55 -0.43 1.69 0.61 0.63
$HBox 0 "Bip01 L Finger4" -0.34 -0.8 -0.51 0.941346 0.56 0.56
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.81 1.316936 0.44 0.41
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.61 0.43
$HBox 0 "Bip01 R Finger4" -0.34 -0.8 -0.56 0.941345 0.56 0.51

$Sequence "idle" {
	"v_spear_anims\idle.smd"
	fps 10
}
$Sequence "thrust1" {
	"v_spear_anims\thrust1.smd"
	fps 24
}
$Sequence "thrust2" {
	"v_spear_anims\thrust2.smd"
	fps 24
}
$Sequence "charge" {
	"v_spear_anims\charge.smd"
	fps 15
}
$Sequence "chargeexit1" {
	"v_spear_anims\chargeexit1.smd"
	fps 30
}
$Sequence "chargeexit2" {
	"v_spear_anims\chargeexit2.smd"
	fps 30
}
$Sequence "draw" {
	"v_spear_anims\draw.smd"
	fps 30
}
$Sequence "fidget1" {
	"v_spear_anims\fidget1.smd"
	fps 30
}
