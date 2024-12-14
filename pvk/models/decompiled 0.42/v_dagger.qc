// Created by Crowbar 0.42.0.0

$ModelName "../../skins/mdls/v_dagger.mdl"

$BodyGroup "studio"
{
	studio "v_dagger_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_dagger_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "hilt2.bmp" "hiltside.bmp" "blade.bmp" "handle.bmp" "foresleeve.bmp" "sleeve.bmp" "handfront.bmp" "handback.bmp" "snipethumb.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R UpperArm" 0 -2.71 -1.95 12.205732 4.14 3.47
$HBox 0 "Bip01 R Forearm" 0 -2.65 -2.69 12.205739 3.38 2.37
$HBox 0 "Bip01 R Hand" -0.45 -0.94 -2.06 3.890133 1.15 6.597152
$HBox 0 "Bone01" -0.56 -1.92 0 0.56 1.92 13.69
$HBox 0 "Bip01 R Finger01" 0 -0.44 -0.91 1.316934 0.82 0.41
$HBox 0 "Bip01 R Finger4" -0.35 -0.67 -0.56 1.21 0.56 0.51

$Sequence "idle1" {
	"v_dagger_anims\idle1.smd"
	fps 10
}
$Sequence "stab1" {
	"v_dagger_anims\stab1.smd"
	fps 30
}
$Sequence "swing1" {
	"v_dagger_anims\swing1.smd"
	fps 30
}
$Sequence "swing2" {
	"v_dagger_anims\swing2.smd"
	fps 30
}
$Sequence "draw" {
	"v_dagger_anims\draw.smd"
	fps 30
}
$Sequence "holster" {
	"v_dagger_anims\holster.smd"
	fps 30
}
$Sequence "fidget1" {
	"v_dagger_anims\fidget1.smd"
	fps 30
}
$Sequence "fidget2" {
	"v_dagger_anims\fidget2.smd"
	fps 30
}
