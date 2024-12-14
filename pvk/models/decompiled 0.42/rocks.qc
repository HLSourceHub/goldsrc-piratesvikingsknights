// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/rocks.mdl"

$BodyGroup "parts"
{
	studio "rocks_body0_model0.smd"
	studio "rocks_body0_model1.smd"
	studio "rocks_body0_model2.smd"
	studio "rocks_body0_model3.smd"
}



$TextureGroup "skinfamilies"
{
	{ "rock.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "GeoSphere01" -39.759998 -29.65 -30.530001 35.939999 32.59 33.330002
$HBox 0 "GeoSphere02" -28.809999 -23.719999 -30.530001 34.849998 26.629999 28.51
$HBox 0 "GeoSphere03" -20.02 -16.389999 -23.610001 16.809999 22.129999 17.73
$HBox 0 "GeoSphere04" -12.71 -7.54 -17.75 11.31 16.059999 14.82

$Sequence "idle" {
	"rocks_anims\idle.smd"
	fps 1
}
