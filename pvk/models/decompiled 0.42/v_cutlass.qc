// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_cutlass.mdl"

$BodyGroup "studio"
{
	studio "v_cutlass_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_cutlass_body1_model0.smd"
	studio "v_cutlass_body1_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "blade.bmp" "guard2.bmp" "guardinside.bmp" "handlecap.bmp" "handle.bmp" "forearmbottom3.bmp" "forearmtop3.bmp" "thumb.bmp" "capnsleeve.bmp" "shirt.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R UpperArm" 0 -3.09 -3.04 12.36 3.01 2.26
$HBox 0 "Bip01 R Forearm" -0.12 -3.18 -2.72 12.45 2.94 2.66
$HBox 0 "Bip01 R Hand" -0.34 -1.16 -2.03 8.565755 2.933511 8.942079
$HBox 0 "Bone01" -2.55 -2.42 0 2.41 4.6 24.83
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.94 1.316934 0.89 0.45
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.65 0.59

$Sequence "idle1" {
	"v_cutlass_anims\idle1.smd"
	fps 10
}
$Sequence "swing1" {
	"v_cutlass_anims\swing1.smd"
	fps 30
}
$Sequence "swing2" {
	"v_cutlass_anims\swing2.smd"
	fps 30
}
$Sequence "lunge_start" {
	"v_cutlass_anims\lunge_start.smd"
	fps 30
}
$Sequence "lunge_finish" {
	"v_cutlass_anims\lunge_finish.smd"
	fps 30
}
$Sequence "draw" {
	"v_cutlass_anims\draw.smd"
	fps 30
}
$Sequence "holster" {
	"v_cutlass_anims\holster.smd"
	fps 30
}
$Sequence "fidget1" {
	"v_cutlass_anims\fidget1.smd"
	fps 20
}
