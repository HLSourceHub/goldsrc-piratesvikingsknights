// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/v_bow.mdl"

$BodyGroup "studio"
{
	studio "v_bow_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_bow_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "handletop.bmp" "handle.bmp" "handlebottom.bmp" "bow.bmp" "arrowtex.bmp" "string.bmp" "chainmail.bmp" "bluetunic.bmp" "bracer.bmp" "finger.bmp" "handside.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 Spine3" -3.324439 -0.002131 0 4.639606 5.22462 4.844753
$HBox 0 "Bip01 L UpperArm" 0 -2.92 -2.98 13.08 4.17 3.37
$HBox 0 "Bip01 L Forearm" 0 -2.09 -1.55 12.205734 2.68 2.37
$HBox 0 "Bip01 L Hand" -10.743022 -1.08 -29.820608 3.890133 9.925337 2.1
$HBox 0 "Dummy12" -11.626441 -9.443961 -1.23 0.88 8.21 1.29
$HBox 0 "Dummy25" -1.33 0 -0.62 0 8.636296 0.69
$HBox 0 "Dummy15" -4.544253 0 -0.55 0 10.090317 0.62
$HBox 0 "Dummy23" -4.544257 -5.08 -0.62 2.63 10.090316 0.55
$HBox 0 "Bone01" -1.14 -28.58 -1.19 1.14 0.64 1.09
$HBox 0 "Bip01 R Forearm" 0 -2.09 -2.37 12.205738 2.68 1.55
$HBox 0 "Bip01 R Hand" 0 -1.07 -2.1 3.890133 1.26 1.914383
$HBox 0 "Bip01 R Finger21" 0 -0.61 -0.44 1.436494 0.5 0.57

$Sequence "idle1" {
	"v_bow_anims\idle1.smd"
	fps 10
}
$Sequence "idle2" {
	"v_bow_anims\idle2.smd"
	fps 10
}
$Sequence "pull" {
	"v_bow_anims\pull.smd"
	fps 30
}
$Sequence "pullidle" {
	"v_bow_anims\pullidle.smd"
	fps 30
}
$Sequence "shoot1" {
	"v_bow_anims\shoot1.smd"
	fps 30
}
$Sequence "shoot2" {
	"v_bow_anims\shoot2.smd"
	fps 30
}
$Sequence "reload" {
	"v_bow_anims\reload.smd"
	fps 30
}
$Sequence "draw" {
	"v_bow_anims\draw.smd"
	fps 30
}
$Sequence "draw2" {
	"v_bow_anims\draw2.smd"
	fps 30
}
$Sequence "holster" {
	"v_bow_anims\holster.smd"
	fps 30
}
$Sequence "holster2" {
	"v_bow_anims\holster2.smd"
	fps 30
}
