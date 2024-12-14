// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_fists.mdl"

$BodyGroup "hands"
{
	studio "v_fists_body0_model0.smd"
	studio "v_fists_body0_model1.smd"
	studio "v_fists_body0_model2.smd"
	studio "v_fists_body0_model3.smd"
	studio "v_fists_body0_model4.smd"
	studio "v_fists_body0_model5.smd"
	studio "v_fists_body0_model6.smd"
	studio "v_fists_body0_model7.smd"
	studio "v_fists_body0_model8.smd"
}



$TextureGroup "skinfamilies"
{
	{ "upperarmor.bmp" "chainmail.bmp" "armarmor1.bmp" "handarmor1.bmp" "bracermetal.bmp" "bluetunic.bmp" "bracer.bmp" "finger.bmp" "handside.bmp" "forearmbottom3.bmp" "forearmtop3.bmp" "thumb.bmp" "capnsleeve.bmp" "capthumb.bmp" "shirt.bmp" "roundshine.bmp" "sleeve.bmp" "foresleeve.bmp" "handfront.bmp" "handback.bmp" "snipethumb.bmp" "viksleeve.bmp" "furry.bmp" "vikhandfront.bmp" "vikhandback.bmp" "vikthumb.bmp" "svsleeve.bmp" "cuff.bmp" "arm.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L Clavicle" 0 -1.97 -3.2 6.008292 1.74 0
$HBox 0 "Bip01 L UpperArm" 0 -3.64 -3.47 13.08 4.17 3.37
$HBox 0 "Bip01 L Forearm" -0.12 -3.18 -3.13 13.21 3.76 2.92
$HBox 0 "Bip01 L Hand" -0.45 -1.77 -1.99 7.73 2.11 2.1
$HBox 0 "Bip01 L Finger01" 0 -0.9 -0.7 1.097446 1.19 0.94
$HBox 0 "Bip01 L Finger02" 0 -0.58 -0.66 1.69 0.96 0.65
$HBox 0 "Bip01 L Finger4" -0.35 -0.8 -0.51 1.21 0.57 0.61
$HBox 0 "Bip01 L Finger22" 0 -0.44 -0.6 1.6 0.63 0.71
$HBox 0 "Bip01 R Clavicle" 0 -1.97 0 6.008292 1.74 3.2
$HBox 0 "Bip01 R UpperArm" 0 -3.46 -3.04 12.68 4.14 3.47
$HBox 0 "Bip01 R Forearm" -0.12 -3.18 -2.96 13.21 3.76 3.13
$HBox 0 "Bip01 R Hand" -1.78 -1.43 -2.1 4.35 1.6 1.914383
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.94 1.097445 1.18 0.7
$HBox 0 "Bip01 R Finger02" 0 -0.58 -0.65 1.69 0.94 0.66
$HBox 0 "Bip01 R Finger4" -0.35 -0.8 -0.61 1.21 0.56 0.51
$HBox 0 "Bip01 R Finger21" 0 -0.61 -0.44 1.61 0.51 0.57
$HBox 0 "Bip01 R Finger22" 0 -0.44 -0.71 1.6 0.61 0.6

$Sequence "idle" {
	"v_fists_anims\idle.smd"
	fps 10
}
$Sequence "swing1" {
	"v_fists_anims\swing1.smd"
	fps 24
}
$Sequence "swing2" {
	"v_fists_anims\swing2.smd"
	fps 24
}
$Sequence "hook" {
	"v_fists_anims\hook.smd"
	fps 24
}
$Sequence "uppercut" {
	"v_fists_anims\uppercut.smd"
	fps 24
}
$Sequence "shove" {
	"v_fists_anims\shove.smd"
	fps 24
}
$Sequence "block" {
	"v_fists_anims\block.smd"
	fps 24
}
$Sequence "fidget" {
	"v_fists_anims\fidget.smd"
	fps 30
}
$Sequence "draw" {
	"v_fists_anims\draw.smd"
	fps 30
}
