// Created by Crowbar 0.42.0.0

$ModelName "p_cutlass.mdl"

$BodyGroup "body"
{
	studio "p_cutlass_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "blade.bmp" "guard2.bmp" "handlecap.bmp" "handle.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Bip01 R Hand" 0 0 0 2.827033 1.405819 12.017635
$HBox 0 "Line01" -3.49 -16.66 -2.19 3.53 7.53 2.77

$Sequence "idle" {
	"p_cutlass_anims\idle.smd"
	fps 1
}
