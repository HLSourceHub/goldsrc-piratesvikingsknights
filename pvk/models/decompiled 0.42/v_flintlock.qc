// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_flintlock.mdl"

$BodyGroup "studio"
{
	studio "v_flintlock_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_flintlock_body1_model0.smd"
	studio "v_flintlock_body1_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "handle.bmp" "stock.bmp" "jaw.bmp" "flint.bmp" "screw.bmp" "slider.bmp" "hammer.bmp" "spring.bmp" "pancover.bmp" "pan.bmp" "circlething.bmp" "shiny.bmp" "trigger.bmp" "barrel.bmp" "mechanism.bmp" "forearmbottom3.bmp" "forearmtop3.bmp" "thumb.bmp" "sleeve.bmp" "foresleeve.bmp" "handfront.bmp" "handback.bmp" "snipethumb.bmp" }
}

$Attachment 0 "Bip01 R UpperArm" -14 1 -0.5

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Clavicle" 0 -1.97 0 6.008292 1.74 3.2
$HBox 0 "Bip01 R UpperArm" 0 -3.09 -1.95 12.36 4.14 3.47
$HBox 0 "Bip01 R Forearm" -0.12 -3.18 -2.69 12.205738 3.76 2.37
$HBox 0 "Bip01 R Hand" -0.45 -0.97 -2.06 4.35 11.637151 1.914383
$HBox 0 "Dummy14" -13.67 -0.4 -0.99 1.03 5.32 1.26
$HBox 0 "Dummy18" -2.513319 -0.476566 0 0 0.640065 1.098557
$HBox 0 "Bip01 L Clavicle" 0 -1.97 -3.2 6.008292 1.74 0
$HBox 0 "Bip01 L UpperArm" 0 -3.09 -3.47 12.36 4.14 1.95
$HBox 0 "Bip01 L Forearm" -0.12 -3.18 -2.37 12.205734 3.76 2.69
$HBox 0 "Bip01 L Hand" -0.45 -0.97 -1.914384 4.35 1.41 2.06
$HBox 0 "Bip01 L Finger01" 0 -0.85 -0.45 1.316935 0.89 0.94
$HBox 0 "Bip01 L Finger02" 0 -0.56 -0.59 1.69 0.65 0.56
$HBox 0 "Bip01 L Finger4" -0.35 -0.8 -0.51 1.21 0.56 0.56
$HBox 0 "Bip01 R Finger01" 0 -0.85 -0.94 1.316934 0.89 0.45
$HBox 0 "Bip01 R Finger02" 0 -0.56 -0.56 1.69 0.65 0.59
$HBox 0 "Bip01 R Finger4" -0.35 -0.8 -0.56 1.21 0.56 0.51

$Sequence "idle" {
	"v_flintlock_anims\idle.smd"
	fps 10
}
$Sequence "fire1" {
	"v_flintlock_anims\fire1.smd"
	{ event 5001 10 "20" }
	fps 24
}
$Sequence "fire2" {
	"v_flintlock_anims\fire2.smd"
	{ event 5001 10 "20" }
	fps 24
}
$Sequence "reload" {
	"v_flintlock_anims\reload.smd"
	fps 30
}
$Sequence "reload2" {
	"v_flintlock_anims\reload2.smd"
	fps 30
}
$Sequence "fill" {
	"v_flintlock_anims\fill.smd"
	fps 14
}
$Sequence "fidget1" {
	"v_flintlock_anims\fidget1.smd"
	fps 30
}
$Sequence "holster" {
	"v_flintlock_anims\holster.smd"
	fps 20
}
