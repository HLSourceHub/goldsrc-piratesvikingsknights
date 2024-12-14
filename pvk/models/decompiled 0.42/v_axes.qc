// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_axes.mdl"

$BodyGroup "studio"
{
	studio "v_axes_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_axes_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "headside.bmp" "headtop.bmp" "handle.bmp" "furry.bmp" "arm.bmp" "vikhandfront.bmp" "vikhandback.bmp" "vikthumb.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L UpperArm" 0 -2.69 -3.32 12.205736 3.57 2.78
$HBox 0 "Bip01 L Forearm" -0.12 -2.77 -2.84 13.21 3.46 2.77
$HBox 0 "Bip01 L Hand" -0.44 -1.03 -7.479552 7.361721 1.943762 2.03
$HBox 0 "Dummy23" -0.79 0 -2.95 1.02 25.700001 6.52
$HBox 0 "Bip01 R UpperArm" 0 -2.69 -2.78 12.205732 3.57 3.32
$HBox 0 "Bip01 R Forearm" -0.12 -2.77 -2.77 13.21 3.46 2.84
$HBox 0 "Bip01 R Hand" -0.44 -1.03 -2.03 7.372398 1.835144 7.477273
$HBox 0 "Dummy12" -0.89 0 -2.95 0.88 25.700001 6.52
$HBox 0 "Bip01 L Finger01" 0 -0.9 -0.41 1.316935 0.44 0.9
$HBox 0 "Bip01 L Finger02" 0 -0.55 -0.43 1.69 0.61 0.63
$HBox 0 "Bip01 L Finger4" -0.34 -0.8 -0.51 0.941346 0.56 0.56
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.9 1.316936 0.44 0.41
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.61 0.43
$HBox 0 "Bip01 R Finger4" -0.34 -0.8 -0.56 0.941345 0.56 0.51

$Sequence "idle" {
	"v_axes_anims\idle.smd"
	fps 10
}
$Sequence "swing1" {
	"v_axes_anims\swing1.smd"
	fps 30
}
$Sequence "swing2" {
	"v_axes_anims\swing2.smd"
	fps 30
}
$Sequence "swing3" {
	"v_axes_anims\swing3.smd"
	fps 30
}
$Sequence "berserk" {
	"v_axes_anims\berserk.smd"
	fps 20
}
$Sequence "draw" {
	"v_axes_anims\draw.smd"
	fps 20
}
