// Created by Crowbar 0.42.0.0

$ModelName "C:\islandmap\tikistatue.mdl"

$BodyGroup "body"
{
	studio "tikistatue_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "goldtexture.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "Origin" -9.72 -0.86 -8.72 9.64 41.169998 7.27

$Sequence "tikiseq" {
	"tikistatue_anims\tikiseq.smd"
	ACT_IDLE 1
	fps 100
	loop
}
