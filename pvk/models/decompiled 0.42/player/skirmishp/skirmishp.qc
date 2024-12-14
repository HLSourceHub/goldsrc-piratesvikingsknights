// Created by Crowbar 0.42.0.0

$ModelName "../pvkmdls/skirmishp.mdl"

$BodyGroup "body"
{
	studio "skirmishp_body0_model0.smd"
}
$BodyGroup "cutlass"
{
	studio "skirmishp_body1_model0.smd"
	studio "skirmishp_body1_model1.smd"
}



$TextureGroup "skinfamilies"
{
	{ "shirt.bmp" "sleeve.bmp" "arm.bmp" "chest.bmp" "matt.bmp" "hankerchief.bmp" "handfront2.bmp" "handback.bmp" "pants.bmp" "leg.bmp" "foot.bmp" "blade.bmp" }
}

$Attachment 0 "Bip01 R Hand" 20 2 5
$Attachment 1 "Bip01 R Hand" 15 1.5 3.75
$Attachment 2 "Bip01 R Hand" 30 3 7.5

$CBox 0 0 0 0 0 0

$BBox 0 0 0 0 0 0

$HBox 3 "Bip01 Pelvis" -4.69 -4.44 -6.75 4 5.56 6.75
$HBox 6 "Bip01 L Thigh" 2.66 -3.69 -3.09 18.16 4.88 3.31
$HBox 6 "Bip01 L Calf" 0.38 -3.97 -2.84 17.6 4 2.94
$HBox 6 "Bip01 L Foot" -0.59 -2.34 -2.63 3.79 8 2.19
$HBox 7 "Bip01 R Thigh" 2.47 -3.69 -3.16 18.129999 4.88 3.38
$HBox 7 "Bip01 R Calf" 0.31 -3.97 -2.84 17.6 3.94 2.97
$HBox 7 "Bip01 R Foot" -0.56 -2.34 -2.19 3.81 8 2.66
$HBox 3 "Bip01 Spine1" -3.25 -5.5 -5.5 4.83 5.5 5.5
$HBox 2 "Bip01 Spine2" -0.06 -5.53 -7.59 8 7 7.59
$HBox 2 "Bip01 Spine3" -2.25 -6.81 -6.31 6.5 5.09 6.31
$HBox 2 "Bip01 Neck" -3.11 -1.5 -3 2.05 3.5 3
$HBox 1 "Bip01 Head" 0.09 -3.66 -3 8.41 5.09 3
$HBox 4 "Bip01 L Clavicle" 0.94 -2.88 -4.13 5.44 4.28 3.5
$HBox 4 "Bip01 L UpperArm" -2.16 -2.34 -2.56 11.56 3.41 2.38
$HBox 4 "Bip01 L Forearm" 0.59 -1.81 -2.19 10.75 2.84 2.41
$HBox 4 "Bip01 L Hand" 0 -1 -2 3 1.5 3.5
$HBox 5 "Bip01 R Clavicle" 1.38 -2.84 -3.56 5.69 4.31 4.31
$HBox 5 "Bip01 R UpperArm" -1.88 -2.47 -2.16 11.81 3.28 2.81
$HBox 5 "Bip01 R Forearm" 0.44 -1.97 -2.34 10.59 2.72 2.22
$HBox 5 "Bip01 R Hand" 0 -1 -2 3 1.5 3.5

$Controller 0 "Bip01 Spine" XR -30 30
$Controller 1 "Bip01 Spine1" XR -30 30
$Controller 2 "Bip01 Spine2" XR -30 30
$Controller 3 "Bip01 Spine3" XR -30 30

