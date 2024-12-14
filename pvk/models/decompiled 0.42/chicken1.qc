// Created by Crowbar 0.42.0.0

$ModelName "C:\Program Files\Half-Life Model Viewer\Chicken\Chicken1.mdl"

$BodyGroup "studio"
{
	studio "chicken1_reference.smd"
}



$TextureGroup "skinfamilies"
{
	{ "feather1.bmp"  "chickeye.bmp" "Head.bmp"  "tuffts.bmp" "legs1.bmp"  }
	{ "rfeather1.bmp" "chickeye.bmp" "rHead.bmp" "tuffts.bmp" "rlegs1.bmp" }
}

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 0 "joint1" -5.29 -6.28 -6.09 5.29 6.28 8.101611
$HBox 0 "joint2" -2.99 -1.35 0 3 1.55 3.924776
$HBox 0 "joint3" -2.5 -4.32 -3.06 2.51 3.03 3.83
$HBox 0 "joint5" -2.51 -1.3 -3.65 2.41 3.37 2.417258
$HBox 0 "joint6" -0.93 -0.49 -2.07 0.84 1.31 2.035715
$HBox 0 "joint7" -2.68 -1.63 -1.28 0.84 2.21 0.43
$HBox 0 "joint8" -2.51 -2.98 -3.5 2.41 1.7 2.340036
$HBox 0 "joint9" -0.84 -0.7 -1.96 0.93 1.1 2.142857
$HBox 0 "joint10" -0.84 -1.84 -1.28 2.68 2 0.43

$Sequence "idle" {
	"chicken1_anims\idle.smd"
	fps 10
	loop
}
