// Created by Crowbar 0.42.0.0

$ModelName "../skins/mdls/w_quiver.mdl"

$BodyGroup "body"
{
	studio "w_quiver_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "strap.bmp" "arrow1.bmp" "side.bmp" "hole.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Line01" -28.09 -13.07 -9.91 5.4 22.42 8.85
$HBox 0 "Line02" -18.370001 -13.07 -9.83 5.4 9.77 8.85

$Sequence "still" {
	"w_quiver_anims\still.smd"
	fps 1
}
