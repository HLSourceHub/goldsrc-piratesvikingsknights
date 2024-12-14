// Created by Crowbar 0.42.0.0

$ModelName "../../skins/mdls/v_javelin.mdl"

$BodyGroup "studio"
{
	studio "v_javelin_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_javelin_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "blade.bmp" "shaft.bmp" "svsleeve.bmp" "cuff.bmp" "vikhandfront.bmp" "vikhandback.bmp" "vikthumb.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 Spine3" -44.518425 -0.002131 -11.987769 4.639606 11.733421 0
$HBox 0 "Dummy22" -0.96 -0.07 -0.73 0.93 55.77 0.79
$HBox 0 "Bip01 L UpperArm" 0 -2.29 -2.88 12.205736 3.1 2.72
$HBox 0 "Bip01 L Forearm" 0 -2.49 -3.13 12.81 2.9 2.48
$HBox 0 "Bip01 L Hand" -0.44 -1.03 -1.914384 3.890132 1.41 2.03
$HBox 0 "Bip01 L Finger01" 0 -0.9 -0.41 1.316935 0.44 0.9
$HBox 0 "Bip01 L Finger02" 0 -0.55 -0.43 1.69 0.61 0.63
$HBox 0 "Bip01 L Finger4" -0.34 -0.8 -0.51 0.941346 0.56 0.56
$HBox 0 "Bip01 R UpperArm" 0 -2.29 -2.72 12.205732 3.1 2.88
$HBox 0 "Bip01 R Forearm" 0 -2.49 -2.48 12.81 2.9 3.13
$HBox 0 "Bip01 R Hand" -1.78 -1.03 -2.03 3.890134 1.41 1.914384
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.81 1.316936 0.44 0.41
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.61 0.43
$HBox 0 "Bip01 R Finger4" -0.34 -0.8 -0.56 0.941345 0.56 0.51

$Sequence "idle" {
	"v_javelin_anims\idle.smd"
	fps 10
}
$Sequence "ready" {
	"v_javelin_anims\ready.smd"
	fps 30
}
$Sequence "throw" {
	"v_javelin_anims\throw.smd"
	fps 30
}
$Sequence "draw" {
	"v_javelin_anims\draw.smd"
	fps 20
}
