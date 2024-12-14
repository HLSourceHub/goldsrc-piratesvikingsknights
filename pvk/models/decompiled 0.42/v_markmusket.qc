// Created by Crowbar 0.42.0.0

$ModelName "../../skins/mdls/v_markmusket.mdl"

$BodyGroup "studio"
{
	studio "v_markmusket_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_markmusket_body1_model0.smd"
}
$BodyGroup "powderhorn"
{
	studio "v_markmusket_body2_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "handle.bmp" "stock.bmp" "barrel.bmp" "hammer.bmp" "jaw.bmp" "pancover.bmp" "flint.bmp" "slider.bmp" "mechanism.bmp" "trigger.bmp" "circlething.bmp" "spring.bmp" "pan.bmp" "screw.bmp" "shiny.bmp" "handfront.bmp" "handback.bmp" "snipethumb.bmp" "foresleeve.bmp" "sleeve.bmp" "powderhorn.bmp" "shinycirc.bmp" }
}

$Attachment 0 "Bip01 R UpperArm" -14 1 -0.5

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 Spine3" -15.62794 -0.002131 0 4.639606 4.936893 6.801651
$HBox 0 "Bip01 R UpperArm" 0 -2.71 -1.67 13.02 4.14 3.06
$HBox 0 "Bip01 R Forearm" -0.11 -2.47 -2.91 12.205738 1.66 2.17
$HBox 0 "Bip01 R Hand" -1.26586 -0.94 -2.06 3.890132 1.1 1.914384
$HBox 0 "Dummy14" -41.200001 -3.7 -1.29 6.59 2.65 1.25
$HBox 0 "Dummy18" -31.514908 -1.012894 -0.260616 0 0.640063 1.098557
$HBox 0 "Bip01 L UpperArm" 0 -2.71 -3.47 12.20574 4.14 1.95
$HBox 0 "Bip01 L Forearm" 0 -2.67 -2.4 12.205734 3.76 1.91
$HBox 0 "Bip01 L Hand" -1.24 -0.94 -1.914384 3.890133 1.15 2.06
$HBox 0 "Bip01 L Finger01" 0 -0.78 -0.33 1.316935 0.42 0.89
$HBox 0 "Bip01 L Finger4" -0.35 -0.67 -0.51 1.21 0.56 0.56
$HBox 0 "Bip01 R Finger01" 0 -0.88 -0.9 1.316935 0.45 0.35
$HBox 0 "Bip01 R Finger4" -0.35 -0.67 -0.56 1.21 0.57 0.51
$HBox 0 "powerhornroot" -2.93 -0.1 -2.57 2.52 11.06 6.03

$Sequence "idle" {
	"v_markmusket_anims\idle.smd"
	fps 10
}
$Sequence "sniper_idle" {
	"v_markmusket_anims\sniper_idle.smd"
	fps 10
}
$Sequence "empty_idle" {
	"v_markmusket_anims\empty_idle.smd"
	fps 10
}
$Sequence "enter_sniper_mode" {
	"v_markmusket_anims\enter_sniper_mode.smd"
	fps 30
}
$Sequence "exit_sniper_mode" {
	"v_markmusket_anims\exit_sniper_mode.smd"
	fps 30
}
$Sequence "shoot1" {
	"v_markmusket_anims\shoot1.smd"
	{ event 5001 10 "20" }
	fps 24
}
$Sequence "shoot2" {
	"v_markmusket_anims\shoot2.smd"
	{ event 5001 10 "20" }
	fps 24
}
$Sequence "reload" {
	"v_markmusket_anims\reload.smd"
	fps 20
}
$Sequence "draw" {
	"v_markmusket_anims\draw.smd"
	fps 30
}
$Sequence "drawempty" {
	"v_markmusket_anims\drawempty.smd"
	fps 30
}
