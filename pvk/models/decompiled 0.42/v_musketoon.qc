// Created by Crowbar 0.42.0.0

$ModelName "../../skins/mdls/v_musketoon.mdl"

$BodyGroup "studio"
{
	studio "v_musketoon_body0_model0.smd"
}
$BodyGroup "hand"
{
	studio "v_musketoon_body1_model0.smd"
}



$TextureGroup "skinfamilies"
{
	{ "handle.bmp" "stock.bmp" "shiny.bmp" "barrel.bmp" "trigger.bmp" "spring.bmp" "slider.bmp" "pan.bmp" "screw.bmp" "flint.bmp" "hammer.bmp" "jaw.bmp" "pancover.bmp" "mechanism.bmp" "circlething.bmp" "capnsleeve.bmp" "forearmbottom3.bmp" "forearmtop3.bmp" "capthumb.bmp" "shirt.bmp" "roundshine.bmp" }
}

$Attachment 0 "Bip01 R UpperArm" -14 1 -0.5

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R UpperArm" 0 -2.28 -3.04 12.205732 3.01 2.26
$HBox 0 "Bip01 R Forearm" 0 -3.18 -2.72 12.45 2.94 2.66
$HBox 0 "Bip01 R Hand" -0.858716 -1.16 -3.336773 4.35 1.6 1.914384
$HBox 0 "Dummy14" -26.280001 -2.3 -1.54 2.01 3.06 1.45
$HBox 0 "Dummy18" -2.725539 -0.678927 0 0 0.640066 1.098556
$HBox 0 "Bip01 L UpperArm" 0 -2.28 -2.26 12.205736 4.04 1.93
$HBox 0 "Bip01 L Forearm" 0 -3.18 -2.66 12.39 3.48 2.72
$HBox 0 "Bip01 L Hand" 0 -1.77 -1.99 7.73 2.11 1.89
$HBox 0 "Bip01 R Finger01" 0 -0.9 -0.9 1.316936 0.44 0.41
$HBox 0 "Bip01 R Finger02" 0 -0.55 -0.63 1.69 0.61 0.43

$Sequence "idle" {
	"v_musketoon_anims\idle.smd"
	fps 10
}
$Sequence "idle_empty" {
	"v_musketoon_anims\idle_empty.smd"
	fps 10
}
$Sequence "shoot" {
	"v_musketoon_anims\shoot.smd"
	{ event 5001 10 "20" }
	fps 24
}
$Sequence "reload" {
	"v_musketoon_anims\reload.smd"
	fps 20
}
$Sequence "draw" {
	"v_musketoon_anims\draw.smd"
	fps 30
}
$Sequence "draw_empty" {
	"v_musketoon_anims\draw_empty.smd"
	fps 30
}
$Sequence "holster" {
	"v_musketoon_anims\holster.smd"
	fps 30
}
