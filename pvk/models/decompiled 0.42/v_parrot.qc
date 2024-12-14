// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_parrot.mdl"

$BodyGroup "studio"
{
	studio "v_parrot_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_parrot_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "body.bmp" "toe.bmp" "tail.bmp" "wing.bmp" "face.bmp" "beak.bmp" "capnsleeve.bmp" "forearmbottom3.bmp" "forearmtop3.bmp" "capthumb.bmp" "shirt.bmp" "roundshine.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R UpperArm" 0 -2.28 -3.04 12.205736 3.01 2.26
$HBox 0 "Bip01 R Forearm" 0 -3.18 -2.72 12.45 2.94 2.66
$HBox 0 "Bip01 R Hand" 0 -1.16 -12.280943 26.504862 14.452586 1.914384
$HBox 0 "parrot Spine" -1.013736 -0.001163 -2.103337 1.840413 1.034199 2.103341
$HBox 0 "parrot Neck1" -1.1 -2.44 -2.27 1.503144 0 2.29
$HBox 0 "parrot Head" -0.43 -1.8 -1.37 2.83 3.35 1.32
$HBox 0 "parrot L Clavicle" 0 -1.2 -0.72 2.080676 1.6 0.28
$HBox 0 "parrot L Forearm" 0 -1.12 -1.87 7.57 0.54 1.67
$HBox 0 "parrot R Clavicle" 0 -1.2 -0.28 2.080677 1.6 0.72
$HBox 0 "parrot R Forearm" 0 -1.14 -1.67 7.57 0.53 1.87
$HBox 0 "parrot L Thigh" 0 -0.66 -1.26 1.77 2.1 0
$HBox 0 "parrot L Calf" -0.21 -1.29 -0.68 2.58 1.18 0.7
$HBox 0 "parrot R Thigh" 0 -0.66 0 1.77 2.1 1.24
$HBox 0 "parrot R Calf" -0.21 -1.29 -0.72 2.58 1.18 0.66
$HBox 0 "parrot Tail" -2.65 -3.22 -2.39 1.22 1.84 2.4
$HBox 0 "Bip01 L UpperArm" 0 -2.28 -2.26 12.205736 4.04 1.93
$HBox 0 "Bip01 L Forearm" 0 -3.18 -2.66 12.39 3.48 2.72
$HBox 0 "Bip01 L Hand" 0 -1.77 -1.99 7.73 2.11 1.89
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.9 1.316936 0.44 0.41
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.61 0.43

$Sequence "idle" {
	"v_parrot_anims\idle.smd"
	fps 10
}
$Sequence "idleempty" {
	"v_parrot_anims\idleempty.smd"
	fps 10
}
$Sequence "hookattack" {
	"v_parrot_anims\hookattack.smd"
	fps 20
}
$Sequence "hookattackempty" {
	"v_parrot_anims\hookattackempty.smd"
	fps 20
}
$Sequence "launch" {
	"v_parrot_anims\launch.smd"
	fps 15
}
$Sequence "callback" {
	"v_parrot_anims\callback.smd"
	fps 30
}
$Sequence "draw" {
	"v_parrot_anims\draw.smd"
	fps 30
}
$Sequence "drawempty" {
	"v_parrot_anims\drawempty.smd"
	fps 30
}