$Sequence "look_idle" {
	"skirmishp_anims\look_idle.smd"
	ACT_IDLE 2
	fps 14
	loop
}
$Sequence "idle" {
	"skirmishp_anims\idle.smd"
	ACT_IDLE 1
	fps 14
	loop
}
$Sequence "deep_idle" {
	"skirmishp_anims\deep_idle.smd"
	ACT_IDLE 4
	fps 12
	loop
}
$Sequence "run2" {
	"skirmishp_anims\run2.smd"
	ACT_RUN 1
	fps 32
	loop
}
$Sequence "walk2handed" {
	"skirmishp_anims\walk2handed.smd"
	ACT_WALK 1
	fps 26
	loop
	LX
}
$Sequence "2handshoot" {
	"skirmishp_anims\2handshoot.smd"
	ACT_RANGE_ATTACK1 1
	fps 20
}
$Sequence "crawl" {
	"skirmishp_anims\crawl.smd"
	ACT_CROUCH 1
	fps 22
	loop
	LX
}
$Sequence "crouch_idle" {
	"skirmishp_anims\crouch_idle.smd"
	ACT_CROUCHIDLE 1
	fps 12
	loop
}
$Sequence "jump" {
	"skirmishp_anims\jump.smd"
	ACT_HOP 1
	fps 30
}
$Sequence "long_jump" {
	"skirmishp_anims\long_jump.smd"
	ACT_LEAP 1
	fps 24
	LX
}
$Sequence "swim" {
	"skirmishp_anims\swim.smd"
	ACT_SWIM 1
	fps 14
	loop
}
$Sequence "treadwater" {
	"skirmishp_anims\treadwater.smd"
	ACT_HOVER 1
	fps 14
	loop
}
$Sequence "run" {
	"skirmishp_anims\run.smd"
	fps 31
	loop
	LX
}
$Sequence "walk" {
	"skirmishp_anims\walk.smd"
	fps 31
	loop
	LX
}
$Sequence "die_simple" {
	"skirmishp_anims\die_simple.smd"
	ACT_DIESIMPLE 1
	{ event 2001 10 }
	fps 22
}
$Sequence "die_backwards1" {
	"skirmishp_anims\die_backwards1.smd"
	ACT_DIEBACKWARD 4
	{ event 2001 19 }
	fps 26
}
$Sequence "die_backwards" {
	"skirmishp_anims\die_backwards.smd"
	ACT_DIEBACKWARD 1
	{ event 2001 31 }
	fps 30
}
$Sequence "die_forwards" {
	"skirmishp_anims\die_forwards.smd"
	ACT_DIEFORWARD 1
	{ event 2001 10 }
	fps 26
}
$Sequence "headshot" {
	"skirmishp_anims\headshot.smd"
	ACT_DIE_HEADSHOT 4
	{ event 2001 23 }
	fps 24
}
$Sequence "die_spin" {
	"skirmishp_anims\die_spin.smd"
	ACT_DIE_HEADSHOT 1
	{ event 2001 18 }
	fps 30
}
$Sequence "gutshot" {
	"skirmishp_anims\gutshot.smd"
	ACT_DIE_GUTSHOT 1
	{ event 2001 28 }
	fps 20
}
$Sequence "die_headcrush" {
	"skirmishp_anims\die_headcrush.smd"
	ACT_DIE_HEADSHOT 3
	{ event 2001 28 }
	fps 24
}
$Sequence "ref_berserk" {
	"skirmishp_anims\ref_berserk.smd"
	fps 1
}
$Sequence "crouch_berserk" {
	"skirmishp_anims\crouch_berserk.smd"
	fps 1
}
$Sequence "ref_aim_chest" {
	"skirmishp_anims\ref_aim_chest_blend01.smd"
	"skirmishp_anims\ref_aim_chest_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_chest" {
	"skirmishp_anims\ref_shoot_chest_blend01.smd"
	"skirmishp_anims\ref_shoot_chest_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_aim_chest" {
	"skirmishp_anims\crouch_aim_chest_blend01.smd"
	"skirmishp_anims\crouch_aim_chest_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_chest" {
	"skirmishp_anims\crouch_shoot_chest_blend01.smd"
	"skirmishp_anims\crouch_shoot_chest_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "whiz" {
	"skirmishp_anims\whiz.smd"
	fps 12
}
$Sequence "ref_aim_fists" {
	"skirmishp_anims\ref_aim_fists_blend01.smd"
	"skirmishp_anims\ref_aim_fists_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_fists" {
	"skirmishp_anims\ref_shoot_fists_blend01.smd"
	"skirmishp_anims\ref_shoot_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_fists" {
	"skirmishp_anims\ref_shoot2_fists_blend01.smd"
	"skirmishp_anims\ref_shoot2_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_fists" {
	"skirmishp_anims\crouch_aim_fists_blend01.smd"
	"skirmishp_anims\crouch_aim_fists_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_fists" {
	"skirmishp_anims\crouch_shoot_fists_blend01.smd"
	"skirmishp_anims\crouch_shoot_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_fists" {
	"skirmishp_anims\crouch_shoot2_fists_blend01.smd"
	"skirmishp_anims\crouch_shoot2_fists_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot_fists2" {
	"skirmishp_anims\ref_shoot_fists2_blend01.smd"
	"skirmishp_anims\ref_shoot_fists2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_fists2" {
	"skirmishp_anims\ref_shoot2_fists2_blend01.smd"
	"skirmishp_anims\ref_shoot2_fists2_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "crouch_shoot_fists2" {
	"skirmishp_anims\crouch_shoot_fists2_blend01.smd"
	"skirmishp_anims\crouch_shoot_fists2_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_fists2" {
	"skirmishp_anims\crouch_shoot2_fists2_blend01.smd"
	"skirmishp_anims\crouch_shoot2_fists2_blend02.smd"
	blend "XR" -45 45
	fps 20
}
$Sequence "ref_aim_smallsword" {
	"skirmishp_anims\ref_aim_smallsword.smd"
	fps 1
}
$Sequence "ref_shoot_smallsword" {
	"skirmishp_anims\ref_shoot_smallsword.smd"
	fps 1
}
$Sequence "crouch_aim_smallsword" {
	"skirmishp_anims\crouch_aim_smallsword.smd"
	fps 1
}
$Sequence "crouch_shoot_smallsword" {
	"skirmishp_anims\crouch_shoot_smallsword.smd"
	fps 1
}
$Sequence "ref_aim_smallsword2" {
	"skirmishp_anims\ref_aim_smallsword2.smd"
	fps 1
}
$Sequence "ref_shoot_smallsword2" {
	"skirmishp_anims\ref_shoot_smallsword2.smd"
	fps 1
}
$Sequence "crouch_aim_smallsword2" {
	"skirmishp_anims\crouch_aim_smallsword2.smd"
	fps 1
}
$Sequence "crouch_shoot_smallsword2" {
	"skirmishp_anims\crouch_shoot_smallsword2.smd"
	fps 1
}
$Sequence "ref_aim_sword" {
	"skirmishp_anims\ref_aim_sword.smd"
	fps 1
}
$Sequence "ref_shoot_sword" {
	"skirmishp_anims\ref_shoot_sword.smd"
	fps 1
}
$Sequence "ref_shoot2_sword" {
	"skirmishp_anims\ref_shoot2_sword.smd"
	fps 1
}
$Sequence "crouch_aim_sword" {
	"skirmishp_anims\crouch_aim_sword.smd"
	fps 1
}
$Sequence "crouch_shoot_sword" {
	"skirmishp_anims\crouch_shoot_sword.smd"
	fps 1
}
$Sequence "crouch_shoot2_sword" {
	"skirmishp_anims\crouch_shoot2_sword.smd"
	fps 1
}
$Sequence "ref_aim_mace" {
	"skirmishp_anims\ref_aim_mace.smd"
	fps 1
}
$Sequence "ref_shoot_mace" {
	"skirmishp_anims\ref_shoot_mace.smd"
	fps 1
}
$Sequence "crouch_aim_mace" {
	"skirmishp_anims\crouch_aim_mace.smd"
	fps 1
}
$Sequence "crouch_shoot_mace" {
	"skirmishp_anims\crouch_shoot_mace.smd"
	fps 1
}
$Sequence "ref_aim_mace2" {
	"skirmishp_anims\ref_aim_mace2.smd"
	fps 1
}
$Sequence "crouch_aim_mace2" {
	"skirmishp_anims\crouch_aim_mace2.smd"
	fps 1
}
$Sequence "ref_aim_flail" {
	"skirmishp_anims\ref_aim_flail.smd"
	fps 1
}
$Sequence "ref_shoot_flail" {
	"skirmishp_anims\ref_shoot_flail.smd"
	fps 1
}
$Sequence "crouch_aim_flail" {
	"skirmishp_anims\crouch_aim_flail.smd"
	fps 1
}
$Sequence "crouch_shoot_flail" {
	"skirmishp_anims\crouch_shoot_flail.smd"
	fps 1
}
$Sequence "ref_aim_bow" {
	"skirmishp_anims\ref_aim_bow.smd"
	fps 1
}
$Sequence "ref_shoot_bow" {
	"skirmishp_anims\ref_shoot_bow.smd"
	fps 1
}
$Sequence "crouch_aim_bow" {
	"skirmishp_anims\crouch_aim_bow.smd"
	fps 1
}
$Sequence "crouch_shoot_bow" {
	"skirmishp_anims\crouch_shoot_bow.smd"
	fps 1
}
$Sequence "ref_aim_bow2" {
	"skirmishp_anims\ref_aim_bow2.smd"
	fps 1
}
$Sequence "crouch_aim_bow2" {
	"skirmishp_anims\crouch_aim_bow2.smd"
	fps 1
}
$Sequence "ref_aim_crossbow" {
	"skirmishp_anims\ref_aim_crossbow.smd"
	fps 1
}
$Sequence "ref_shoot_crossbow" {
	"skirmishp_anims\ref_shoot_crossbow.smd"
	fps 1
}
$Sequence "crouch_aim_crossbow" {
	"skirmishp_anims\crouch_aim_crossbow.smd"
	fps 1
}
$Sequence "crouch_shoot_crossbow" {
	"skirmishp_anims\crouch_shoot_crossbow.smd"
	fps 1
}
$Sequence "ref_aim_crossbow2" {
	"skirmishp_anims\ref_aim_crossbow2.smd"
	fps 1
}
$Sequence "ref_shoot_crossbow2" {
	"skirmishp_anims\ref_shoot_crossbow2.smd"
	fps 1
}
$Sequence "crouch_aim_crossbow2" {
	"skirmishp_anims\crouch_aim_crossbow2.smd"
	fps 1
}
$Sequence "crouch_shoot_crossbow2" {
	"skirmishp_anims\crouch_shoot_crossbow2.smd"
	fps 1
}
$Sequence "ref_load_crossbow" {
	"skirmishp_anims\ref_load_crossbow.smd"
	fps 1
}
$Sequence "ref_aim_dagger" {
	"skirmishp_anims\ref_aim_dagger.smd"
	fps 1
}
$Sequence "ref_shoot_dagger" {
	"skirmishp_anims\ref_shoot_dagger.smd"
	fps 1
}
$Sequence "crouch_aim_dagger" {
	"skirmishp_anims\crouch_aim_dagger.smd"
	fps 1
}
$Sequence "crouch_shoot_dagger" {
	"skirmishp_anims\crouch_shoot_dagger.smd"
	fps 1
}
$Sequence "ref_aim_cutlass" {
	"skirmishp_anims\ref_aim_cutlass_blend01.smd"
	"skirmishp_anims\ref_aim_cutlass_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_cutlass" {
	"skirmishp_anims\ref_shoot_cutlass_blend01.smd"
	"skirmishp_anims\ref_shoot_cutlass_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_cutlass" {
	"skirmishp_anims\ref_shoot2_cutlass.smd"
	fps 30
	LX
}
$Sequence "crouch_aim_cutlass" {
	"skirmishp_anims\crouch_aim_cutlass_blend01.smd"
	"skirmishp_anims\crouch_aim_cutlass_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_cutlass" {
	"skirmishp_anims\crouch_shoot_cutlass_blend01.smd"
	"skirmishp_anims\crouch_shoot_cutlass_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_cutlass" {
	"skirmishp_anims\crouch_shoot2_cutlass.smd"
	fps 30
	LX
}
$Sequence "ref_aim_flintlock" {
	"skirmishp_anims\ref_aim_flintlock_blend01.smd"
	"skirmishp_anims\ref_aim_flintlock_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_flintlock" {
	"skirmishp_anims\ref_shoot_flintlock_blend01.smd"
	"skirmishp_anims\ref_shoot_flintlock_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_flintlock" {
	"skirmishp_anims\crouch_aim_flintlock_blend01.smd"
	"skirmishp_anims\crouch_aim_flintlock_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_flintlock" {
	"skirmishp_anims\crouch_shoot_flintlock_blend01.smd"
	"skirmishp_anims\crouch_shoot_flintlock_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_load_flintlock" {
	"skirmishp_anims\ref_load_flintlock.smd"
	blend "XR" -45 45
	fps 18
}
$Sequence "ref_aim_musketoon" {
	"skirmishp_anims\ref_aim_musketoon_blend01.smd"
	"skirmishp_anims\ref_aim_musketoon_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_musketoon" {
	"skirmishp_anims\ref_shoot_musketoon_blend01.smd"
	"skirmishp_anims\ref_shoot_musketoon_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_musketoon" {
	"skirmishp_anims\crouch_aim_musketoon_blend01.smd"
	"skirmishp_anims\crouch_aim_musketoon_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_musketoon" {
	"skirmishp_anims\crouch_shoot_musketoon_blend01.smd"
	"skirmishp_anims\crouch_shoot_musketoon_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_load_musketoon" {
	"skirmishp_anims\ref_load_musketoon.smd"
	blend "XR" -45 45
	fps 10
}
$Sequence "ref_aim_markmusket" {
	"skirmishp_anims\ref_aim_markmusket.smd"
	fps 1
}
$Sequence "ref_shoot_markmusket" {
	"skirmishp_anims\ref_shoot_markmusket.smd"
	fps 1
}
$Sequence "crouch_aim_markmusket" {
	"skirmishp_anims\crouch_aim_markmusket.smd"
	fps 1
}
$Sequence "crouch_shoot_markmusket" {
	"skirmishp_anims\crouch_shoot_markmusket.smd"
	fps 1
}
$Sequence "ref_load_markmusket" {
	"skirmishp_anims\ref_load_markmusket.smd"
	fps 1
}
$Sequence "ref_aim_markmusket2" {
	"skirmishp_anims\ref_aim_markmusket2.smd"
	fps 1
}
$Sequence "ref_shoot_markmusket2" {
	"skirmishp_anims\ref_shoot_markmusket2.smd"
	fps 1
}
$Sequence "crouch_aim_markmusket2" {
	"skirmishp_anims\crouch_aim_markmusket2.smd"
	fps 1
}
$Sequence "crouch_shoot_markmusket2" {
	"skirmishp_anims\crouch_shoot_markmusket2.smd"
	fps 1
}
$Sequence "ref_aim_parrot" {
	"skirmishp_anims\ref_aim_parrot_blend01.smd"
	"skirmishp_anims\ref_aim_parrot_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_parrot" {
	"skirmishp_anims\ref_shoot_parrot_blend01.smd"
	"skirmishp_anims\ref_shoot_parrot_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "ref_shoot2_parrot" {
	"skirmishp_anims\ref_shoot2_parrot.smd"
	fps 24
}
$Sequence "crouch_aim_parrot" {
	"skirmishp_anims\crouch_aim_parrot_blend01.smd"
	"skirmishp_anims\crouch_aim_parrot_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_parrot" {
	"skirmishp_anims\crouch_shoot_parrot_blend01.smd"
	"skirmishp_anims\crouch_shoot_parrot_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_shoot2_parrot" {
	"skirmishp_anims\crouch_shoot2_parrot.smd"
	fps 24
}
$Sequence "ref_aim_powderkeg" {
	"skirmishp_anims\ref_aim_powderkeg_blend01.smd"
	"skirmishp_anims\ref_aim_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "ref_shoot_powderkeg" {
	"skirmishp_anims\ref_shoot_powderkeg_blend01.smd"
	"skirmishp_anims\ref_shoot_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
}
$Sequence "ref_shoot2_powderkeg" {
	"skirmishp_anims\ref_shoot2_powderkeg_blend01.smd"
	"skirmishp_anims\ref_shoot2_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 24
}
$Sequence "crouch_aim_powderkeg" {
	"skirmishp_anims\crouch_aim_powderkeg_blend01.smd"
	"skirmishp_anims\crouch_aim_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
	loop
}
$Sequence "crouch_shoot_powderkeg" {
	"skirmishp_anims\crouch_shoot_powderkeg_blend01.smd"
	"skirmishp_anims\crouch_shoot_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
}
$Sequence "crouch_shoot2_powderkeg" {
	"skirmishp_anims\crouch_shoot2_powderkeg_blend01.smd"
	"skirmishp_anims\crouch_shoot2_powderkeg_blend02.smd"
	blend "XR" -45 45
	fps 12
}
