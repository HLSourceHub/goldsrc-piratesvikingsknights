// Created by Crowbar 0.42.0.0

$ModelName "C:\Dokumente und Einstellungen\THIEF.YOUR-APPC457FI3\Desktop\1\P"

$BodyGroup "studio"
{
	studio "palme_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "Blatt.bmp" "blatt9.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "sides01" -7.38 -1.41 -4.74 7.38 1.41 4.74

$Sequence "idle" {
	"palme_anims\idle.smd"
	ACT_IDLE 1
	fps 30
	loop
}
$Sequence "wind" {
	"palme_anims\wind.smd"
	fps 24
	loop
}
