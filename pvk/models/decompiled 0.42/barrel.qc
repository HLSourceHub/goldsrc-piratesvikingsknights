// Created by Crowbar 0.42.0.0

$ModelName "E:\Program Files\3dsmax4\meshes\barrel.mdl"

$BodyGroup "body"
{
	studio "barrel_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "barrel.bmp" "barreltop.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Cylinder01" -14.19 -14.87 0 15.1 14.87 41.720001

$Sequence "barrel" {
	"barrel_anims\barrel.smd"
	ACT_IDLE 1
	fps 30
	loop
}
