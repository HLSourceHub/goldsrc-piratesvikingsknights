// Created by Crowbar 0.42.0.0

$ModelName "C:\Mods\Omni2\thors\thorstatue.mdl"

$BodyGroup "body"
{
	studio "thorstatue_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "rockt.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "torso" -57.330002 -3.16 -148.179993 97.199997 726.02002 326.429993

$Sequence "seq-name" {
	"thorstatue_anims\seq-name.smd"
	ACT_IDLE 1
	fps 30
	loop
}
