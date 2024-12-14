// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/v_bigaxe.mdl"

$BodyGroup "studio"
{
	studio "v_bigaxe_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_bigaxe_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "shaft.bmp" "outershaft.bmp" "blade.bmp" "spikebase.bmp" "spike.bmp" "spikeconnect.bmp" "sleeve.bmp" "furry.bmp" "handfront.bmp" "handback.bmp" "thumb.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 L UpperArm" 0 -2.26 -2.88 12.205736 3.1 2.34
$HBox 0 "Bip01 L Forearm" 0 -3.05 -3.13 12.61 3.53 2.66
$HBox 0 "Bip01 L Hand" -2.74 -2.39 -1.914384 17.786751 1.41 6.014289
$HBox 0 "Bone01" -1.06 -9.92 -2.86 1.01 9.3 51.869999
$HBox 0 "Bip01 L Finger01" 0 -0.9 -0.41 1.316935 0.44 0.9
$HBox 0 "Bip01 L Finger02" 0 -0.55 -0.43 1.69 0.61 0.63
$HBox 0 "Bip01 L Finger4" -0.34 -0.8 -0.51 0.941346 0.56 0.56
$HBox 0 "Bip01 R UpperArm" 0 -2.95 -3.08 12.205732 3.35 2.59
$HBox 0 "Bip01 R Forearm" 0 -3.05 -3.09 12.61 3.92 3.01
$HBox 0 "Bip01 R Hand" -2.74 -2.39 -2.03 3.890134 1.41 1.914384
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.9 1.316936 0.44 0.41
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.61 0.43
$HBox 0 "Bip01 R Finger4" -0.34 -0.8 -0.56 0.941345 0.56 0.51

$Sequence "idle" {
	"v_bigaxe_anims\idle.smd"
	fps 10
}
$Sequence "swing" {
	"v_bigaxe_anims\swing.smd"
	fps 20
}
$Sequence "swing2" {
	"v_bigaxe_anims\swing2.smd"
	fps 30
}
$Sequence "draw" {
	"v_bigaxe_anims\draw.smd"
	fps 30
}
$Sequence "fidget1" {
	"v_bigaxe_anims\fidget1.smd"
	fps 30
}
