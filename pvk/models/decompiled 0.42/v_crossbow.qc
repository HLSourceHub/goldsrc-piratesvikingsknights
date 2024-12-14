// Created by Crowbar 0.42.0.0

$ModelName "../../skins/mdls/v_crossbow.mdl"

$BodyGroup "studio"
{
	studio "v_crossbow_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_crossbow_body1_model0.smd"
	studio "v_crossbow_body1_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "stockside.bmp" "stocktop.bmp" "metal.bmp" "bolttex.bmp" "string.bmp" "metalstrip.bmp" "pine.bmp" "handle.bmp" "chainmail.bmp" "bracermetal.bmp" "finger.bmp" "handside.bmp" "bracer.bmp" "bluetunic.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R UpperArm" 0 -2 -1.23 12.205736 0 2.14
$HBox 0 "Bip01 R Forearm" -0.09 -2.18 -2.44 12.205738 2.19 2.46
$HBox 0 "Bip01 R Hand" -21.765932 -1.06 -2.1 3.890133 2.077868 12.30998
$HBox 0 "Dummy13" -6.4 -2.79 -2 21.700001 1.55 2.04
$HBox 0 "Bip01 L UpperArm" 0 -3.04 -3.05 12.47 4.17 3.32
$HBox 0 "Bip01 L Forearm" -0.09 -2.18 -2.46 12.205735 2.45 2.71
$HBox 0 "Bip01 L Hand" -0.01 -1.06 -1.914383 3.890132 1.49 2.11
$HBox 0 "Bip01 L Finger01" 0 -0.94 -0.6 1.316935 0.59 0.74
$HBox 0 "Bip01 L Finger02" -0.28 -0.72 -0.75 1.76 0.68 0.41
$HBox 0 "Bip01 L Finger4" -0.95 -0.8 -0.47 1.1 0.56 0.77
$HBox 0 "Bip01 R Finger01" 0 -0.94 -0.74 1.316935 0.6 0.61
$HBox 0 "Bip01 R Finger02" -0.29 -0.72 -0.41 1.76 0.68 0.76
$HBox 0 "Bip01 R Finger4" -0.95 -0.8 -0.77 1.09 0.56 0.47

$Sequence "idle" {
	"v_crossbow_anims\idle.smd"
	fps 10
}
$Sequence "emptyidle" {
	"v_crossbow_anims\emptyidle.smd"
	fps 10
}
$Sequence "shoot" {
	"v_crossbow_anims\shoot.smd"
	fps 30
}
$Sequence "reload" {
	"v_crossbow_anims\reload.smd"
	fps 10
}
$Sequence "drawloaded" {
	"v_crossbow_anims\drawloaded.smd"
	fps 20
}
$Sequence "drawempty" {
	"v_crossbow_anims\drawempty.smd"
	fps 20
}
$Sequence "sniperidle" {
	"v_crossbow_anims\sniperidle.smd"
	fps 30
}
$Sequence "snipershoot" {
	"v_crossbow_anims\snipershoot.smd"
	fps 30
}
$Sequence "snipermodeenter" {
	"v_crossbow_anims\snipermodeenter.smd"
	fps 30
}
$Sequence "snipermodeexit" {
	"v_crossbow_anims\snipermodeexit.smd"
	fps 30
}
