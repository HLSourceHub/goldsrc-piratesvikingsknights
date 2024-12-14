// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_viksword.mdl"

$BodyGroup "studio"
{
	studio "v_viksword_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_viksword_body1_model0.smd"
	studio "v_viksword_body1_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "blade.bmp" "shieldback.bmp" "strap.bmp" "hilt.bmp" "handle.bmp" "pommel.bmp" "viksleeve.bmp" "furry.bmp" "vikhandfront.bmp" "vikhandback.bmp" "vikthumb.bmp" "svsleeve.bmp" "cuff.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L UpperArm" 0 -2.29 -2.88 12.205736 3.1 2.72
$HBox 0 "Bip01 L Forearm" 0 -6.496933 -3.13 12.81 3.53 7.180789
$HBox 0 "Bone01" -18.58 -0.96 -5.46 1.91 1.85 9.14
$HBox 0 "Bip01 R UpperArm" 0 -2.29 -2.72 12.205732 3.1 2.88
$HBox 0 "Bip01 R Forearm" 0 -3.05 -2.66 12.81 3.53 3.13
$HBox 0 "Bip01 R Hand" -1.78 -1.03 -2.03 8.522274 1.41 4.145811
$HBox 0 "Dummy12" -1.88 -0.8 -0.92 1.7 30.959999 0.95
$HBox 0 "Bip01 L Hand" -0.44 -1.03 -1.914384 3.890132 1.41 2.03
$HBox 0 "Bip01 L Finger01" 0 -0.9 -0.41 1.316935 0.44 0.9
$HBox 0 "Bip01 L Finger02" 0 -0.55 -0.43 1.69 0.61 0.63
$HBox 0 "Bip01 L Finger4" -0.34 -0.8 -0.51 0.941346 0.56 0.56
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.9 1.316936 0.44 0.41
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.61 0.43
$HBox 0 "Bip01 R Finger4" -0.34 -0.8 -0.56 0.941345 0.56 0.51

$Sequence "idle" {
	"v_viksword_anims\idle.smd"
	fps 10
}
$Sequence "swing1" {
	"v_viksword_anims\swing1.smd"
	fps 30
}
$Sequence "swing2" {
	"v_viksword_anims\swing2.smd"
	fps 30
}
$Sequence "blockenter" {
	"v_viksword_anims\blockenter.smd"
	fps 30
}
$Sequence "blockexit" {
	"v_viksword_anims\blockexit.smd"
	fps 30
}
$Sequence "blockattack" {
	"v_viksword_anims\blockattack.smd"
	fps 30
}
$Sequence "draw" {
	"v_viksword_anims\draw.smd"
	fps 20
}
